% GIBOC_FEMUR Automatically define a reference system based on bone
% morphology by fitting analytical shapes to the articular surfaces. It is
% normally used within processTriGeomBoneSet.m in workflows to generate
% musculoskeletal models. The GIBOC algorithm can also extract articular
% surfaces.
%
%   [CS, JCS, FemurBL] = GIBOC_femur(femurTri,...
%                                    side,...
%                                    fit_method,...
%                                    result_plots,...
%                                    debug_plots,...
%                                    in_mm)
%
% Inputs:
%   femurTri - a MATLAB triangulation object representing a femur.
%
%   side_raw - a string indicating the body side. Valid options: 'R', 'r'  
%       for the right side, 'L' and 'l' for the left side.
%
%   fit_method - a string indicating the name to assign to the OpenSim body.
%
%   result_plots - 
%
%   debug_plots - enable plots used in debugging. Value: 1 or 0 (default).
%       
%   in_mm - (optional) indicates if the provided geometries are given in mm
%       (value: 1) or m (value: 0). Please note that all tests and analyses
%       done so far were performed on geometries expressed in mm, so this
%       option is more a placeholder for future adjustments.
%
% Outputs:
%   CS - 
%
%   JCS - 
%
%   FemurBL - 
%
% See also PROCESSTRIGEOMBONESET, KAI2014_FEMUR, GIBOC_TIBIA, GIBOC_PELVIS.
%
% % depends on 
% ????
% FitCSA (?)
% PlanPolygonCentroid3D
% processFemoralEpyphysis
% LargestEdgeConvHull
% PCRegionGrowing
% getFemoralCondyleMostProxPoint
% lsplane
% PtsOnCondylesFemur
% fit_ellipse
% smoothFemoralCondyles.m
% filterFemoralCondyleSurf
% ELLIPSOIDS
% ellipsoid_fit
%-------------------------------------------------------------------------%
%  Author:   Luca Modenese & Jean-Baptiste Renault. 
%  Copyright 2020 Luca Modenese & Jean-Baptiste Renault
%-------------------------------------------------------------------------%
function [BCS, JCS, FemurBL, ArtSurf, AuxCSInfo] = GIBOC_femur(femurTri,...
                                                   side_raw,...
                                                   fit_method,...
                                                   result_plots,...
                                                   debug_plots,...
                                                   in_mm)

% result plots on by default, debug off
if nargin<2;    side_raw = 'r';          end
if nargin<3;    fit_method = 'cylinder'; end
if nargin<4;    result_plots = 1;        end
if nargin<5;    debug_plots = 0;         end
if nargin<6;    in_mm = 1;               end
if in_mm == 1;  dim_fact = 0.001;        else;  dim_fact = 1; end %placeholder

% default algorithm: cylinder fitting (Modenese et al. JBiomech 2018)
if ~exist('fit_method', 'var') || isempty(fit_method) || strcmp(fit_method, '')
    fit_method = 'cylinder';
end

% get sign correspondent to body side
[~, side_low] = bodySide2Sign(side_raw);

% inform user about settings
disp('---------------------')
disp('   GIBOC - FEMUR     '); 
disp('---------------------')
disp(['* Body Side   : ', upper(side_low)]);
disp(['* Fit Method  : ', fit_method]);
disp(['* Result Plots: ', convertBoolean2OnOff(result_plots)]);
disp(['* Debug  Plots: ', convertBoolean2OnOff(debug_plots)]);
disp(['* Triang Units: ', 'mm']);
disp('---------------------')
disp('Initializing method...')

% it is assumed that, even for partial geometries, the femoral bone is
% always provided as unique file. Previous versions of this function did
% use separated proximal and distal triangulations. Check Git history if
% you are interested in that.
[ U_DistToProx ] = femur_guess_CS( femurTri, debug_plots);
[ProxFemTri, DistFemTri] = cutLongBoneMesh(femurTri, U_DistToProx);

% Compute the coefficient for morphology operations
CoeffMorpho = computeTriCoeffMorpho(femurTri);

% Get inertial principal vectors V_all of the femur geometry & volum center
[ V_all, CenterVol, InertiaMatrix] = TriInertiaPpties( femurTri );

%-------------------------------------
% Initial Coordinate system (from inertial axes and femoral head):
% * Z0: points upwards (inertial axis) 
% * Y0: points medio-lat (from OT and Z0 in findFemoralHead.m)
%-------------------------------------
% coordinate system structure to store coordinate system's info
AuxCSInfo = struct();
AuxCSInfo.CenterVol = CenterVol;
AuxCSInfo.V_all = V_all;

% Check that the distal femur is 'below' the proximal femur or invert Z0
Z0 = V_all(:,1);
Z0 = sign((mean(ProxFemTri.Points)-mean(DistFemTri.Points))*Z0)*Z0;
AuxCSInfo.Z0 = Z0;

% Find Femoral Head Center
% NB adds a CSs.Y0, (lateral)
try
    % sometimes Renault2018 fails for sparse meshes
    % FemHeadAS is the articular surface of the hip
    [AuxCSInfo, FemHeadTri] = GIBOC_femur_fitSphere2FemHead(ProxFemTri, AuxCSInfo, CoeffMorpho, debug_plots);
catch
    % use Kai if GIBOC approach fails
    warndlg({'Renault2018 fitting has failed.','Using Kai femoral head fitting.'})
    [AuxCSInfo, ~] = Kai2014_femur_fitSphere2FemHead(ProxFemTri, AuxCSInfo, debug_plots);
    AuxCSInfo.CenterFH_Renault  = AuxCSInfo.CenterFH_Kai;
    AuxCSInfo.RadiusFH_Renault  = AuxCSInfo.RadiusFH_Kai;
end

% X0 points backwards
AuxCSInfo.X0 = cross(AuxCSInfo.Y0, AuxCSInfo.Z0);

% Isolates the epiphysis
EpiFemTri = GIBOC_isolate_epiphysis(DistFemTri, Z0, 'distal');

% extract full femoral condyles
disp('Extracting femoral condyles articular surfaces...')
[fullCondyle_Med_Tri, fullCondyle_Lat_Tri, AuxCSInfo] = GIBOC_femur_ArticSurf(EpiFemTri, AuxCSInfo, CoeffMorpho, 'full_condyles', debug_plots);
% plot condyles to ensure medial and lateral sides are correct and surfaces are ok
if debug_plots
    figure(); subplot(1,2,1);
    quickPlotTriang(femurTri); quickPlotTriang(fullCondyle_Lat_Tri,'b'); quickPlotTriang(fullCondyle_Med_Tri,'r');
    title('Full Condyles (red: medial)');
end

% extract posterior part of condyles (points) by fitting an ellipse 
% on long convexhull edges extremities
if ~contains(fit_method, 'ellipsoids')
    [postCondyle_Med_Tri, postCondyle_Lat_Tri, AuxCSInfo] = GIBOC_femur_ArticSurf(EpiFemTri, AuxCSInfo,  CoeffMorpho, 'post_condyles', debug_plots);
end

% exporting articular surfaces (more triangulations can be easily added
% commenting out the parts of interest
if nargout>3
    disp('Storing articular surfaces for export...')
    ArtSurf.(['hip_', side_raw])       = FemHeadTri;
    ArtSurf.(['med_cond_', side_raw])  = fullCondyle_Med_Tri;
    ArtSurf.(['lat_cond_', side_raw])  = fullCondyle_Lat_Tri;
    ArtSurf.(['dist_femur_', side_raw])= DistFemTri;
    ArtSurf.(['condyles_', side_raw])  = TriUnite(fullCondyle_Med_Tri, fullCondyle_Lat_Tri);
end

% extract patellar grooves
% [Groove_Med, Groove_Lat, CS] = GIBOC_femur_ArticSurf(EpiFem, CS, CoeffMorpho, 'pat_groove');
% Fit two spheres to patellar groove
% CS = CS_femur_SpheresOnPatellarGroove(Groove_Lat, Groove_Med, CS);

% how to compute the joint axes
disp(['Fitting femoral distal articular surfaces using ', fit_method, ' method...'])
switch fit_method
%     case 'artic_surf_only'
%         [CS, JCS, FemurBL] = deal([], [], []);
%         return
    case 'spheres'
        % Fit two spheres on articular surfaces of posterior condyles
        [AuxCSInfo, JCS] = CS_femur_SpheresOnCondyles(postCondyle_Lat_Tri, postCondyle_Med_Tri, AuxCSInfo, side_raw);
    case 'cylinder'
        % Fit the posterior condyles with a cylinder
        [AuxCSInfo, JCS] = CS_femur_CylinderOnCondyles(postCondyle_Lat_Tri, postCondyle_Med_Tri, AuxCSInfo, side_raw);
    case 'ellipsoids'
        % Fit the entire condyles with an ellipsoid
        [AuxCSInfo, JCS] = CS_femur_EllipsoidsOnCondyles(fullCondyle_Lat_Tri, fullCondyle_Med_Tri, AuxCSInfo, side_raw);
    otherwise
        error('GIBOC_femur.m ''method'' input has value: ''spheres'', ''cylinder'' or ''ellipsoids''.');%,...
%             'To extract the articular surfaces without calculating joint parameters you can use ''artic_surf_only''.'])
end

% joint names (extracted from JCS defined in the fit_methods)
joint_name_list = fields(JCS);
hip_name  = joint_name_list{strncmp(joint_name_list, 'hip', 3)};
knee_name = joint_name_list{~strncmp(joint_name_list, 'hip', 3)};
side_low = hip_name(end);

% define segment ref system
BCS.CenterVol = CenterVol;
BCS.Origin = AuxCSInfo.CenterFH_Renault'; %[origin must be 3x1]
BCS.InertiaMatrix = InertiaMatrix;
BCS.V = JCS.(hip_name).V; % needed for plotting of femurTri

% landmark bone according to CS (only Origin and CS.V are used)
FemurBL   = landmarkBoneGeom(femurTri, BCS, ['femur_', side_low]);

% result plot
label_switch=1;
if result_plots == 1
    figure('Name', ['GIBOC | bone: femur | fit: ',fit_method,' | side: ', side_low])
    alpha = 0.5;
    
    % plot full femur and final JCSs
    subplot(2,2,[1,3]);
    plotTriangLight(femurTri, BCS, 0)
    quickPlotRefSystem(JCS.(hip_name));
    quickPlotRefSystem(JCS.(knee_name));
    % add articular surfaces
    if strcmp(fit_method,'ellipsoids')
        quickPlotTriang(fullCondyle_Lat_Tri, 'b')
        quickPlotTriang(fullCondyle_Med_Tri, 'r')
    else
        quickPlotTriang(postCondyle_Lat_Tri, 'b')
        quickPlotTriang(postCondyle_Med_Tri, 'r')
    end
    % add markers and labels
    plotBoneLandmarks(FemurBL, label_switch);
    
    % femoral head
    subplot(2,2,2); 
    plotTriangLight(ProxFemTri, BCS, 0); hold on
    quickPlotRefSystem(JCS.(hip_name));
    plotSphere(AuxCSInfo.CenterFH_Renault, AuxCSInfo.RadiusFH_Renault, 'g', alpha);
    
    % distal femur
    subplot(2,2,4);
    plotTriangLight(DistFemTri, BCS, 0); hold on
    quickPlotRefSystem(JCS.(knee_name));
    % plot fitting method
    switch fit_method
        case 'spheres'
            plotSphere(AuxCSInfo.sphere_center_lat, AuxCSInfo.sphere_radius_lat, 'b', alpha);
            plotSphere(AuxCSInfo.sphere_center_med, AuxCSInfo.sphere_radius_med, 'r', alpha);
        case 'cylinder'
            plotCylinder( AuxCSInfo.Cyl_Y, AuxCSInfo.Cyl_Radius, AuxCSInfo.Cyl_Pt, AuxCSInfo.Cyl_Range*1.1, alpha, 'g')
        case 'ellipsoids'
            plotEllipsoid(AuxCSInfo.ellips_centre_med, AuxCSInfo.ellips_radii_med, AuxCSInfo.ellips_evec_med, 'r', alpha)
            plotEllipsoid(AuxCSInfo.ellips_centre_lat, AuxCSInfo.ellips_radii_lat, AuxCSInfo.ellips_evec_lat, 'b', alpha)
        otherwise
            error('GIBOC_femur.m ''method'' input has value: ''spheres'', ''cylinder'' or ''ellipsoids''.')
    end
grid off
end

% final printout
disp('Done.');

% % plot patellar fitting as well
% PlotTriangLight(DistFem, CS, 1); hold on
% quickPlotTriang(Groove_Lat, 'b')
% quickPlotTriang(Groove_Med, 'r')
% plotSphere(CS.patgroove_center_med,CS.patgroove_radius_med, 'r', alpha);
% plotSphere(CS.patgroove_center_lat,CS.patgroove_radius_lat, 'b', alpha);
    
end

