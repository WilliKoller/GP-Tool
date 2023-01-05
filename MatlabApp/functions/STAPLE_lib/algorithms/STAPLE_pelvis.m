%-------------------------------------------------------------------------%
%  Author:   Luca Modenese & Jean-Baptiste Renault. 
%  Copyright 2020 Luca Modenese & Jean-Baptiste Renault
%-------------------------------------------------------------------------%
function [ BCS, JCS, PelvisBL] = STAPLE_pelvis(Pelvis, side_raw, result_plots, debug_plots, in_mm)

if nargin<2;    side_raw = 'r';    end
if nargin<3;    result_plots=1;    end
if nargin<4;    debug_plots = 0;   end
if nargin<5;    in_mm = 1;         end
if in_mm == 1;  dim_fact = 0.001;  else;  dim_fact = 1; end

% get side id correspondent to body side (used for hip joint parent)
% no need for sign, left and right rf are identical
[~, side_low] = bodySide2Sign(side_raw);

disp('---------------------')
disp('   STAPLE - PELVIS   '); 
disp('---------------------')
disp(['* Hip Joint   : ', upper(side_low)]);
disp(['* Method      : ', 'convex hull']);
disp(['* Result Plots: ', convertBoolean2OnOff(result_plots)]);
disp(['* Debug  Plots: ', convertBoolean2OnOff(debug_plots)]);
disp(['* Triang Units: ', 'mm']);
disp('---------------------')
disp('Initializing method...')

% guess of direction of axes on medical images (not always correct)
% Z : pointing cranially
% Y : pointing posteriorly
% X : pointing medio-laterally
% translating this direction in ISB reference system:
% -------------------------------------------------------------------------

% inertial axes
[~, CenterVol, InertiaMatrix, D ] =  TriInertiaPpties(Pelvis);

% Modification of initial guess of CS direction [JB]
disp('Analyzing pelvis geometry...')
[RotPseudoISB2Glob, LargestTriangle] = pelvis_guess_CS(Pelvis, debug_plots);

%% Get the RPSIS and LPSIS raw BoneLandmarks (BL)
[ PelvisPseudoISB, ~ , ~ ] = TriChangeCS( Pelvis, RotPseudoISB2Glob, CenterVol);

%--------------------
% PREVIOUS ATTEMPTS
%--------------------
% get the bony landmarks
% Along an axis oriented superiorly and a bit on the right we find
% projected on this axis succesively RASIS, LASIS then SYMP
% [~, ind_XYZ] = max(abs(RotPseudoISB2Glob));
% RASIS_ind = find(LargestTriangle.Points(:,ind_XYZ(2))>0 & LargestTriangle.Points(:,ind_XYZ(3))>0);
% LASIS_ind = find(LargestTriangle.Points(:,ind_XYZ(2))>0 & LargestTriangle.Points(:,ind_XYZ(3))<0);
% % not generic
% U_SupSupRight = normalizeV(4*RotPseudoISB2Glob(:,2)+RotPseudoISB2Glob(:,3));
% [~,I] = sort(LargestTriangle.Points*U_SupSupRight);
%------------------------------------------

disp('Landmarking...')

% project vectors on Z (SYMP is the minimal one)
[~, I] = sort(abs((LargestTriangle.Points-CenterVol')*RotPseudoISB2Glob(:,3)));
ASI_inds = I(2:3);
ind_RASIS = find(((LargestTriangle.Points(ASI_inds, : )-CenterVol')*RotPseudoISB2Glob(:,3))>0);
ind_LASIS = find(((LargestTriangle.Points(ASI_inds, : )-CenterVol')*RotPseudoISB2Glob(:,3))<0);
SYMP  = LargestTriangle.Points(I(1), : );
RASIS = LargestTriangle.Points(ASI_inds(ind_RASIS), : );
LASIS = LargestTriangle.Points(ASI_inds(ind_LASIS), : );

% Get the Posterior, Superior, Right eigth of the pelvis
Nodes_RPSIS = find( PelvisPseudoISB.Points(:,1) < 0 & ...
    PelvisPseudoISB.Points(:,2) > 0 & ...
    PelvisPseudoISB.Points(:,3) > 0 ) ;
Pelvis_RPSIS = TriReduceMesh(Pelvis, [], Nodes_RPSIS);
% Find the most posterior points in this eigth
[~,Imin] = min(Pelvis_RPSIS.Points*RotPseudoISB2Glob(:,1));
RPSIS = Pelvis_RPSIS.Points(Imin,:);

% Get the Posterior, Superior, Left eigth of the pelvis
Nodes_LPSIS = find( PelvisPseudoISB.Points(:,1) < 0 & ...
    PelvisPseudoISB.Points(:,2) > 0 & ...
    PelvisPseudoISB.Points(:,3) < 0 ) ;
Pelvis_LPSIS = TriReduceMesh(Pelvis, [], Nodes_LPSIS);

% Find the most posterior points in this eigth
[~,Imin] = min(Pelvis_LPSIS.Points*RotPseudoISB2Glob(:,1));
LPSIS = Pelvis_LPSIS.Points(Imin,:);

% check if bone landmarks are correctly identified or axes were incorrect
if norm(RASIS-LASIS)<norm(RPSIS-LPSIS)
    % inform user
    disp('GIBOK_pelvis.')
    warndlg('Inter-ASIS distance is shorter than inter-PSIS distance. Better check manually.')
end

% ISB reference system
PelvisOr = (RASIS+LASIS)'/2.0;

% segment reference system
BCS.CenterVol = CenterVol;
BCS.Origin = PelvisOr;
BCS.InertiaMatrix = InertiaMatrix;
BCS.V = CS_pelvis_ISB(RASIS, LASIS, RPSIS, LPSIS);
% CS.V = RotPseudoISB2Glob;

% storing joint details
JCS.ground_pelvis.V = BCS.V;
JCS.ground_pelvis.Origin = PelvisOr;
JCS.ground_pelvis.child_location    = PelvisOr'*dim_fact; %[1x3] as in OpenSim
JCS.ground_pelvis.child_orientation = computeXYZAngleSeq(BCS.V); %[1x3] as in OpenSim

% define hip parent
hip_name = ['hip_', side_low];
JCS.(hip_name).parent_orientation   = computeXYZAngleSeq(BCS.V);

% Export bone landmarks: [3x1] vectors
PelvisBL.RASI     = RASIS'; 
PelvisBL.LASI     = LASIS'; 
PelvisBL.RPSI     = RPSIS'; 
PelvisBL.LPSI     = LPSIS'; 
PelvisBL.SYMP     = SYMP';

% debug plot
label_switch = 1;
if result_plots == 1
    figure('Name', ['STAPLE | bone: pelvis | side: ', side_low])
    plotTriangLight(Pelvis, BCS, 0); hold on
    quickPlotRefSystem(BCS);
    quickPlotRefSystem(JCS.ground_pelvis);
    trisurf(LargestTriangle,'facealpha',0.4,'facecolor','y',...
        'edgecolor','k');
    
    % plot markers and labels
    plotBoneLandmarks(PelvisBL, label_switch);
end

% final printout
disp('Done.');

end