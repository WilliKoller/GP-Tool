classdef GPTool_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        GPToolAtoolboxUIFigure          matlab.ui.Figure
        WilliKollerUniversityofViennaLabel  matlab.ui.control.Label
        TabGroup                        matlab.ui.container.TabGroup
        GeneralSettingsTab              matlab.ui.container.Tab
        AbaqusStatusLampLabel           matlab.ui.control.Label
        AbaqusStatusLamp                matlab.ui.control.Lamp
        CheckAbaqusButton               matlab.ui.control.Button
        OpenREADMEButton                matlab.ui.control.Button
        mpiexecHelpLabel                matlab.ui.control.Label
        SculptStatusLabel               matlab.ui.control.Label
        SculptStatusLamp                matlab.ui.control.Lamp
        mpiexecPathLabel                matlab.ui.control.Label
        SelectmpiexecexeButton          matlab.ui.control.Button
        FeBioStatusLampLabel            matlab.ui.control.Label
        FeBioStatusLamp                 matlab.ui.control.Lamp
        PyMeshLabStatusLampLabel        matlab.ui.control.Label
        PyMeshLabStatusLamp             matlab.ui.control.Lamp
        PythonStatusLampLabel           matlab.ui.control.Label
        PythonStatusLamp                matlab.ui.control.Lamp
        CoreformCubitStatusLampLabel    matlab.ui.control.Label
        CoreformCubitStatusLamp         matlab.ui.control.Lamp
        ThisapplicationneedsCoreformCubitMeshlabPythonLabel  matlab.ui.control.Label
        cubitPathLabel                  matlab.ui.control.Label
        SelectCubitPathButton           matlab.ui.control.Button
        CheckPythoninstallationButton   matlab.ui.control.Button
        CheckCubitandSculptinstallationButton  matlab.ui.control.Button
        Hyperlink                       matlab.ui.control.Hyperlink
        Hyperlink2                      matlab.ui.control.Hyperlink
        CheckallButton                  matlab.ui.control.Button
        CheckFeBioinstallationButton    matlab.ui.control.Button
        Selectfebio3exeButton           matlab.ui.control.Button
        febioPathLabel                  matlab.ui.control.Label
        CoreformCubittypicallyCSculptMeshingLabel  matlab.ui.control.Label
        FeBiotypicallyCProgramFilesFEBioStudiofebiofebio3exeLabel  matlab.ui.control.Label
        Hyperlink4                      matlab.ui.control.Hyperlink
        ParticipantsTab                 matlab.ui.container.Tab
        OpendatafolderinWindowsExplorerButton  matlab.ui.control.Button
        ParticipantSetupPanel           matlab.ui.container.Panel
        fitmethodtocondylesDropDown     matlab.ui.control.DropDown
        fitmethodtocondylesDropDownLabel  matlab.ui.control.Label
        includesdistalGPCheckBox        matlab.ui.control.CheckBox
        Analysisforthisparticipant0Label  matlab.ui.control.Label
        Meshesforthisparticipant0Label  matlab.ui.control.Label
        CheckthegeometryButton          matlab.ui.control.Button
        SegmentationPath                matlab.ui.control.Label
        LeftRightFemurDropDown          matlab.ui.control.DropDown
        LeftRightFemurDropDownLabel     matlab.ui.control.Label
        ParticipantIdentifierEditField  matlab.ui.control.EditField
        ParticipantIdentifierEditFieldLabel  matlab.ui.control.Label
        SelectfoldercontainingMRIdataSTLfilesButton  matlab.ui.control.Button
        AvailableParticipantsinthisdatafolderListBox  matlab.ui.control.ListBox
        AvailableParticipantsinthisdatafolderListBoxLabel  matlab.ui.control.Label
        MeshesTab                       matlab.ui.container.Tab
        Analysisforthismesh0Label       matlab.ui.control.Label
        OpenParticipantinWindowsExplorerButton  matlab.ui.control.Button
        MeshinformationPanel            matlab.ui.container.Panel
        AdvancedproximalgeometryplotButton  matlab.ui.control.Button
        MeshsizeApproximateelementsizeinmmLabel  matlab.ui.control.Label
        GrowthplateorientationtoneckaxisLabel  matlab.ui.control.Label
        SimplegeometryplotButton        matlab.ui.control.Button
        CreatemeshButton                matlab.ui.control.Button
        MeshPropertiesTable             matlab.ui.control.Table
        NeckShaftAngleLabel             matlab.ui.control.Label
        AnteversionAngleLabel           matlab.ui.control.Label
        SideLabel                       matlab.ui.control.Label
        AvailableMeshesinthisdirectoryListBoxLabel  matlab.ui.control.Label
        AvailableMeshesinthisdirectoryListBox  matlab.ui.control.ListBox
        ParticipantLabel                matlab.ui.control.Label
        LoadingTab                      matlab.ui.container.Tab
        SelectLoadinstancesdependingonButtonGroup  matlab.ui.container.ButtonGroup
        KneeContactForceButton          matlab.ui.control.RadioButton
        HipContactForceButton           matlab.ui.control.RadioButton
        SelectsideButtonGroup           matlab.ui.container.ButtonGroup
        rightButton                     matlab.ui.control.RadioButton
        leftButton                      matlab.ui.control.RadioButton
        DefineloadinstancesandcreateloadingfileButton  matlab.ui.control.Button
        MuscleForcesegfromStaticOptimizationnotselectedLabel  matlab.ui.control.Label
        MuscleForcesButton              matlab.ui.control.Button
        MuscleForceDirectionVectorsnotselectedLabel  matlab.ui.control.Label
        MuscleForceDirectionVectorsButton  matlab.ui.control.Button
        MuscleForceDirectionAttachmentsnotselectedLabel  matlab.ui.control.Label
        MuscleForceDirectionAttachmentsButton  matlab.ui.control.Button
        JointReactionLoadnotselectedLabel  matlab.ui.control.Label
        JointReactionLoadFileButton     matlab.ui.control.Button
        Label                           matlab.ui.control.Label
        AnalysisTab                     matlab.ui.container.Tab
        AnalysisSettingsPanel           matlab.ui.container.Panel
        ReadsomeinformationaboutthesesettingsButton  matlab.ui.control.Button
        useThermalExpansionwithAbaqusforgrowthCheckBox  matlab.ui.control.CheckBox
        MaterialPropertiesPanel         matlab.ui.container.Panel
        MaterialsParametersTable        matlab.ui.control.Table
        MaterialNameEditField           matlab.ui.control.EditField
        NameEditField_3Label            matlab.ui.control.Label
        LoadingConditionsPanel          matlab.ui.container.Panel
        ClampingDropDown                matlab.ui.control.DropDown
        ClampingDropDownLabel           matlab.ui.control.Label
        DistalorProximalDropDown        matlab.ui.control.DropDown
        DistalorProximalDropDownLabel   matlab.ui.control.Label
        LoadingFactorSpinner            matlab.ui.control.Spinner
        LoadingFactorSpinnerLabel       matlab.ui.control.Label
        ApplyJRLinonlyinthisdirectionLabel  matlab.ui.control.Label
        CheckLoadingButton              matlab.ui.control.Button
        zlatmedCheckBox                 matlab.ui.control.CheckBox
        ysupinfCheckBox                 matlab.ui.control.CheckBox
        xantpostCheckBox                matlab.ui.control.CheckBox
        selectloadingfileLabel          matlab.ui.control.Label
        LoadingNameEditField            matlab.ui.control.EditField
        NameEditField_2Label            matlab.ui.control.Label
        SelectmatwithLoadingMuscleForcesandDirectionsButton  matlab.ui.control.Button
        CreatethisanalysisButton        matlab.ui.control.Button
        GrowthParametersPanel           matlab.ui.container.Panel
        biologicalgrowth2mechanicalgrowthCheckBox  matlab.ui.control.CheckBox
        avoidnegativegrowthCheckBox     matlab.ui.control.CheckBox
        GrowthMethodDropDown            matlab.ui.control.DropDown
        GrowthMethodDropDownLabel       matlab.ui.control.Label
        GrowthParametersTable           matlab.ui.control.Table
        skipstresscalculationinIteration1seetooltipCheckBox  matlab.ui.control.CheckBox
        StatusLamp                      matlab.ui.control.Lamp
        StatusLampLabel                 matlab.ui.control.Label
        filterEditField                 matlab.ui.control.EditField
        filterEditFieldLabel            matlab.ui.control.Label
        OpenMeshinWindowsExplorerButton  matlab.ui.control.Button
        RunAnalysisButton               matlab.ui.control.Button
        SelectedMeshLabel               matlab.ui.control.Label
        AvailableAnalysisinthisdirectoryListBox  matlab.ui.control.ListBox
        AvailableAnalysisinthisdirectoryListBoxLabel  matlab.ui.control.Label
        ResultsofselectedAnalysisTab    matlab.ui.container.Tab
        OpenMuscleAttachmentDetailedTableButton  matlab.ui.control.Button
        OpenMuscleAttachmentSummaryButton  matlab.ui.control.Button
        CopyTableButton                 matlab.ui.control.Button
        VisualizeFEModelPanel           matlab.ui.container.Panel
        LoadInstanceLabel               matlab.ui.control.Label
        IterationLabel                  matlab.ui.control.Label
        SelectLoadInstance              matlab.ui.control.ListBox
        GrowthButton                    matlab.ui.control.Button
        StressButton                    matlab.ui.control.Button
        SelectIterations_2              matlab.ui.control.ListBox
        CopyFiguretoClipboardButton     matlab.ui.control.Button
        OpenAnalysisinWindowsExplorerButton  matlab.ui.control.Button
        PlotOsteogenicIndexPanel        matlab.ui.container.Panel
        PlotSelectedButton              matlab.ui.control.Button
        SelectMultiplewithSTRGLabel     matlab.ui.control.Label
        SelectIterations                matlab.ui.control.ListBox
        SelectedAnalysisLabel           matlab.ui.control.Label
        ChangeofGeometryFeaturesPanel   matlab.ui.container.Panel
        ChangeOfGeometryTable           matlab.ui.control.Table
        ChangeOfGeometryAxes            matlab.ui.control.UIAxes
        ComparemultipleAnalysisTab      matlab.ui.container.Tab
        filterEditField_2               matlab.ui.control.EditField
        filterEditFieldLabel_2          matlab.ui.control.Label
        AvailableAnalysisinthisdirectoryListBox_2  matlab.ui.control.ListBox
        AvailableAnalysisinthisdirectoryListBoxLabel_2  matlab.ui.control.Label
        ChangeOfNSA                     matlab.ui.control.UIAxes
        ChangeOfAVA                     matlab.ui.control.UIAxes
        workingDirectoryLabel           matlab.ui.control.Label
        SelectdatafolderButton          matlab.ui.control.Button
    end

    %-------------------------------------------------------------------------%
    % Copyright (c) 2022 Koller W.                                            %
    %    Author:   Willi Koller,  2022                                        %
    %    email:    willi.koller@univie.ac.at                                  %
    % ----------------------------------------------------------------------- %

    % GP-Tool (c) by Willi Koller, University of Vienna
    %
    % GP-Tool is licensed under a
    % Creative Commons Attribution-NonCommercial 4.0 International License.
    %
    % You should have received a copy of the license along with this
    % work. If not, see <http://creativecommons.org/licenses/by-nc/4.0/>.

    % STAPLE toolbox was slightly adjusted to work with all tested femurs
    % GIBOC_femur_ArticSurf removed line 175 & 176 --> it's about the
    % artificial surface on the distal end, we do not use this anyway

    properties (Access = public)
        workingDirectory;
        STL
        probandFolder
        meshFolder
        tmp_loadingPath
        analysisFolder
        analysisListUnfiltered
        newProbandGeometry
        cubitPath
        appDir
        mpiexecPath
        latestSelectedFolder
        neckAxisPlotHandle1
        neckAxisPlotHandle2
    end

    methods (Access = public)

        function [meshsize, rows, transitionRows] = getParametersFromMeshName(~, meshName)
            i = strfind(meshName, '_');
            meshsize =          str2double(meshName(i(1)+1 : i(2)-1));
            rows =              str2double(meshName(i(3)+1 : i(4)-1));
            transitionRows =    str2double(meshName(i(5)+1 : end));
        end

        function [loadingName, matName, a, b, bio, method, nonzero] = getParametersFromAnalysisName(~, analysisName)
            i = strfind(analysisName, '_');
            loadingName = analysisName(1 : i(1)-1);
            matName = analysisName(i(1)+1 : i(2)-1);
            a =         str2double(analysisName(i(3)+1 : i(4)-1));
            b =         str2double(analysisName(i(5)+1 : i(6)-1));
            bio =       analysisName(i(7)+1 : i(8)-1);
            if length(i) == 8
                method =    analysisName(i(8)+1 : end);
            else
                method =    analysisName(i(8)+1 : i(9)-1);
                nonzero = 1;
            end
        end

        function setProbandListForWorkingDir(app)
            files = dir(app.workingDirectory);
            dirFlags = [files.isdir];
            subFolders = files(dirFlags);
            oldValue = app.AvailableParticipantsinthisdatafolderListBox.Value;
            app.AvailableParticipantsinthisdatafolderListBox.Items = {};
            for k = 3 : length(subFolders) % start from 3 because first two are . and ..
                if contains(subFolders(k).name, '_R') || contains(subFolders(k).name, '_L')    % show only folders with _R or _L --> name is always participant identifier _ side
                    app.AvailableParticipantsinthisdatafolderListBox.Items{end+1} = subFolders(k).name;
                end
            end
            app.AvailableParticipantsinthisdatafolderListBox.Items{end+1} = 'Create new';
            if ~isempty(oldValue) && any(strcmp(app.AvailableParticipantsinthisdatafolderListBox.Items, oldValue))
                app.AvailableParticipantsinthisdatafolderListBox.Value = oldValue;
            end
        end

        function setMeshListForProband(app)
            files = dir(app.probandFolder);
            dirFlags = [files.isdir];
            subFolders = files(dirFlags);
            oldValue = app.AvailableMeshesinthisdirectoryListBox.Value;
            app.AvailableMeshesinthisdirectoryListBox.Items = {};
            for k = 3 : length(subFolders) % start from 3 because first two are . and ..
                if ~strcmp(subFolders(k).name, 'Segmentation')
                    app.AvailableMeshesinthisdirectoryListBox.Items{end+1} = subFolders(k).name;
                end
            end
            app.AvailableMeshesinthisdirectoryListBox.Items{end+1} = 'Create new';
            if ~isempty(oldValue) && any(strcmp(app.AvailableMeshesinthisdirectoryListBox.Items, oldValue))
                app.AvailableMeshesinthisdirectoryListBox.Value = oldValue;
            end
        end

        function setAnalysisListForMesh(app)
            app.meshFolder = fullfile(app.workingDirectory, app.AvailableParticipantsinthisdatafolderListBox.Value, app.AvailableMeshesinthisdirectoryListBox.Value);
            files = dir(app.meshFolder);
            dirFlags = [files.isdir];
            subFolders = files(dirFlags);
            oldValue = app.AvailableAnalysisinthisdirectoryListBox.Value;
            app.AvailableAnalysisinthisdirectoryListBox.Items = {};
            for k = 3 : length(subFolders) % start from 3 because first two are . and ..
                if ~strcmp(subFolders(k).name, 'Mesh')
                    app.AvailableAnalysisinthisdirectoryListBox.Items{end+1} = subFolders(k).name;
                end
            end
            app.AvailableAnalysisinthisdirectoryListBox.Items{end+1} = 'Create new';
            app.analysisListUnfiltered = app.AvailableAnalysisinthisdirectoryListBox.Items;
            if ~isempty(oldValue) && any(strcmp(app.AvailableAnalysisinthisdirectoryListBox.Items, oldValue))
                app.AvailableAnalysisinthisdirectoryListBox.Value = oldValue;
            end
        end

        function createMesh(app, mesh_size, total_nr_of_rows, nr_of_transition_rows)

            d = uiprogressdlg(app.GPToolAtoolboxUIFigure,'Title','Setting up the Mesh - this takes a while', 'Message','Creating script for Meshing with Cubit');

            finalMeshFolder = fullfile(app.meshFolder, 'Mesh');
            load(fullfile(app.probandFolder, 'settings.mat'), 'side', ...
                'neckAxisCutOff', 'headTranslation', 'firstGuessNeckAxis', 'giboc_method', 'rot_matrix', ...
                'includeDistalGP', 'dist_rot_matrix', 'distTranslation', 'distScaling');

            if ~exist('giboc_method','var')
                giboc_method = 'GIBOC-cylinder';
            end

            if ~exist('includeDistalGP','var')
                includeDistalGP = 0;
            end

            mkdir(finalMeshFolder);
            meshSettingsFile = fullfile(app.meshFolder, 'meshSettings.mat');
            segmentationPath = fullfile(app.probandFolder, 'Segmentation');

            save(meshSettingsFile, 'mesh_size', 'total_nr_of_rows', 'nr_of_transition_rows');

            % create python script to create base mesh with cubit
            pythonFile = fullfile(finalMeshFolder, 'cubit_meshing.py');
            fid = fopen(pythonFile,'w');

            fprintf(fid, 'import sys\n');
            fprintf(fid, ['sys.path.append("' strrep(app.cubitPath, '\','\\\\') '")\n']);
            fprintf(fid, 'import cubit\n');
            fprintf(fid, ['cubit.init(["cubit","-nojournal", "-workingdir", "' strrep(app.workingDirectory, '\', '\\\\') '"])\n']);
            fprintf(fid, ['cubit.cmd("sculpt parallel path mpiexec \\"' strrep(app.mpiexecPath, '\', '\\') '\\"") \n']);
            fprintf(fid, 'cubit.cmd("sculpt parallel path list") \n');
            fprintf(fid, 'cubit.cmd("reset")\n');
            fprintf(fid, ['cubit.cmd("import stl \\"' strrep(fullfile(segmentationPath, [side '_head_smoothed.stl']), '\', '\\\\') '\\" feature_angle 135.00 merge\")\n']);
            fprintf(fid, ['cubit.cmd("import stl \\"' strrep(fullfile(segmentationPath, [side '_prox_smoothed.stl']), '\', '\\\\') '\\" feature_angle 135.00 merge\")\n']);
            fprintf(fid, ['cubit.cmd("import stl \\"' strrep(fullfile(segmentationPath, [side '_prox_2.stl']), '\', '\\\\') '\\" feature_angle 135.00 merge\")\n']);
            fprintf(fid, ['cubit.cmd("import stl \\"' strrep(fullfile(segmentationPath, [side '_cortical.stl']), '\', '\\\\') '\\" feature_angle 135.00 merge\")\n']);
            fprintf(fid, ['cubit.cmd("import stl \\"' strrep(fullfile(segmentationPath, [side '_cortical_2.stl']), '\', '\\\\') '\\" feature_angle 135.00 merge\")\n']);
            fprintf(fid, ['cubit.cmd("import stl \\"' strrep(fullfile(segmentationPath, [side '_marrow.stl']), '\', '\\\\') '\\" feature_angle 135.00 merge\")\n']);
            fprintf(fid, ['cubit.cmd("import stl \\"' strrep(fullfile(segmentationPath, [side '_dist.stl']), '\', '\\\\') '\\" feature_angle 135.00 merge\")\n']);
            if ~includeDistalGP
                fprintf(fid, ['cubit.cmd("import stl \\"' strrep(fullfile(segmentationPath, [side '_dist_2.stl']), '\', '\\\\') '\\" feature_angle 135.00 merge\")\n']);
                fprintf(fid, 'if cubit.get_volume_count() < 8:\n');
                fprintf(fid, '   print("Error loading all volumes! Abort meshing")\n');
                fprintf(fid, 'else:\n');
            else
                fprintf(fid, ['cubit.cmd("import stl \\"' strrep(fullfile(segmentationPath, [side '_dist_2_top_smoothed.stl']), '\', '\\\\') '\\" feature_angle 135.00 merge\")\n']);
                fprintf(fid, ['cubit.cmd("import stl \\"' strrep(fullfile(segmentationPath, [side '_dist_2_bottom_smoothed.stl']), '\', '\\\\') '\\" feature_angle 135.00 merge\")\n']);
                fprintf(fid, 'if cubit.get_volume_count() < 9:\n');
                fprintf(fid, '   print("Error loading all volumes! Abort meshing")\n');
                fprintf(fid, 'else:\n');
            end

            fprintf(fid, ['   cubit.cmd("sculpt parallel volume all size ' num2str(mesh_size) ' num_laplace 3 pillow 1 ")\n']);

            fprintf(fid, ['   cubit.cmd("export abaqus \\"' strrep(fullfile(finalMeshFolder, 'head.inp'), '\', '\\\\') '\\"   block 1 overwrite")\n']);
            fprintf(fid, ['   cubit.cmd("export abaqus \\"' strrep(fullfile(finalMeshFolder, 'prox.inp'), '\', '\\\\') '\\"   block 2 overwrite")\n']);
            fprintf(fid, ['   cubit.cmd("export abaqus \\"' strrep(fullfile(finalMeshFolder, 'prox_2.inp'), '\', '\\\\') '\\"   block 3 overwrite")\n']);
            fprintf(fid, ['   cubit.cmd("export abaqus \\"' strrep(fullfile(finalMeshFolder, 'cortical.inp'), '\', '\\\\') '\\"   block 4 overwrite")\n']);
            fprintf(fid, ['   cubit.cmd("export abaqus \\"' strrep(fullfile(finalMeshFolder, 'cortical_2.inp'), '\', '\\\\') '\\"   block 5 overwrite")\n']);
            fprintf(fid, ['   cubit.cmd("export abaqus \\"' strrep(fullfile(finalMeshFolder, 'marrow.inp'), '\', '\\\\') '\\"   block 6 overwrite")\n']);
            fprintf(fid, ['   cubit.cmd("export abaqus \\"' strrep(fullfile(finalMeshFolder, 'dist.inp'), '\', '\\\\') '\\"   block 7 overwrite")\n']);
            if ~includeDistalGP
                fprintf(fid, ['   cubit.cmd("export abaqus \\"' strrep(fullfile(finalMeshFolder, 'dist_2.inp'), '\', '\\\\') '\\"   block 8 overwrite")\n']);
            else
                fprintf(fid, ['   cubit.cmd("export abaqus \\"' strrep(fullfile(finalMeshFolder, 'dist_2_top.inp'), '\', '\\\\') '\\"   block 8 overwrite")\n']);
                fprintf(fid, ['   cubit.cmd("export abaqus \\"' strrep(fullfile(finalMeshFolder, 'dist_2_bottom.inp'), '\', '\\\\') '\\"   block 9 overwrite")\n']);
            end

            fclose(fid);

            d.Value = 0.02;
            d.Message = 'Meshing with Cubit in Progress';
            runPythonScriptAndWaitForFinish(app, pythonFile, 'Meshing');
            d.Value = 0.5;
            d.Message = 'Meshing finished - checking output files';

            % now check if all .inp files exist (could be not the case if
            % meshSize is too small --> 50k element limit with student
            % edition of Cubit

            if includeDistalGP
                meshingSuccessful = exist(fullfile(finalMeshFolder, 'head.inp'), "file") && ...
                    exist(fullfile(finalMeshFolder, 'prox.inp'), "file") && ...
                    exist(fullfile(finalMeshFolder, 'prox_2.inp'), "file") && ...
                    exist(fullfile(finalMeshFolder, 'cortical.inp'), "file") && ...
                    exist(fullfile(finalMeshFolder, 'cortical_2.inp'), "file") && ...
                    exist(fullfile(finalMeshFolder, 'marrow.inp'), "file") && ...
                    exist(fullfile(finalMeshFolder, 'dist.inp'), "file") && ...
                    exist(fullfile(finalMeshFolder, 'dist_2_top.inp'), "file") && ...
                    exist(fullfile(finalMeshFolder, 'dist_2_bottom.inp'), "file");
            else
                meshingSuccessful = exist(fullfile(finalMeshFolder, 'head.inp'), "file") && ...
                    exist(fullfile(finalMeshFolder, 'prox.inp'), "file") && ...
                    exist(fullfile(finalMeshFolder, 'prox_2.inp'), "file") && ...
                    exist(fullfile(finalMeshFolder, 'cortical.inp'), "file") && ...
                    exist(fullfile(finalMeshFolder, 'cortical_2.inp'), "file") && ...
                    exist(fullfile(finalMeshFolder, 'marrow.inp'), "file") && ...
                    exist(fullfile(finalMeshFolder, 'dist.inp'), "file") && ...
                    exist(fullfile(finalMeshFolder, 'dist_2.inp'), "file");
            end
            if ~meshingSuccessful
                warnHandle = warndlg('Something went wrong while meshing. Maybe element limit (50k per part) was reached, try bigger mesh size.');
                figure(warnHandle);
                waitfor(warnHandle);                 figure(app.GPToolAtoolboxUIFigure);
                answer = questdlg('Do you want to try it again with a little increase mesh size?', 'Try again?', 'Yes', 'No', 'Yes');
                figure(app.GPToolAtoolboxUIFigure);
                if ~strcmp(answer, 'Yes')
                    delete([app.meshFolder filesep, '*']);
                    rmdir(app.meshFolder);
                    return;
                else
                    % increase mesh size by 0.01 mm, sometimes it works if
                    % a slightly changed value is used

                    pythonFile = fullfile(finalMeshFolder, 'cubit_meshing.py');
                    fid = fopen(pythonFile,'w');

                    fprintf(fid, 'import sys\n');
                    fprintf(fid, ['sys.path.append("' strrep(app.cubitPath, '\','\\\\') '")\n']);
                    fprintf(fid, 'import cubit\n');
                    fprintf(fid, ['cubit.init(["cubit","-nojournal", "-workingdir", "' strrep(app.workingDirectory, '\', '\\\\') '"])\n']);
                    fprintf(fid, ['cubit.cmd("sculpt parallel path mpiexec \\"' strrep(app.mpiexecPath, '\', '\\') '\\"") \n']);
                    fprintf(fid, 'cubit.cmd("sculpt parallel path list") \n');
                    fprintf(fid, 'cubit.cmd("reset")\n');
                    fprintf(fid, ['cubit.cmd("import stl \\"' strrep(fullfile(segmentationPath, [side '_head_smoothed.stl']), '\', '\\\\') '\\" feature_angle 135.00 merge\")\n']);
                    fprintf(fid, ['cubit.cmd("import stl \\"' strrep(fullfile(segmentationPath, [side '_prox_smoothed.stl']), '\', '\\\\') '\\" feature_angle 135.00 merge\")\n']);
                    fprintf(fid, ['cubit.cmd("import stl \\"' strrep(fullfile(segmentationPath, [side '_prox_2.stl']), '\', '\\\\') '\\" feature_angle 135.00 merge\")\n']);
                    fprintf(fid, ['cubit.cmd("import stl \\"' strrep(fullfile(segmentationPath, [side '_cortical.stl']), '\', '\\\\') '\\" feature_angle 135.00 merge\")\n']);
                    fprintf(fid, ['cubit.cmd("import stl \\"' strrep(fullfile(segmentationPath, [side '_cortical_2.stl']), '\', '\\\\') '\\" feature_angle 135.00 merge\")\n']);
                    fprintf(fid, ['cubit.cmd("import stl \\"' strrep(fullfile(segmentationPath, [side '_marrow.stl']), '\', '\\\\') '\\" feature_angle 135.00 merge\")\n']);
                    fprintf(fid, ['cubit.cmd("import stl \\"' strrep(fullfile(segmentationPath, [side '_dist.stl']), '\', '\\\\') '\\" feature_angle 135.00 merge\")\n']);
                    if ~includeDistalGP
                        fprintf(fid, ['cubit.cmd("import stl \\"' strrep(fullfile(segmentationPath, [side '_dist_2.stl']), '\', '\\\\') '\\" feature_angle 135.00 merge\")\n']);
                        fprintf(fid, 'if cubit.get_volume_count() < 8:\n');
                        fprintf(fid, '   print("Error loading all volumes! Abort meshing")\n');
                        fprintf(fid, 'else:\n');
                    else
                        fprintf(fid, ['cubit.cmd("import stl \\"' strrep(fullfile(segmentationPath, [side '_dist_2_top_smoothed.stl']), '\', '\\\\') '\\" feature_angle 135.00 merge\")\n']);
                        fprintf(fid, ['cubit.cmd("import stl \\"' strrep(fullfile(segmentationPath, [side '_dist_2_bottom_smoothed.stl']), '\', '\\\\') '\\" feature_angle 135.00 merge\")\n']);
                        fprintf(fid, 'if cubit.get_volume_count() < 9:\n');
                        fprintf(fid, '   print("Error loading all volumes! Abort meshing")\n');
                        fprintf(fid, 'else:\n');
                    end

                    fprintf(fid, ['   cubit.cmd("sculpt parallel volume all size ' num2str(mesh_size + 0.01) ' num_laplace 3 pillow 1 ")\n']);

                    fprintf(fid, ['   cubit.cmd("export abaqus \\"' strrep(fullfile(finalMeshFolder, 'head.inp'), '\', '\\\\') '\\"   block 1 overwrite")\n']);
                    fprintf(fid, ['   cubit.cmd("export abaqus \\"' strrep(fullfile(finalMeshFolder, 'prox.inp'), '\', '\\\\') '\\"   block 2 overwrite")\n']);
                    fprintf(fid, ['   cubit.cmd("export abaqus \\"' strrep(fullfile(finalMeshFolder, 'prox_2.inp'), '\', '\\\\') '\\"   block 3 overwrite")\n']);
                    fprintf(fid, ['   cubit.cmd("export abaqus \\"' strrep(fullfile(finalMeshFolder, 'cortical.inp'), '\', '\\\\') '\\"   block 4 overwrite")\n']);
                    fprintf(fid, ['   cubit.cmd("export abaqus \\"' strrep(fullfile(finalMeshFolder, 'cortical_2.inp'), '\', '\\\\') '\\"   block 5 overwrite")\n']);
                    fprintf(fid, ['   cubit.cmd("export abaqus \\"' strrep(fullfile(finalMeshFolder, 'marrow.inp'), '\', '\\\\') '\\"   block 6 overwrite")\n']);
                    fprintf(fid, ['   cubit.cmd("export abaqus \\"' strrep(fullfile(finalMeshFolder, 'dist.inp'), '\', '\\\\') '\\"   block 7 overwrite")\n']);
                    if ~includeDistalGP
                        fprintf(fid, ['   cubit.cmd("export abaqus \\"' strrep(fullfile(finalMeshFolder, 'dist_2.inp'), '\', '\\\\') '\\"   block 8 overwrite")\n']);
                    else
                        fprintf(fid, ['   cubit.cmd("export abaqus \\"' strrep(fullfile(finalMeshFolder, 'dist_2_top.inp'), '\', '\\\\') '\\"   block 8 overwrite")\n']);
                        fprintf(fid, ['   cubit.cmd("export abaqus \\"' strrep(fullfile(finalMeshFolder, 'dist_2_bottom.inp'), '\', '\\\\') '\\"   block 9 overwrite")\n']);
                    end

                    fclose(fid);

                    runPythonScriptAndWaitForFinish(app, pythonFile, 'Meshing');

                    if includeDistalGP
                        meshingSuccessful = exist(fullfile(finalMeshFolder, 'head.inp'), "file") && ...
                            exist(fullfile(finalMeshFolder, 'prox.inp'), "file") && ...
                            exist(fullfile(finalMeshFolder, 'prox_2.inp'), "file") && ...
                            exist(fullfile(finalMeshFolder, 'cortical.inp'), "file") && ...
                            exist(fullfile(finalMeshFolder, 'cortical_2.inp'), "file") && ...
                            exist(fullfile(finalMeshFolder, 'marrow.inp'), "file") && ...
                            exist(fullfile(finalMeshFolder, 'dist.inp'), "file") && ...
                            exist(fullfile(finalMeshFolder, 'dist_2_top.inp'), "file") && ...
                            exist(fullfile(finalMeshFolder, 'dist_2_bottom.inp'), "file");
                    else
                        meshingSuccessful = exist(fullfile(finalMeshFolder, 'head.inp'), "file") && ...
                            exist(fullfile(finalMeshFolder, 'prox.inp'), "file") && ...
                            exist(fullfile(finalMeshFolder, 'prox_2.inp'), "file") && ...
                            exist(fullfile(finalMeshFolder, 'cortical.inp'), "file") && ...
                            exist(fullfile(finalMeshFolder, 'cortical_2.inp'), "file") && ...
                            exist(fullfile(finalMeshFolder, 'marrow.inp'), "file") && ...
                            exist(fullfile(finalMeshFolder, 'dist.inp'), "file") && ...
                            exist(fullfile(finalMeshFolder, 'dist_2.inp'), "file");
                    end
                    if ~meshingSuccessful
                        warnHandle = errordlg('Meshing was not successful! You should try to run the meshing in the Cubit GUI and see whats the error', 'Error meshing femur');
                        figure(warnHandle);
                        waitfor(warnHandle);
                        figure(app.GPToolAtoolboxUIFigure);
                        return;
                    end
                end
            end

            d.Value = 0.07;
            d.Message = 'Importing all Meshes';

            % import prox and head and create growth plate in between
            logicRenumberOption = 0;
            numberNodesElement = 8;

            [head_t_elementStruct, head_t_nodeStruct] = import_INP(fullfile(finalMeshFolder, 'head.inp'), numberNodesElement, logicRenumberOption);
            [head_b_elementStruct, head_b_nodeStruct] = helper_combineTwoINPs(fullfile(finalMeshFolder, 'prox.inp'), fullfile(finalMeshFolder, 'prox_2.inp'));
            [shaft_cortical_elementStruct, shaft_cortical_nodeStruct] = helper_combineTwoINPs(fullfile(finalMeshFolder, 'cortical.inp'), fullfile(finalMeshFolder, 'cortical_2.inp'));
            [shaft_bone_marrow_elementStruct, shaft_bone_marrow_nodeStruct] = import_INP(fullfile(finalMeshFolder, 'marrow.inp'), numberNodesElement, logicRenumberOption);
            if ~includeDistalGP
                [dist_elementStruct, dist_nodeStruct] = helper_combineTwoINPs(fullfile(finalMeshFolder, 'dist.inp'), fullfile(finalMeshFolder, 'dist_2.inp'));
                gp_dist_elements = [];
            else
                [dist_t_elementStruct, dist_t_nodeStruct] = helper_combineTwoINPs(fullfile(finalMeshFolder, 'dist.inp'), fullfile(finalMeshFolder, 'dist_2_top.inp'));
                [dist_b_elementStruct, dist_b_nodeStruct] = import_INP(fullfile(finalMeshFolder, 'dist_2_bottom.inp'), numberNodesElement, logicRenumberOption);
                disp('asd');
                % Add Distal Growthplate to the Mesh
                d.Value = 0.09;
                d.Message = 'Add distal Growthplate to the Mesh';

                maxNodeID = max(cat(1, head_t_nodeStruct.N_ind, head_b_nodeStruct.N_ind, dist_t_nodeStruct.N_ind, dist_b_nodeStruct.N_ind, shaft_cortical_nodeStruct.N_ind, shaft_bone_marrow_nodeStruct.N_ind));
                maxElementID = max(cat(1, head_t_elementStruct.E_ind, head_b_elementStruct.E_ind, dist_t_elementStruct.E_ind, dist_b_elementStruct.E_ind, shaft_cortical_elementStruct.E_ind, shaft_bone_marrow_elementStruct.E_ind));

                t_V = dist_t_nodeStruct.N; %The nodes
                t_V = (rot_matrix' * t_V')';
                t_V = (dist_rot_matrix * t_V')';
                t_E = dist_t_elementStruct.E; %The elements
                t_N_ind = dist_t_nodeStruct.N_ind; % node indizes
                t_E_ind = dist_t_elementStruct.E_ind; % element indizes

                b_V = dist_b_nodeStruct.N; %The nodes
                b_V = (rot_matrix' * b_V')';
                b_V = (dist_rot_matrix * b_V')';
                b_V(:, 1) = (b_V(:, 1) - distScaling.topMinX) * distScaling.scaleX + distScaling.bottomMinX;
                b_V(:, 2) = (b_V(:, 2) - distScaling.topMinY) * distScaling.scaleY + distScaling.bottomMinY;
                b_V = b_V + distTranslation;
                b_E = dist_b_elementStruct.E; %The elements
                b_N_ind = dist_b_nodeStruct.N_ind; % node indizes
                b_E_ind = dist_b_elementStruct.E_ind; % element indizes

                [intersect_node_ind, intersect_ind_in_t] = intersect(t_N_ind, b_N_ind);

                distanceBetweenNodes = distTranslation *(-1) / total_nr_of_rows;

                nodeID_Offset_GP = size(intersect_ind_in_t,1);
                additionalNodes = zeros(size(intersect_ind_in_t, 1) * total_nr_of_rows, 4);
                nodesAdded = 0;
                nodeID_Offset = 1;
                nodeIDAssignmentTable = zeros(size(intersect_ind_in_t, 1), 3); % first column is old ID, second column is new ID for top part, third column is new ID for the bottom part
                %%
                % for i = 1 : size(intersect_node_ind, 1)
                for i = 1 : size(t_V, 1)
                    %     t_V(i, :) = t_V(i, :) - distTranslation;
                    if ismember(t_N_ind(i), intersect_node_ind)
                        % it is a node of the intersecting surface --> here we want to
                        % create new nodes and elements
                        %         nodeIndexInT = find(t_N_ind == intersect_node_ind(i));
                        nodeIndexInB = find(b_N_ind == t_N_ind(i));
                        locDiff = (t_V(i, :) - b_V(nodeIndexInB, :)) / total_nr_of_rows;
                        for j = 1 : total_nr_of_rows
                            newNode = t_V(i,:);
                            newNode = newNode - j * locDiff;
                            additionalNodes(nodesAdded + 1, 1:3) = newNode;

                            newNodeID = maxNodeID + nodeID_Offset + j * nodeID_Offset_GP;
                            if ismember(newNodeID, additionalNodes(:, 4))
                                disp('oh no - something went wrong!');
                            end
                            additionalNodes(nodesAdded + 1, 4) = newNodeID;
                            nodesAdded = nodesAdded + 1;
                        end

                        % update elements in the bottom to use new id
                        t_E(t_E == t_N_ind(i)) = maxNodeID + nodeID_Offset;

                        nodeIDAssignmentTable(nodeID_Offset, 1) = t_N_ind(i);
                        nodeIDAssignmentTable(nodeID_Offset, 2) = maxNodeID + nodeID_Offset;
                        nodeIDAssignmentTable(nodeID_Offset, 3) = maxNodeID + nodeID_Offset + total_nr_of_rows * nodeID_Offset_GP; % this is the of the lowest node --> we need this later for the bottom part

                        t_N_ind(i) = maxNodeID + nodeID_Offset;

                        nodeID_Offset = nodeID_Offset + 1;
                    end
                end

                %%
                additionalElements = [];
                additionalElements_ind = [];
                element_Offset = maxElementID + 1; % this offset will be added so no duplicate element ids will appear

                elementsAdded = 0;
                elementsGPDist = struct;
                for row = 1 : total_nr_of_rows
                    elementsGPDist.(['dist_row_' num2str(row)]) = [];
                end

                for i = 1 : size(nodeIDAssignmentTable,1)
                    % first get all elements which include this node
                    % filter these for elements which are in the intersection plane -->
                    % condition is that element has 4 nodes in intersection
                    % duplicate these elements and replace inner node ids with new node ids

                    [rows,~] = find(t_E == nodeIDAssignmentTable(i, 2));
                    t_adjElements = t_E(rows, :);
                    t_adjElements(t_adjElements <= maxNodeID) = 0;

                    for j = 1 : size(t_adjElements, 1)
                        if nnz(t_adjElements(j, :)) >= 4
                            newElement(1:4) = t_adjElements(j, 5:8);
                            newElement(5:8) = t_adjElements(j, 1:4);
                            if nnz(newElement(1:4)) == 4 || nnz(newElement(5:8)) == 4
                                if nnz(newElement(1:4)) == 4
                                    nodeRange = 5 : 8;
                                else
                                    nodeRange = 1 : 4;
                                end
                                for z = nodeRange
                                    corrNodeID = newElement(mod(z + 3, 8) + 1);
                                    nextRowNodeID = corrNodeID + nodeID_Offset_GP;
                                    newElement(z) = nextRowNodeID;
                                end

                                multiplied_vals = prod(newElement);
                                isAlreadyAdded = 0;
                                for k = 1 : size(additionalElements, 1)
                                    if multiplied_vals == prod(additionalElements(k,:))
                                        isAlreadyAdded = 1;
                                        break;
                                    end
                                end

                                if isAlreadyAdded == 0
                                    for row = 1 : total_nr_of_rows
                                        elementToAdd = newElement + (row - 1) * nodeID_Offset_GP;
                                        additionalElements(elementsAdded + 1, :) = elementToAdd;
                                        additionalElements_ind(end + 1) = element_Offset + elementsAdded;
                                        elementsGPDist.(['dist_row_' num2str(row)])(end + 1) = additionalElements_ind(end);
                                        elementsAdded = elementsAdded + 1;
                                    end
                                end
                            end
                        end
                    end
                end

                % update elements and nodes in bottom block
                for i = 1 : size(b_V, 1)
                    if ismember(b_N_ind(i), intersect_node_ind)
                        [row, ~] = find(nodeIDAssignmentTable(:, 1) == b_N_ind(i));
                        newNodeID = nodeIDAssignmentTable(row, 3);
                        b_E(b_E == b_N_ind(i)) = newNodeID;
                        b_N_ind(i) = newNodeID;
                    end
                end

                dist_nodeStruct.N = cat(1, t_V, additionalNodes(:, 1:3), b_V);
                dist_nodeStruct.N = (dist_rot_matrix' * dist_nodeStruct.N')';
                dist_nodeStruct.N = (rot_matrix * dist_nodeStruct.N')';

                dist_nodeStruct.N_ind = cat(1, t_N_ind, additionalNodes(:, 4), b_N_ind);
                dist_elementStruct.E = cat(1, t_E, additionalElements, b_E);
                dist_elementStruct.E_ind = cat(1, t_E_ind, additionalElements_ind', b_E_ind);
                dist_elementStruct.E_type = dist_t_elementStruct.E_type;

                gp_dist_elements = additionalElements_ind';

            end

            d.Value = 0.12;
            d.Message = 'Add proximal Growthplate to the Mesh';

            %% Add Growthplate to the Mesh
            maxNodeID = max(cat(1, head_t_nodeStruct.N_ind, head_b_nodeStruct.N_ind, dist_nodeStruct.N_ind, shaft_cortical_nodeStruct.N_ind, shaft_bone_marrow_nodeStruct.N_ind));
            maxElementID = max(cat(1, head_t_elementStruct.E_ind, head_b_elementStruct.E_ind, dist_elementStruct.E_ind, shaft_cortical_elementStruct.E_ind, shaft_bone_marrow_elementStruct.E_ind));

            t_V = head_t_nodeStruct.N; %The nodes
            t_E = head_t_elementStruct.E; %The elements
            t_N_ind = head_t_nodeStruct.N_ind; % node indizes
            t_E_ind = head_t_elementStruct.E_ind; % element indizes

            b_V = head_b_nodeStruct.N; %The nodes
            b_E = head_b_elementStruct.E; %The elements
            b_N_ind = head_b_nodeStruct.N_ind; % node indizes
            b_E_ind = head_b_elementStruct.E_ind; % element indizes

            [intersect_node_ind, intersect_ind_in_t] = intersect(t_N_ind, b_N_ind);

            distanceBetweenNodes = headTranslation *(-1) / total_nr_of_rows;

            nodeID_Offset_GP = size(intersect_ind_in_t,1);
            additionalNodes = zeros(size(intersect_ind_in_t, 1) * total_nr_of_rows, 4);
            nodesAdded = 0;
            nodeID_Offset = 1;
            nodeIDAssignmentTable = zeros(size(intersect_ind_in_t, 1), 3); % first column is old ID, second column is new ID for top part, third column is new ID for the bottom part

            for i = 1 : size(t_V, 1)
                t_V(i, :) = t_V(i, :) - headTranslation;
                if ismember(t_N_ind(i), intersect_node_ind)
                    % it is a node of the intersecting surface --> here we want to
                    % create new nodes and elements
                    for j = 1 : total_nr_of_rows
                        newNode = t_V(i,:);
                        newNode = newNode - j * distanceBetweenNodes;
                        additionalNodes(nodesAdded + 1, 1:3) = newNode;

                        newNodeID = maxNodeID + nodeID_Offset + j * nodeID_Offset_GP;
                        if ismember(newNodeID, additionalNodes(:, 4))
                            disp('oh no - something went wrong!');
                        end
                        additionalNodes(nodesAdded + 1, 4) = newNodeID;
                        nodesAdded = nodesAdded + 1;
                    end

                    % update elements in the head to use new id
                    t_E(t_E == t_N_ind(i)) = maxNodeID + nodeID_Offset;

                    nodeIDAssignmentTable(nodeID_Offset, 1) = t_N_ind(i);
                    nodeIDAssignmentTable(nodeID_Offset, 2) = maxNodeID + nodeID_Offset;
                    nodeIDAssignmentTable(nodeID_Offset, 3) = maxNodeID + nodeID_Offset + total_nr_of_rows * nodeID_Offset_GP; % this is the of the lowest node --> we need this later for the bottom part

                    t_N_ind(i) = maxNodeID + nodeID_Offset;

                    nodeID_Offset = nodeID_Offset + 1;
                end
            end

            additionalElements = [];
            additionalElements_ind = [];
            element_Offset = maxElementID + 1; % this offset will be added so no duplicate element ids will appear

            elementsAdded = 0;
            elementsGPProx = struct;
            for row = 1 : total_nr_of_rows
                elementsGPProx.(['row_' num2str(row)]) = [];
            end

            for i = 1 : size(nodeIDAssignmentTable,1)
                % first get all elements which include this node
                % filter these for elements which are in the intersection plane -->
                % condition is that element has 4 nodes in intersection
                % duplicate these elements and replace inner node ids with new node ids

                [rows,~] = find(t_E == nodeIDAssignmentTable(i, 2));
                t_adjElements = t_E(rows, :);
                t_adjElements(t_adjElements <= maxNodeID) = 0;

                for j = 1 : size(t_adjElements, 1)
                    if nnz(t_adjElements(j, :)) >= 4
                        newElement(1:4) = t_adjElements(j, 5:8);
                        newElement(5:8) = t_adjElements(j, 1:4);
                        if nnz(newElement(1:4)) == 4 || nnz(newElement(5:8)) == 4
                            if nnz(newElement(1:4)) == 4
                                nodeRange = 5 : 8;
                            else
                                nodeRange = 1 : 4;
                            end
                            for z = nodeRange
                                corrNodeID = newElement(mod(z + 3, 8) + 1);
                                nextRowNodeID = corrNodeID + nodeID_Offset_GP;
                                newElement(z) = nextRowNodeID;
                            end

                            multiplied_vals = prod(newElement);
                            isAlreadyAdded = 0;
                            for k = 1 : size(additionalElements, 1)
                                if multiplied_vals == prod(additionalElements(k,:))
                                    isAlreadyAdded = 1;
                                    break;
                                end
                            end

                            if isAlreadyAdded == 0
                                for row = 1 : total_nr_of_rows
                                    elementToAdd = newElement + (row - 1) * nodeID_Offset_GP;
                                    additionalElements(elementsAdded + 1, :) = elementToAdd;
                                    additionalElements_ind(end + 1) = element_Offset + elementsAdded;
                                    elementsGPProx.(['row_' num2str(row)])(end + 1) = additionalElements_ind(end);
                                    elementsAdded = elementsAdded + 1;
                                end
                            end
                        end
                    end
                end
            end

            % update elements and nodes in bottom block
            for i = 1 : size(b_V, 1)
                if ismember(b_N_ind(i), intersect_node_ind)
                    [row, ~] = find(nodeIDAssignmentTable(:, 1) == b_N_ind(i));
                    newNodeID = nodeIDAssignmentTable(row, 3);
                    b_E(b_E == b_N_ind(i)) = newNodeID;
                    b_N_ind(i) = newNodeID;
                end
            end

            prox_nodeStruct.N = cat(1, t_V, additionalNodes(:, 1:3), b_V);
            prox_nodeStruct.N_ind = cat(1, t_N_ind, additionalNodes(:, 4), b_N_ind);
            prox_elementStruct.E = cat(1, t_E, additionalElements, b_E);
            prox_elementStruct.E_ind = cat(1, t_E_ind, additionalElements_ind', b_E_ind);
            prox_elementStruct.E_type = head_t_elementStruct.E_type;

            gp_prox_elements = additionalElements_ind';

            %% Fit Sphere to head of femur
            d.Value = 0.18;
            d.Message = 'Fit Sphere to head of femur';
            sphereNodes = struct;
            sphereNodes.N = [];
            sphereNodes.N_ind = [];

            for i = 1 : size(head_t_nodeStruct.N, 1)
                [rows,~] = find(head_t_elementStruct.E == head_t_nodeStruct.N_ind(i));
                t_adjElements = head_t_elementStruct.E(rows, :);
                if size(t_adjElements, 1) <= 3
                    % better result with just 3 members
                    sphereNodes.N(end+1, :) = head_t_nodeStruct.N(i, :);
                    sphereNodes.N_ind(end+1, :) = head_t_nodeStruct.N_ind(i, :);
                end
            end

            [intersect_node_ind, ~] = intersect(sphereNodes.N_ind, head_b_nodeStruct.N_ind);

            [~,IA] = setdiff(sphereNodes.N_ind, intersect_node_ind);
            X = sphereNodes.N(IA, :);
            X = X - headTranslation;

            [fem_head_center,fem_head_radius] = sphereFit(X);

            save(meshSettingsFile, 'fem_head_center', 'fem_head_radius', '-append');

            %% load full femur and calculate rotation Matric for OpenSim coordinate system
            d.Value = 0.25;
            d.Message = 'Get Rotation into OpenSim coordinate system';
            triGeom_set = createTriGeomSet({[side '_femur']}, segmentationPath);
            triGeom_set.(['femur_' lower(side)]) = triGeom_set.([side '_femur']);
            triGeom_set = rmfield(triGeom_set, [side '_femur']);

            [JCS, ~, ~] = processTriGeomBoneSet(triGeom_set, side, '', giboc_method, '', 0);

            % use self-calculated fem_head_center because STL file has slightly different
            % location. However, rotation is the same, therefore rotation matrix can be
            % used from GIBOC-cylinder

            prox_nodeStruct.N = prox_nodeStruct.N - fem_head_center;
            prox_nodeStruct.N = prox_nodeStruct.N * JCS.(['femur_' lower(side)]).(['hip_' lower(side)]).V;

            dist_nodeStruct.N = dist_nodeStruct.N - fem_head_center;
            dist_nodeStruct.N = dist_nodeStruct.N * JCS.(['femur_' lower(side)]).(['hip_' lower(side)]).V;

            shaft_cortical_nodeStruct.N = shaft_cortical_nodeStruct.N - fem_head_center;
            shaft_cortical_nodeStruct.N = shaft_cortical_nodeStruct.N * JCS.(['femur_' lower(side)]).(['hip_' lower(side)]).V;

            shaft_bone_marrow_nodeStruct.N = shaft_bone_marrow_nodeStruct.N - fem_head_center;
            shaft_bone_marrow_nodeStruct.N = shaft_bone_marrow_nodeStruct.N * JCS.(['femur_' lower(side)]).(['hip_' lower(side)]).V;

            % rotate full femur stl into OpenSim Coordinate System -->
            stlStruct = import_STL(fullfile(segmentationPath, [side '_femur.stl']));
            stlStruct.solidNormals={[]};
            stlStruct.solidVertices{1, 1} = stlStruct.solidVertices{1, 1} - fem_head_center;
            stlStruct.solidVertices{1, 1} = (stlStruct.solidVertices{1, 1} * JCS.(['femur_' lower(side)]).(['hip_' lower(side)]).V);
            tri = triangulation(stlStruct.solidFaces{1,1}, stlStruct.solidVertices{1,1});
            stlwrite(tri, fullfile(finalMeshFolder, [side '_femur_CS_OpenSim.stl']));

            %% create an inp file - improve this mesh quality with cubit in the next steps
            d.Value = 0.3;
            d.Message = 'Improving Mesh Quality be inverting elements with negative Scaled Jacobian value.';

            fullMesh_nodeStruct = struct;
            fullMesh_elementStruct = struct;

            fullMesh_nodeStruct.N = cat(1, prox_nodeStruct.N, shaft_cortical_nodeStruct.N, shaft_bone_marrow_nodeStruct.N, dist_nodeStruct.N);
            fullMesh_nodeStruct.N_ind = cat(1, prox_nodeStruct.N_ind, shaft_cortical_nodeStruct.N_ind, shaft_bone_marrow_nodeStruct.N_ind, dist_nodeStruct.N_ind);
            fullMesh_elementStruct.E = cat(1, prox_elementStruct.E, shaft_cortical_elementStruct.E, shaft_bone_marrow_elementStruct.E, dist_elementStruct.E);
            fullMesh_elementStruct.E_ind = cat(1, prox_elementStruct.E_ind, shaft_cortical_elementStruct.E_ind, shaft_bone_marrow_elementStruct.E_ind, dist_elementStruct.E_ind);
            fullMesh_elementStruct.E_type = '*ELEMENT, TYPE=C3D8R';

            fullMesh_elementStruct.Sets.head.elements = prox_elementStruct.E_ind;
            fullMesh_elementStruct.Sets.cortical.elements = shaft_cortical_elementStruct.E_ind;
            fullMesh_elementStruct.Sets.marrow.elements = shaft_bone_marrow_elementStruct.E_ind;
            fullMesh_elementStruct.Sets.distal.elements = dist_elementStruct.E_ind;
            fullMesh_elementStruct.Sets.gp_prox.elements = gp_prox_elements;
            fullMesh_elementStruct.Sets.gp_dist.elements = gp_dist_elements;

            disp(fullfile(finalMeshFolder, 'fullMesh_v0.inp'));
            export_INP(fullMesh_elementStruct, fullMesh_nodeStruct, fullfile(finalMeshFolder, 'fullMesh_v0.inp'));

            fid = fopen(fullfile(finalMeshFolder,'elementList.txt'), 'wt');
            for i = 1 : size(fullMesh_elementStruct.E_ind, 1)
                fprintf(fid, [num2str(fullMesh_elementStruct.E_ind(i)) '\n']);
            end
            fclose(fid);

            %% Write folder to pythonArgs.txt because winopen cannot use arguments...
            fid = fopen(fullfile(app.appDir, 'checkMeshPython', 'pythonArgs.txt'), 'w');
            fwrite(fid, [finalMeshFolder filesep newline]);
            fwrite(fid, [app.workingDirectory filesep newline]);
            fwrite(fid, [app.cubitPath filesep]);
            fclose(fid);

            pythonFile = fullfile(app.appDir, 'checkMeshPython', 'getQualityfromCubit_Step1.py');
            runPythonScriptAndWaitForFinish(app, pythonFile, 'Improving Mesh');

            %% lets try to invert negative elements which have negative scaled jacobian quality. maybe, they are just inside-out
            turnedNeg_elementStruct = fullMesh_elementStruct;

            fid = fopen(fullfile(finalMeshFolder,'negScaledJacobianElements.txt'));

            line = fgetl(fid);
            counter = 0;
            while ischar(line)
                elementID = str2double(line);

                [rows,~] = find(turnedNeg_elementStruct.E_ind == elementID);
                currElement = turnedNeg_elementStruct.E(rows, :);
                rotatedElement(1:4) = currElement(5:8);
                rotatedElement(5:8) = currElement(1:4);
                turnedNeg_elementStruct.E(rows, :) = rotatedElement;

                [rows,~] = find(prox_elementStruct.E_ind == elementID);
                if size(rows, 1) > 0
                    currElement = prox_elementStruct.E(rows, :);
                    rotatedElement(1:4) = currElement(5:8);
                    rotatedElement(5:8) = currElement(1:4);
                    prox_elementStruct.E(rows, :) = rotatedElement;
                end

                [rows,~] = find(dist_elementStruct.E_ind == elementID);
                if size(rows, 1) > 0
                    currElement = dist_elementStruct.E(rows, :);
                    rotatedElement(1:4) = currElement(5:8);
                    rotatedElement(5:8) = currElement(1:4);
                    dist_elementStruct.E(rows, :) = rotatedElement;
                end

                [rows,~] = find(shaft_bone_marrow_elementStruct.E_ind == elementID);
                if size(rows, 1) > 0
                    currElement = shaft_bone_marrow_elementStruct.E(rows, :);
                    rotatedElement(1:4) = currElement(5:8);
                    rotatedElement(5:8) = currElement(1:4);
                    shaft_bone_marrow_elementStruct.E(rows, :) = rotatedElement;
                end

                [rows,~] = find(shaft_cortical_elementStruct.E_ind == elementID);
                if size(rows, 1) > 0
                    currElement = shaft_cortical_elementStruct.E(rows, :);
                    rotatedElement(1:4) = currElement(5:8);
                    rotatedElement(5:8) = currElement(1:4);
                    shaft_cortical_elementStruct.E(rows, :) = rotatedElement;
                end

                line = fgetl(fid);
                counter = counter + 1;
            end
            fclose(fid);

            disp(['turned ' num2str(counter) ' elements']);

            export_INP(turnedNeg_elementStruct, fullMesh_nodeStruct, fullfile(finalMeshFolder, 'fullMesh_v1.inp'));


            %% lets remove the all elements which have a scaled jacobian lower than 0.2
            d.Value = 0.5;
            d.Message = 'Improving Mesh Quality by removing elements with Scaled Jacobian lower than 0.2';

            pythonFile = fullfile(app.appDir, 'checkMeshPython', 'getQualityfromCubit_Step2_treshold.py');
            runPythonScriptAndWaitForFinish(app, pythonFile, 'Improving Mesh');

            final_elementStruct = turnedNeg_elementStruct;
            final_nodeStruct = fullMesh_nodeStruct;

            fid = fopen(fullfile(finalMeshFolder,'negScaledJacobianElements_afterTurning.txt'));

            removeCandidates = [];

            elementCount = size(final_elementStruct.E_ind, 1);
            disp(['Elements before removing: ' num2str(elementCount)]);

            line = fgetl(fid);
            while ischar(line)
                elementID = str2double(line);

                [rows,~] = find(final_elementStruct.E_ind == elementID);
                removeCandidates = [removeCandidates; final_elementStruct.E(rows, :)'];
                final_elementStruct.E(rows, :) = [];
                final_elementStruct.E_ind(rows, :) = [];
                line = fgetl(fid);
            end
            fclose(fid);

            disp(['Elements after removing: ' num2str(size(final_elementStruct.E_ind, 1))]);
            disp(['Elements removed: ' num2str(elementCount - size(final_elementStruct.E_ind, 1))]);

            nodesRemovedCounter = 0;
            disp(['Nodes before removing: ' num2str(size(final_nodeStruct.N_ind, 1))]);


            removeCandidates = unique(removeCandidates);
            for i = 1 : size(removeCandidates, 1)
                res = any(final_elementStruct.E == removeCandidates(i));
                if sum(res) == 0
                    [rows,~] = find(final_nodeStruct.N_ind == removeCandidates(i));
                    final_nodeStruct.N_ind(rows) = [];
                    final_nodeStruct.N(rows, :) = [];
                    nodesRemovedCounter = nodesRemovedCounter + 1;
                end
            end

            disp(['Nodes after removing: ' num2str(size(final_nodeStruct.N_ind, 1))]);
            disp(['Removed ' num2str(nodesRemovedCounter) ' nodes']);

            % Remove Nodes from Nodesets
            for j = size(prox_nodeStruct.N_ind, 1) : - 1 : 1
                if ~any(final_nodeStruct.N_ind == prox_nodeStruct.N_ind(j))
                    prox_nodeStruct.N_ind(j) = [];
                    prox_nodeStruct.N(j, :) = [];
                end
            end
            for j = size(dist_nodeStruct.N_ind, 1) : - 1 : 1
                if ~any(final_nodeStruct.N_ind == dist_nodeStruct.N_ind(j))
                    dist_nodeStruct.N_ind(j) = [];
                    dist_nodeStruct.N(j, :) = [];
                end
            end
            for j = size(shaft_cortical_nodeStruct.N_ind, 1) : - 1 : 1
                if ~any(final_nodeStruct.N_ind == shaft_cortical_nodeStruct.N_ind(j))
                    shaft_cortical_nodeStruct.N_ind(j) = [];
                    shaft_cortical_nodeStruct.N(j, :) = [];
                end
            end
            for j = size(shaft_bone_marrow_nodeStruct.N_ind, 1) : - 1 : 1
                if ~any(final_nodeStruct.N_ind == shaft_bone_marrow_nodeStruct.N_ind(j))
                    shaft_bone_marrow_nodeStruct.N_ind(j) = [];
                    shaft_bone_marrow_nodeStruct.N(j, :) = [];
                end
            end

            % Remove Elements from Element Sets and Growthplate rows...
            esets = fieldnames(final_elementStruct.Sets);
            for i = 1 : numel(esets)
                for j = size(final_elementStruct.Sets.(esets{i}).elements, 1) : - 1 : 1
                    if ~any(final_elementStruct.E_ind == final_elementStruct.Sets.(esets{i}).elements(j))
                        final_elementStruct.Sets.(esets{i}).elements(j) = [];
                    end
                end
            end

            rows = fieldnames(elementsGPProx);
            for i = 1 : numel(rows)
                for j = size(elementsGPProx.(rows{i}), 2) : - 1 : 1
                    if ~any(final_elementStruct.E_ind == elementsGPProx.(rows{i})(j))
                        elementsGPProx.(rows{i})(j) = [];
                    end
                end
            end

            if exist('elementsGPDist', 'var')
                dist_rows = fieldnames(elementsGPDist);
                for i = 1 : numel(dist_rows)
                    for j = size(elementsGPDist.(dist_rows{i}), 2) : - 1 : 1
                        if ~any(final_elementStruct.E_ind == elementsGPDist.(dist_rows{i})(j))
                            elementsGPDist.(dist_rows{i})(j) = [];
                        end
                    end
                end
            end

            for j = size(prox_elementStruct.E_ind, 1) : - 1 : 1
                if ~any(final_elementStruct.E_ind == prox_elementStruct.E_ind(j))
                    prox_elementStruct.E_ind(j) = [];
                    prox_elementStruct.E(j, :) = [];
                end
            end
            for j = size(dist_elementStruct.E_ind, 1) : - 1 : 1
                if ~any(final_elementStruct.E_ind == dist_elementStruct.E_ind(j))
                    dist_elementStruct.E_ind(j) = [];
                    dist_elementStruct.E(j, :) = [];
                end
            end
            for j = size(shaft_cortical_elementStruct.E_ind, 1) : - 1 : 1
                if ~any(final_elementStruct.E_ind == shaft_cortical_elementStruct.E_ind(j))
                    shaft_cortical_elementStruct.E_ind(j) = [];
                    shaft_cortical_elementStruct.E(j, :) = [];
                end
            end
            for j = size(shaft_bone_marrow_elementStruct.E_ind, 1) : - 1 : 1
                if ~any(final_elementStruct.E_ind == shaft_bone_marrow_elementStruct.E_ind(j))
                    shaft_bone_marrow_elementStruct.E_ind(j) = [];
                    shaft_bone_marrow_elementStruct.E(j, :) = [];
                end
            end

            disp('Mesh was improved and should not contain any negative jacobians --> Next step is to renumber all nodes and elements');

            export_INP(final_elementStruct, final_nodeStruct, fullfile(finalMeshFolder, 'fullMesh_v2.inp'));

            %% now renumber all nodes and elements --> important Step for FEBio to work!

            d.Value = 0.7;
            d.Message = 'Now renumber all nodes and elements ... takes some time, be patient';

            % Create structs for final nodes and elements
            renumbered_nodes = struct;
            renumbered_elements = struct;

            disp('Starting to renumber all nodes and elements ...');
            disp('First start with all nodes ...');

            firstNodeIndex = 1;
            prox_nodes.N = prox_nodeStruct.N;
            prox_nodes.N_ind = (firstNodeIndex : size(prox_nodes.N, 1) + firstNodeIndex - 1)';

            firstNodeIndex = prox_nodes.N_ind(end) + 1;
            cortical_nodes.N = shaft_cortical_nodeStruct.N;
            cortical_nodes.N_ind = (firstNodeIndex : size(cortical_nodes.N, 1) + firstNodeIndex - 1)';

            firstNodeIndex = cortical_nodes.N_ind(end) + 1;
            marrow_nodes.N = shaft_bone_marrow_nodeStruct.N;
            marrow_nodes.N_ind = (firstNodeIndex : size(marrow_nodes.N, 1) + firstNodeIndex - 1)';

            firstNodeIndex = marrow_nodes.N_ind(end) + 1;
            dist_nodes.N = dist_nodeStruct.N;
            dist_nodes.N_ind = (firstNodeIndex : size(dist_nodes.N, 1) + firstNodeIndex - 1)';

            % Now we have to merge nodes which are at the same location and give
            % them a unique ID
            disp('Merge nodes with the same location ...');
            allNodes = cat(1, prox_nodes.N, cortical_nodes.N, marrow_nodes.N, dist_nodes.N);
            [uniqueNodes, tempIndizes, ~] = unique(allNodes,'rows', 'stable'); % stable ... do not sort nodes


            uniqueNodesIndizes = 1 : size(uniqueNodes, 1);


            allOldNodesIndizes = cat(1, prox_nodeStruct.N_ind, shaft_cortical_nodeStruct.N_ind, shaft_bone_marrow_nodeStruct.N_ind, dist_nodeStruct.N_ind);
            oldNodesIndizes = allOldNodesIndizes(tempIndizes);

            allOldElements = cat(1, prox_elementStruct.E, shaft_cortical_elementStruct.E, shaft_bone_marrow_elementStruct.E, dist_elementStruct.E);
            allNewElements = allOldElements;

            renumbered_nodes.N = uniqueNodes;
            renumbered_nodes.N_ind = uniqueNodesIndizes;

            % v2 - improved speed
            for i = 1 : size(oldNodesIndizes, 1)
                allNewElements(allOldElements == oldNodesIndizes(i)) = i;
            end

            % reorganize elements
            % 1. ... GP rows from top to bottom
            % 2. ... Trab Proximal
            % 3. ... cortical bone
            % 4. ... bone marrow
            % 5. ... Trab Distal

            d.Value = d.Value + 0.05;

            remainingNewElements = allNewElements;
            fullprox_elementStruct = prox_elementStruct;

            finalElements = [];

            distOffset = length(prox_elementStruct.E_ind) + length(shaft_cortical_elementStruct.E_ind) + length(shaft_bone_marrow_elementStruct.E_ind);

            gpRows = fieldnames(elementsGPProx);
            for i = 1 : numel(gpRows)
                for j = 1 : size(elementsGPProx.(gpRows{i}), 2)
                    tempInd = find(fullprox_elementStruct.E_ind == elementsGPProx.(gpRows{i})(j));

                    finalElements = [finalElements; allNewElements(tempInd, :)];
                    remainingNewElements(tempInd, :) = [0 0 0 0 0 0 0 0];

                    prox_elementStruct.E_ind(tempInd) = [];
                    prox_elementStruct.E(tempInd, :) = [];
                end
            end

            if exist('elementsGPDist', 'var')
                fulldist_elementStruct = dist_elementStruct;
                dist_gpRows = fieldnames(elementsGPDist);
                for i = 1 : numel(dist_gpRows)
                    for j = 1 : size(elementsGPDist.(dist_gpRows{i}), 2)
                        tempInd = find(fulldist_elementStruct.E_ind == elementsGPDist.(dist_gpRows{i})(j));
                        tempInd = tempInd + distOffset;
                        finalElements = [finalElements; allNewElements(tempInd, :)];
                        remainingNewElements(tempInd, :) = [0 0 0 0 0 0 0 0];

                        dist_elementStruct.E_ind(tempInd - distOffset) = [];
                        dist_elementStruct.E(tempInd - distOffset, :) = [];
                    end
                end
            end

            remainingNewElements(sum(remainingNewElements,2) == 0, :) = [];

            finalElements = [finalElements; remainingNewElements(1 : size(prox_elementStruct.E, 1), :)];
            remainingNewElements(1 : size(prox_elementStruct.E, 1), :) = [];

            finalElements = [finalElements; remainingNewElements(1 : size(shaft_cortical_elementStruct.E, 1), :)];
            remainingNewElements(1 : size(shaft_cortical_elementStruct.E, 1), :) = [];

            finalElements = [finalElements; remainingNewElements(1 : size(shaft_bone_marrow_elementStruct.E, 1), :)];
            remainingNewElements(1 : size(shaft_bone_marrow_elementStruct.E, 1), :) = [];

            finalElements = [finalElements; remainingNewElements(1 : size(dist_elementStruct.E, 1), :)];
            remainingNewElements(1 : size(dist_elementStruct.E, 1), :) = [];

            d.Value = d.Value + 0.05;

            renumbered_elements.E = finalElements;
            renumbered_elements.E_ind = 1 : size(finalElements, 1);
            renumbered_elements.E_type = '*ELEMENT, TYPE=C3D8R';

            xx = 0;
            % define the element sets in the same order

            for i = 1 : numel(gpRows)
                x = xx + 1;
                xx = x + size(elementsGPProx.(gpRows{i}), 2) - 1;
                renumbered_elements.Sets.(gpRows{i}).elements = x : xx;
            end

            if exist('elementsGPDist', 'var')
                for i = 1 : numel(dist_gpRows)
                    x = xx + 1;
                    xx = x + size(elementsGPDist.(dist_gpRows{i}), 2) - 1;
                    renumbered_elements.Sets.(dist_gpRows{i}).elements = x : xx;
                end
            end

            x = xx + 1;
            xx = x + size(prox_elementStruct.E, 1) - 1;
            renumbered_elements.Sets.prox.elements = x : xx;

            x = xx + 1;
            xx = x + size(shaft_cortical_elementStruct.E, 1) - 1;
            renumbered_elements.Sets.cortical.elements =  x : xx;

            x = xx + 1;
            xx = x + size(shaft_bone_marrow_elementStruct.E, 1) - 1;
            renumbered_elements.Sets.marrow.elements = x : xx;

            x = xx + 1;
            xx = x + size(dist_elementStruct.E, 1) - 1;
            renumbered_elements.Sets.distal.elements = x : xx;
            d.Value = d.Value + 0.05;

            export_INP(renumbered_elements, renumbered_nodes, fullfile(finalMeshFolder, 'finalMesh.inp'));

            d.Message = 'Calculating Geometry Features';
            d.Value = 0.9;

            triGeom_set = createTriGeomSet({[side '_femur_CS_OpenSim']}, finalMeshFolder);
            triGeom_set.(['femur_' lower(side)]) = triGeom_set.([side '_femur_CS_OpenSim']);
            triGeom_set = rmfield(triGeom_set, [side '_femur_CS_OpenSim']);

            % code from GIBOC (file "femur_guess_CS")
            Femur = triGeom_set.(['femur_' lower(side)]);
            [ V_all, ~ ] = TriInertiaPpties( Femur );
            Z0 = V_all(:,1);

            %% Get the central 60% of the bone -> The femur diaphysis
            LengthBone = max(Femur.Points*Z0) - min(Femur.Points*Z0);
            L_ratio = 0.20;
            % First remove the top 20% percent
            alt_top = max(Femur.Points*Z0) - L_ratio* LengthBone;
            ElmtsTmp1 = find(Femur.incenter*Z0<alt_top);
            TrTmp1 = TriReduceMesh( Femur, ElmtsTmp1);
            TrTmp1 = TriFillPlanarHoles( TrTmp1 );
            % Then remove the bottom 20% percent
            alt_bottom = min(Femur.Points*Z0) + L_ratio* LengthBone;
            ElmtsTmp2 = find(TrTmp1.incenter*Z0>alt_bottom);
            TrTmp2 = TriReduceMesh( TrTmp1, ElmtsTmp2);
            FemurDiaphysis = TriFillPlanarHoles( TrTmp2 );

            %% Get the principal inertia axis of the diaphysis (potentially wrongly orientated)
            [ V_all, ~ ] = TriInertiaPpties( FemurDiaphysis );
            diaphyseVector = V_all(:,1);
            if diaphyseVector(2) < 0
                diaphyseVector = diaphyseVector * (-1);
            end

            % Fit cylinder through condyles --> use GIBOC toolbox --> we
            % need cylinder axis and origin
            [~, JCS, ~, ~, ~] = GIBOC_femur(triGeom_set.(['femur_' lower(side)]), side, giboc_method(7:end));


            %% now import the STL and find exact neck axis
            [stlStruct] = import_STL(fullfile(finalMeshFolder, [side '_femur_CS_OpenSim.stl']));
            vertexMAT = stlStruct.solidVertices{1, 1};

            neckNodes = vertexMAT;
            D = pdist2(neckNodes, [0 0 0]);
            neckNodes(D > neckAxisCutOff, :) = [];
            allNeckNodes = neckNodes;

            p2 = firstGuessNeckAxis * (-1) * fem_head_radius;
            D = pdist2(neckNodes, p2');
            neckNodes(D < fem_head_radius, :) = [];

            latestGuessNeckAxis = firstGuessNeckAxis;
            iterationCounter = 1;
            while(1)
                neckNodes = allNeckNodes;
                p2 = latestGuessNeckAxis * (-1) * fem_head_radius;
                D = pdist2(neckNodes, p2');
                neckNodes(D < fem_head_radius, :) = [];

                % use only ~ 5000 nodes
                nodesUsedForCylinderFit = neckNodes(floor(linspace(1, size(neckNodes, 1), 5000)), :);
                [~, neckAxis] = lscylinder(nodesUsedForCylinderFit, [0 0 0]', latestGuessNeckAxis', 15, 0.1, 0.1);

                % calc angle between neckAxis and latestGuessNeckAxis
                angleChange = atan2d(vecnorm(cross(neckAxis,latestGuessNeckAxis)),dot(neckAxis,latestGuessNeckAxis));

                if angleChange < 0.2
                    break;
                else
                    latestGuessNeckAxis = neckAxis;
                end


                iterationCounter = iterationCounter + 1;
                if iterationCounter > 15
                    disp('fail safe - finding neck axis did not converge after 100 iterations, changes were bigger than 0.2° each iteration');
                    break;
                end
            end

            figure;
            hold on;
            daspect([1 1 1]);
            rotate3d on;
            plotNodes(nodesUsedForCylinderFit, 'r');
            plotNodes(vertexMAT(1 : size(vertexMAT, 1) / 5000 : end, :), 'b');
            quiver3(neckAxis(1)*(-60),neckAxis(2)*(-60),neckAxis(3)*(-60), neckAxis(1), neckAxis(2), neckAxis(3), 120, 'LineWidth', 2);
            title(app.meshFolder, 'Interpreter', 'none');
            xlabel('[mm]'); ylabel('[mm]'); zlabel('[mm]');
            savefig(fullfile(app.meshFolder, 'neckAxis.fig'));
            saveas(gcf, fullfile(app.meshFolder, 'neckAxis.jpg'));


            %% define plane from diaphyse axis and cylinder axis
            normalToPlane = cross(diaphyseVector, JCS.(['knee_' lower(side)]).V(:, 3));

            [neck_shaftPlane_intersection, ~] = line_plane_intersection(neckAxis, JCS.(['hip_' lower(side)]).Origin, normalToPlane, JCS.(['knee_' lower(side)]).Origin, 1);

            esets = fieldnames(renumbered_elements.Sets);
            esets = esets(contains(esets, 'row_'));
            elementIDs_middleRow = renumbered_elements.Sets.(esets{floor(length(esets)/2)}).elements';
            nodeIDsOfGrowthPlate = renumbered_elements.E(elementIDs_middleRow, :);
            nodesOfGrowthPlate = renumbered_nodes.N(unique(nodeIDsOfGrowthPlate), :);

            PCA = pca(nodesOfGrowthPlate);
            normalVectorToGrowthPlate = PCA(:, 3)';
            meanLocation = mean(nodesOfGrowthPlate, 1);

            elementIDs_head = renumbered_elements.Sets.prox.elements';
            proxNodeIDs = renumbered_elements.E(elementIDs_head, :);
            proxNodeIDs = proxNodeIDs(:);
            proxNodeIDs = unique(proxNodeIDs);
            proxNodes = renumbered_nodes.N(proxNodeIDs, :);
            headNodeIDs = [];
            for i = 1 : size(proxNodes, 1)
                v = dot(proxNodes(i, :) - meanLocation, normalVectorToGrowthPlate);
                if sign(v) > 0
                    headNodeIDs(end+1) = proxNodeIDs(i);
                end
            end
            headNodes = renumbered_nodes.N(headNodeIDs, :);

            headSphereNodes = struct;
            headSphereNodes.N = [];
            headSphereNodes.N_ind = [];
            for i = 1 : size(headNodeIDs, 2)
                [rows,~] = find(renumbered_elements.E == headNodeIDs(i));
                t_adjElements = renumbered_elements.E(rows, :);
                if size(t_adjElements, 1) <= 3
                    % better result with just 3 members
                    headSphereNodes.N(end+1, :) = headNodes(i, :);
                    headSphereNodes.N_ind(end+1, :) = headNodeIDs(i);
                end
            end

            [fem_head_center,~] = sphereFit(headSphereNodes.N);

            [AVA_inTransverse, NSA] = calculateGeometryAngles(app, renumbered_nodes, headSphereNodes, neck_shaftPlane_intersection', diaphyseVector, side);

            % calculate neck base - closest point to
            % neck_shaft_intersection point and on the line between this
            % intersection point and the femoral head center
            ptToNeckdistance = point_to_line_distance(renumbered_nodes.N, fem_head_center, neck_shaftPlane_intersection);
            ptsCloseToNeckAxis = renumbered_nodes.N;
            ptsCloseToNeckAxis(ptToNeckdistance > 2, :) = [];
            D = pdist2(ptsCloseToNeckAxis, neck_shaftPlane_intersection');
            [~,I] = min(D);
            neckBase_nodeLoc = ptsCloseToNeckAxis(I, :);
            [row, ~] = find(ismember(renumbered_nodes.N, neckBase_nodeLoc, 'rows'));
            neckBase_nodeNr = renumbered_nodes.N_ind(row);

            HC = [0; 0; 0];
            diffLocation = renumbered_nodes.N - HC';
            abs_diff = sqrt( diffLocation(:,1).^2 + diffLocation(:,2).^2 + diffLocation(:,3).^2);
            [~, minDiffNodeIndizes] = min(abs_diff);
            headCenter_nodeNr = renumbered_nodes.N_ind(minDiffNodeIndizes);
            headCenter_nodeLoc = renumbered_nodes.N(minDiffNodeIndizes, :);

            % find nodes at medial and lateral surface for definition of
            % knee axis
            triGeom_set = createTriGeomSet({[side '_femur']}, segmentationPath);
            triGeom_set.(['femur_' lower(side)]) = triGeom_set.([side '_femur']);
            triGeom_set = rmfield(triGeom_set, [side '_femur']);

            [JCS, ~, ~] = processTriGeomBoneSet(triGeom_set, lower(side), '', giboc_method, '', 1);
            kneeOrigin = (JCS.(['femur_' lower(side)]).(['knee_' lower(side)]).Origin - JCS.(['femur_' lower(side)]).(['hip_' lower(side)]).Origin)' * JCS.(['femur_' lower(side)]).(['hip_' lower(side)]).V;

            if strcmpi(side, 'l')
                kneeOutsideMed = kneeOrigin + [0 0 50];
                kneeOutsideLat = kneeOrigin - [0 0 50];
            else
                kneeOutsideMed = kneeOrigin - [0 0 50];
                kneeOutsideLat = kneeOrigin + [0 0 50];
            end

            nodesAtKneeAxis = renumbered_nodes.N(and( and(renumbered_nodes.N(:, 1) < 1, renumbered_nodes.N(:, 1) > -1), and(renumbered_nodes.N(:, 2) < (kneeOrigin(2) + 1), renumbered_nodes.N(:, 2) > (kneeOrigin(2) - 1))), :);
            D = pdist2(nodesAtKneeAxis, kneeOutsideMed);
            [~, I] = min(D);
            kneeMed = nodesAtKneeAxis(I, :);
            I = ismember(renumbered_nodes.N, kneeMed, 'rows');
            kneeMedInd = find(I);
            % kneeMed = nodesAtKneeAxis(I, :);
            D = pdist2(nodesAtKneeAxis, kneeOutsideLat);
            [~, I] = min(D);
            kneeLat = nodesAtKneeAxis(I, :);
            I = ismember(renumbered_nodes.N, kneeLat, 'rows');
            kneeLatInd = find(I);

            kneeAxisAngle = calculateKneeAxisAngle(app, renumbered_nodes, kneeMedInd, kneeLatInd, side);

            save(meshSettingsFile, 'renumbered_elements', 'renumbered_nodes', 'NSA', 'AVA_inTransverse', ...
                'headSphereNodes', 'diaphyseVector', 'neck_shaftPlane_intersection', 'normalVectorToGrowthPlate', 'neckAxis', ...
                'headCenter_nodeNr', 'headCenter_nodeLoc', 'neckBase_nodeNr', 'neckBase_nodeLoc', 'kneeLat', 'kneeMed', 'kneeLatInd', 'kneeMedInd', 'kneeAxisAngle', '-append');
            close(d);
        end

        function CheckIfAnalysisSetupIsComplete(app)
            if ~strcmp(app.selectloadingfileLabel.Text, 'select loading file')
                app.CheckLoadingButton.Enable = true;

                if ~isempty(app.LoadingNameEditField.Value) && ...
                        ~isempty(app.MaterialNameEditField.Value)
                    app.CreatethisanalysisButton.Enable = true;
                else
                    app.CreatethisanalysisButton.Enable = false;
                    app.RunAnalysisButton.Enable = false;
                end
            else
                app.CheckLoadingButton.Enable = false;
                app.RunAnalysisButton.Enable = false;
            end
        end

        function rot_matrix = getRotationMatrixFromPlane(app, P1, P2, P3)
            x = P2 - P1;
            y = P3 - P1;

            z = cross(x, y);
            z = z / norm(z);
            x = x / norm(x);
            y = cross(x, z);
            z = z * (-1);

            rot_matrix = [x; y; z];
        end

        function runPythonScriptAndWaitForFinish(app, pythonFile, taskname) % works only on windows
            if nargin == 2
                taskname = 'Task';
            end

            [folder,name,ext] = fileparts(pythonFile);

            cd(folder);
            winopen(pythonFile)
            %             system(['runas /user:' getenv('COMPUTERNAME') '\' getenv('USERNAME') ' "python ' name ext '" &']);  % & tells the command not to wait for process to finish
            %             system(['python ' name ext]);  % & tells the command not to wait for process to finish
            cd(app.appDir);

            taskToLookFor = 'py.exe';
            commandLine = sprintf('tasklist /FI "IMAGENAME eq %s"', taskToLookFor);

            % first check if process is running
            [~, result] = system(commandLine);
            itIsRunning = strfind(lower(result), lower(taskToLookFor));
            if itIsRunning
                disp([taskname ' is in progress']);
            end

            % Go into a loop waiting for it to finish.
            maxChecks = 200; % Max seconds to wait before exiting - a failsafe.
            numberOfChecks = 1;
            counter = 1; someError = 0;
            while isempty(itIsRunning)
                pause(2);
                [~, result] = system(commandLine);
                itIsRunning = strfind(lower(result), lower(taskToLookFor));
                if counter > 3
                    someError = 1;
                    break;
                end
                counter = counter + 1;
            end
            if someError ~= 1
                while itIsRunning && numberOfChecks < maxChecks
                    [~, result] = system(commandLine);
                    itIsRunning = strfind(lower(result), lower(taskToLookFor));
                    if itIsRunning
                        if mod(numberOfChecks, 5) == 0
                            message = sprintf('Still running after %d seconds.\n', numberOfChecks);
                            fprintf('%s', message);
                        end
                    else
                        message = sprintf('Finished after %d seconds!\n', numberOfChecks);
                        fprintf('%s', message);
                        break; % Exit loop.
                    end
                    pause(1); % Wait a second before checking again.
                    numberOfChecks = numberOfChecks + 1;
                end
            end
        end

        function [febioFileName] = createFEBio_StressModel(app, nodes, elements, Rows, rowToGrow, analysisFileName, loadingFileName, currIterationFolder, distal, clamping)
            load(loadingFileName);
            load(analysisFileName);
            load(fullfile(app.probandFolder, 'settings.mat'), 'side')
            if ~isfield(Loading, 'factor')
                Loading.factor = 1;
            end
            side = lower(side);
            nrNodesWhereHJCFisApplied = 100;


            % stls necessary to find best attachments for muscles
            filename = fullfile(app.appDir, [side '_femur_fine.stl']);
            OS_stlStruct = import_STL(filename);
            filename = fullfile(app.meshFolder, 'Mesh', [side '_femur_CS_OpenSim.stl']);
            Participant_stlStruct = import_STL(filename);

            minY_OS = min(OS_stlStruct.solidVertices{1, 1}(:, 2));
            minY_new = min(Participant_stlStruct.solidVertices{1, 1}(:, 2));
            scaleFactorForOS = minY_new /minY_OS;
            OS_stlStruct.solidVertices{1, 1} = OS_stlStruct.solidVertices{1, 1} * scaleFactorForOS;

            % load all necessary variables
            [febio_spec] = febioStructTemplate;
            febio_spec.ATTR.version = '3.0';
            febio_spec.Module.ATTR.type = 'solid';

            % FEA control settings
            numTimeSteps = 1; %Number of time steps desired
            max_refs = 15; %Max reforms
            max_ups = 20; %Set to zero to use full-Newton iterations
            opt_iter = 10; %Optimum number of iterations
            max_retries = 5; %Maximum number of retires
            dtmin = (1/numTimeSteps)/100; %Minimum time step size
            dtmax = 1/numTimeSteps; %Maximum time step size

            stepStruct.Control.analysis = 'STATIC';
            stepStruct.Control.time_steps = numTimeSteps;
            stepStruct.Control.step_size = 1/numTimeSteps;
            stepStruct.Control.solver.max_refs = max_refs;
            stepStruct.Control.solver.max_ups = max_ups;
            stepStruct.Control.solver.reform_each_time_step = 1;
            stepStruct.Control.time_stepper.dtmin = dtmin;
            stepStruct.Control.time_stepper.dtmax = dtmax;
            stepStruct.Control.time_stepper.max_retries = max_retries;
            stepStruct.Control.time_stepper.opt_iter = opt_iter;
            [stepStruct.Control] = structComplete(stepStruct.Control,febio_spec.Control,1); %Complement provided with default if missing
            stepStruct.Control = rmfield(stepStruct.Control, 'plot_level');
            stepStruct.Control = rmfield(stepStruct.Control, 'plot_stride');
            stepStruct.Control = rmfield(stepStruct.Control, 'plot_range');
            stepStruct.Control = rmfield(stepStruct.Control, 'plot_zero_state');
            stepStruct.Control = rmfield(stepStruct.Control, 'output_level');

            febio_spec.LoadData.load_controller{1}.ATTR.id = 1;
            febio_spec.LoadData.load_controller{1}.ATTR.type = 'loadcurve';
            febio_spec.LoadData.load_controller{1}.interpolate = 'LINEAR';
            febio_spec.LoadData.load_controller{1}.points.point.VAL = [0 0; 1 1];

            febio_spec = rmfield(febio_spec,'Control');

            materialType = 'isotropic elastic';
            materials = fieldnames(Materials);
            for i = 1 : numel(materials)
                febio_spec.Material.material{i}.ATTR.name = materials{i};
                febio_spec.Material.material{i}.ATTR.type = materialType;
                febio_spec.Material.material{i}.ATTR.id = i;
                febio_spec.Material.material{i}.E = Materials.(materials{i}).E;
                febio_spec.Material.material{i}.v = Materials.(materials{i}).v;
            end

            gpRows = fieldnames(elements.Sets);
            gpRows = gpRows(contains(gpRows, 'row_'));
            gpRowsProx = gpRows(~contains(gpRows, 'dist_'));
            gpRowsDist = gpRows(contains(gpRows, 'dist_'));

            E_modul_diff = Materials.TRAB_PROX.E - Materials.GROWTHPLATE.E;
            for i = 1 : Rows.nr_of_transition_rows
                index = i + numel(materials);
                febio_spec.Material.material{index}.ATTR.name = ['PROX_TRANSITION_' num2str(i)];
                febio_spec.Material.material{index}.ATTR.type = materialType;
                febio_spec.Material.material{index}.ATTR.id = index;
                febio_spec.Material.material{index}.E = Materials.TRAB_PROX.E - (E_modul_diff / (Rows.nr_of_transition_rows + 1) * i);
                febio_spec.Material.material{index}.v = Materials.GROWTHPLATE.v;
            end


            E_modul_diff = Materials.TRAB_DIST.E - Materials.GROWTHPLATE.E;
            for i = 1 : Rows.nr_of_transition_rows
                index = i + numel(materials) + Rows.nr_of_transition_rows;
                febio_spec.Material.material{index}.ATTR.name = ['DIST_TRANSITION_' num2str(i)];
                febio_spec.Material.material{index}.ATTR.type = materialType;
                febio_spec.Material.material{index}.ATTR.id = index;
                febio_spec.Material.material{index}.E = Materials.TRAB_DIST.E - (E_modul_diff / (Rows.nr_of_transition_rows + 1) * i);
                febio_spec.Material.material{index}.v = Materials.GROWTHPLATE.v;
            end


            febio_spec.Mesh.Nodes{1}.ATTR.name = 'Nodes';
            febio_spec.Mesh.Nodes{1}.node.ATTR.id = nodes.N_ind';
            febio_spec.Mesh.Nodes{1}.node.VAL = nodes.N;

            for i = 1 : numel(gpRowsProx)
                rowName = ['GP_ROW_' num2str(i)];
                febio_spec.Mesh.Elements{i}.elem.ATTR.id = elements.Sets.(gpRowsProx{i}).elements';
                ind = ismember(elements.E_ind, elements.Sets.(gpRowsProx{i}).elements);
                febio_spec.Mesh.Elements{i}.elem.VAL = elements.E(ind, :);
                febio_spec.Mesh.Elements{i}.ATTR.name = rowName; %Name of this part
                febio_spec.Mesh.Elements{i}.ATTR.type = 'hex8'; %Element type;
            end

            for i = 1 : numel(gpRowsDist)
                rowName = ['GP_DIST_ROW_' num2str(i)];
                febio_spec.Mesh.Elements{numel(gpRowsProx) + i}.elem.ATTR.id = elements.Sets.(gpRowsDist{i}).elements';
                ind = ismember(elements.E_ind, elements.Sets.(gpRowsDist{i}).elements);
                febio_spec.Mesh.Elements{numel(gpRowsProx) + i}.elem.VAL = elements.E(ind, :);
                febio_spec.Mesh.Elements{numel(gpRowsProx) + i}.ATTR.name = rowName; %Name of this part
                febio_spec.Mesh.Elements{numel(gpRowsProx) + i}.ATTR.type = 'hex8'; %Element type;
            end

            indexOffset = length(gpRows);

            febio_spec.Mesh.Elements{indexOffset + 1}.ATTR.name = 'TRAB_PROX'; %Name of this part
            febio_spec.Mesh.Elements{indexOffset + 1}.ATTR.type = 'hex8'; %Element type
            febio_spec.Mesh.Elements{indexOffset + 1}.elem.ATTR.id = elements.Sets.prox.elements'; %Element id's
            indFinal = ismember(elements.E_ind, elements.Sets.prox.elements);
            febio_spec.Mesh.Elements{indexOffset + 1}.elem.VAL = elements.E(indFinal, :); %The element matrix

            febio_spec.Mesh.Elements{indexOffset + 2}.ATTR.name = 'CORTICAL'; %Name of this part
            febio_spec.Mesh.Elements{indexOffset + 2}.ATTR.type = 'hex8'; %Element type
            febio_spec.Mesh.Elements{indexOffset + 2}.elem.ATTR.id = elements.Sets.cortical.elements'; %Element id's
            indFinal = ismember(elements.E_ind, elements.Sets.cortical.elements);
            febio_spec.Mesh.Elements{indexOffset + 2}.elem.VAL = elements.E(indFinal, :); %The element matrix

            febio_spec.Mesh.Elements{indexOffset + 3}.ATTR.name = 'MARROW'; %Name of this part
            febio_spec.Mesh.Elements{indexOffset + 3}.ATTR.type = 'hex8'; %Element type
            febio_spec.Mesh.Elements{indexOffset + 3}.elem.ATTR.id = elements.Sets.marrow.elements'; %Element id's
            indFinal = ismember(elements.E_ind, elements.Sets.marrow.elements);
            febio_spec.Mesh.Elements{indexOffset + 3}.elem.VAL = elements.E(indFinal, :); %The element matrix

            febio_spec.Mesh.Elements{indexOffset + 4}.ATTR.name = 'TRAB_DIST'; %Name of this part
            febio_spec.Mesh.Elements{indexOffset + 4}.ATTR.type = 'hex8'; %Element type
            febio_spec.Mesh.Elements{indexOffset + 4}.elem.ATTR.id = elements.Sets.distal.elements'; %Element id's
            indFinal = ismember(elements.E_ind, elements.Sets.distal.elements);
            febio_spec.Mesh.Elements{indexOffset + 4}.elem.VAL = elements.E(indFinal, :); %The element matrix

            for i = 1 : numel(gpRowsProx)
                febio_spec.MeshDomains.SolidDomain{i}.ATTR.name = ['GP_ROW_' num2str(i)];
                if distal == 0
                    if i <= Rows.nr_of_transition_rows
                        febio_spec.MeshDomains.SolidDomain{i}.ATTR.mat = ['PROX_TRANSITION_' num2str(i)];
                    elseif i <= rowToGrow
                        febio_spec.MeshDomains.SolidDomain{i}.ATTR.mat = 'GROWTHPLATE';
                    elseif i > rowToGrow + Rows.nr_of_transition_rows
                        febio_spec.MeshDomains.SolidDomain{i}.ATTR.mat = 'TRAB_PROX';
                    else
                        febio_spec.MeshDomains.SolidDomain{i}.ATTR.mat = ['PROX_TRANSITION_' num2str(Rows.nr_of_transition_rows +(rowToGrow - i) + 1)];
                    end
                else
                    febio_spec.MeshDomains.SolidDomain{i}.ATTR.mat = 'TRAB_PROX';
                end
            end

            %             for i = 1 : numel(gpRowsDist)
            %                 febio_spec.MeshDomains.SolidDomain{numel(gpRowsProx) + i}.ATTR.name = ['GP_DIST_ROW_' num2str(i)];
            %                 if distal == 1
            %                     if i <= Rows.nr_of_transition_rows
            %                         febio_spec.MeshDomains.SolidDomain{numel(gpRowsProx) + i}.ATTR.mat = ['DIST_TRANSITION_' num2str(i)];
            %                     elseif i + Rows.nr_of_transition_rows <= rowToGrow
            %                         febio_spec.MeshDomains.SolidDomain{numel(gpRowsProx) + i}.ATTR.mat = 'GROWTHPLATE';
            %                     elseif i > rowToGrow + Rows.nr_of_transition_rows
            %                         febio_spec.MeshDomains.SolidDomain{numel(gpRowsProx) + i}.ATTR.mat = 'TRAB_DIST';
            %                     else
            %                         febio_spec.MeshDomains.SolidDomain{numel(gpRowsProx) + i}.ATTR.mat = ['DIST_TRANSITION_' num2str(Rows.nr_of_transition_rows +(rowToGrow - i) + 1)];
            %                     end
            %                 else
            %                     febio_spec.MeshDomains.SolidDomain{numel(gpRowsProx) + i}.ATTR.mat = 'TRAB_DIST';
            %                 end
            %             end

            for i = numel(gpRowsDist) : -1 : 1
                febio_spec.MeshDomains.SolidDomain{numel(gpRowsProx) + i}.ATTR.name = ['GP_DIST_ROW_' num2str(i)];
                if distal == 1
                    if i > Rows.total_nr_of_rows - Rows.nr_of_transition_rows
                        febio_spec.MeshDomains.SolidDomain{numel(gpRowsProx) + i}.ATTR.mat = ['DIST_TRANSITION_' num2str(Rows.total_nr_of_rows - i + 1)];
                    elseif i >= rowToGrow
                        febio_spec.MeshDomains.SolidDomain{numel(gpRowsProx) + i}.ATTR.mat = 'GROWTHPLATE';
                    elseif i < rowToGrow - Rows.nr_of_transition_rows
                        febio_spec.MeshDomains.SolidDomain{numel(gpRowsProx) + i}.ATTR.mat = 'TRAB_DIST';
                    else
                        febio_spec.MeshDomains.SolidDomain{numel(gpRowsProx) + i}.ATTR.mat = ['DIST_TRANSITION_' num2str(i + Rows.nr_of_transition_rows + 1 - rowToGrow)];
                    end
                else
                    febio_spec.MeshDomains.SolidDomain{numel(gpRowsProx) + i}.ATTR.mat = 'TRAB_DIST';
                end
            end

            materialsList = materials(~contains(materials, 'GROWTHPLATE'));
            for i = 1 : numel(materialsList)
                febio_spec.MeshDomains.SolidDomain{i + numel(gpRowsProx) + numel(gpRowsDist)}.ATTR.name = materialsList{i};
                febio_spec.MeshDomains.SolidDomain{i + numel(gpRowsProx) + numel(gpRowsDist)}.ATTR.mat = materialsList{i};
            end

            if strcmp(clamping, 'default')
                if distal == 0
                    bc_fixed_ind = find(nodes.N(:, 2) < (min(nodes.N(:, 2)) + 15));
                else
                    D = pdist2(nodes.N, [0 0 0]);
                    load(fullfile(app.meshFolder, 'meshSettings.mat'), 'fem_head_radius')
                    %                 bc_fixed_ind = find(nodes.N(:, 2) > (min(nodes.N(:, 2)) + 100));
                    bc_fixed_ind = find(D < fem_head_radius * 1.2);
                end
            elseif strcmp(clamping, 'aboveShaft')
                elementsCortical = elements.Sets.cortical.elements;
                nodeIDsCortical = elements.E(elementsCortical);
                elementsProx = elements.Sets.prox.elements;
                nodeIDsProx = elements.E(elementsProx);
                intersectionNodes = intersect(nodeIDsCortical, nodeIDsProx)';
                nodeLocY = mean(nodes.N(intersectionNodes, 2));
                if distal == 0 % fix all nodes below this y value
                    bc_fixed_ind = find(nodes.N(:, 2) < nodeLocY + 5);
                else % fix all nodes above this y value
                    bc_fixed_ind = find(nodes.N(:, 2) > nodeLocY - 5);
                end
            elseif strcmp(clamping, 'belowShaft')
                elementsCortical = elements.Sets.cortical.elements;
                nodeIDsCortical = elements.E(elementsCortical);
                elementsDistal = elements.Sets.distal.elements;
                nodeIDsDistal = elements.E(elementsDistal);
                intersectionNodes = intersect(nodeIDsCortical, nodeIDsDistal)';
                nodeLocY = mean(nodes.N(intersectionNodes, 2));
                if distal == 0 % fix all nodes below this y value
                    bc_fixed_ind = find(nodes.N(:, 2) < nodeLocY + 5);
                else % fix all nodes above this y value
                    bc_fixed_ind = find(nodes.N(:, 2) > nodeLocY - 5);
                end
            end
            bc_fixed_nodes = nodes.N_ind(bc_fixed_ind);

            febio_spec.Mesh.NodeSet{1}.ATTR.name = 'bc_fixed';
            febio_spec.Mesh.NodeSet{1}.node.ATTR.id = bc_fixed_ind;
            nodes.Sets.fixedDisplacement.nodes = bc_fixed_nodes;
            febio_spec.Boundary.bc{1}.ATTR.type = 'fix';
            febio_spec.Boundary.bc{1}.ATTR.node_set = 'bc_fixed';
            febio_spec.Boundary.bc{1}.dofs = 'x,y,z';


            debug_plots = 0;

            attachmentsInfo = struct;

            for i = 1 : numel(muscleNames)
                for j = 1 : size(loadIndizes, 2)

                    if i == 1
                        febio_spec.Step.step{j}.Control = stepStruct.Control;
                        febio_spec.Step.step{j}.ATTR.id = j;
                        febio_spec.Step.step{j}.ATTR.name = ['loadInstance_' num2str(j)];
                    end

                    clearvars 'minDiffNodeIndex'
                    attachmentOpenSim = 1000 * [attachmentsOnFemur.([muscleNames{i} '_X_on_femur_' side])(loadIndizes(j)) attachmentsOnFemur.([muscleNames{i} '_Y_on_femur_' side])(loadIndizes(j)) attachmentsOnFemur.([muscleNames{i} '_Z_on_femur_' side])(loadIndizes(j))];
                    attachmentOpenSimArr(i,j, :) = attachmentOpenSim;
                    if j > 1
                        for u = j - 1  : -1 : 1
                            if isequal(squeeze(attachmentOpenSimArr(i, u, :))', attachmentOpenSim)
                                % attachment is same as in load instance u --> take the same nodes
                                minDiffNodeIndex = nodeIDsOfAttachment(i, u);
                            end
                        end
                    end

                    if exist('minDiffNodeIndex', 'var') == 0
                        % new attachment!
                        % find closest nodes in Opensim femur STL and mean the
                        % surface normals
                        diffLocation = OS_stlStruct.solidVertices{1, 1} - attachmentOpenSim;
                        abs_diff = sqrt( diffLocation(:,1).^2 + diffLocation(:,2).^2 + diffLocation(:,3).^2);
                        [min_diff_attachment_to_OS, minDiffNodeIndex] = min(abs_diff);


                        diffLocation = OS_stlStruct.solidVertices{1, 1} - OS_stlStruct.solidVertices{1, 1}(minDiffNodeIndex, :);
                        abs_diff = sqrt( diffLocation(:,1).^2 + diffLocation(:,2).^2 + diffLocation(:,3).^2);

                        [sortedDist, sortInd] = sort(abs_diff);
                        nodeIDsOfThisLocation = sortInd(sortedDist ==0);

                        surfacesIncludingNodes = [];
                        for k = 1 : length(nodeIDsOfThisLocation)
                            [surfacesIncludingNodes(end + 1), ~] = find(OS_stlStruct.solidFaces{1, 1} == nodeIDsOfThisLocation(k));
                        end
                        meanSurroundingSurfacesNormalVec = OS_stlStruct.solidNormals{1, 1}(surfacesIncludingNodes, :);
                        meanSurroundingSurfacesNormalVec = mean(meanSurroundingSurfacesNormalVec, 1);
                        meanSurroundingSurfacesNormalVec = meanSurroundingSurfacesNormalVec / norm(meanSurroundingSurfacesNormalVec);

                        if debug_plots
                            f = figure('units','normalized','outerposition',[0 0 1 1]);
                            X= OS_stlStruct.solidVertices{1, 1};
                            plotMesh;
                            hold on;
                            plot3(attachmentOpenSim(1), attachmentOpenSim(2), attachmentOpenSim(3), 'rx', 'MarkerSize', 10, 'LineWidth', 3)
                            plot3(OS_stlStruct.solidVertices{1, 1}(minDiffNodeIndex, 1), OS_stlStruct.solidVertices{1, 1}(minDiffNodeIndex, 2), OS_stlStruct.solidVertices{1, 1}(minDiffNodeIndex, 3), 'mx', 'MarkerSize', 10, 'LineWidth', 3)
                            quiver3(OS_stlStruct.solidVertices{1, 1}(minDiffNodeIndex, 1), OS_stlStruct.solidVertices{1, 1}(minDiffNodeIndex, 2), OS_stlStruct.solidVertices{1, 1}(minDiffNodeIndex, 3), meanSurroundingSurfacesNormalVec(1), meanSurroundingSurfacesNormalVec(2), meanSurroundingSurfacesNormalVec(3), 100, 'm', 'LineWidth', 3)
                            X= Participant_stlStruct.solidVertices{1, 1}(1 : 100 : end, :);
                            plotMesh;
                            xlabel('[mm]'); ylabel('[mm]'); zlabel('[mm]');
                        end

                        % approach by surface normals
                        for u = 1 : size(Participant_stlStruct.solidNormals{1, 1}, 1)
                            anglesBetweenSurfaceNormals(u) = atan2d(vecnorm(cross(Participant_stlStruct.solidNormals{1, 1}(u, :),meanSurroundingSurfacesNormalVec)),dot(Participant_stlStruct.solidNormals{1, 1}(u, :),meanSurroundingSurfacesNormalVec)); % Angle in degrees
                        end

                        [sortedAngles, sortedInd] = sort(anglesBetweenSurfaceNormals);
                        maxAngleThreshold = 90; % degrees
                        amountOfNodesToCheck = find(sortedAngles > maxAngleThreshold, 1);

                        distNodeToAttachment = [];
                        for u = 1 : amountOfNodesToCheck
                            nodesOnSurface = Participant_stlStruct.solidFaces{1, 1}(sortedInd(u), :);
                            nodeLocation = Participant_stlStruct.solidVertices{1, 1}(nodesOnSurface(1), :);
                            distanceToAttachment = nodeLocation - attachmentOpenSim;
                            distNodeToAttachment(u) = sqrt( distanceToAttachment(:,1).^2 + distanceToAttachment(:,2).^2 + distanceToAttachment(:,3).^2);
                        end

                        weightAngle = 1;
                        weightDistance = 4;
                        weighted = sortedAngles(1: amountOfNodesToCheck) * weightAngle + distNodeToAttachment * weightDistance;
                        [minWeight, index] = min(weighted);
                        nodesOnSurface = Participant_stlStruct.solidFaces{1, 1}(sortedInd(index), :);
                        nodeLocationInParticipantSTL = Participant_stlStruct.solidVertices{1, 1}(nodesOnSurface(1), :);
                        if debug_plots
                            plot3(nodeLocationInParticipantSTL(1), nodeLocationInParticipantSTL(2), nodeLocationInParticipantSTL(3), 'kx', 'MarkerSize', 20, 'LineWidth', 4);
                            quiver3(nodeLocationInParticipantSTL(1), nodeLocationInParticipantSTL(2), nodeLocationInParticipantSTL(3), Participant_stlStruct.solidNormals{1, 1}(sortedInd(index), 1), Participant_stlStruct.solidNormals{1, 1}(sortedInd(index), 2), Participant_stlStruct.solidNormals{1, 1}(sortedInd(index), 3), 100, 'k', 'LineWidth', 3);
                            legend({'OpenSim STL', 'Attachment from MSK simulation', 'Closest point in OpenSim STL', 'Surface normal at this location', 'Participant STL', 'Best attachment in Participant STL', 'Surface normal at this location'});
                            if strcmp(side, 'r')
                                view(-125, -20);
                            end
                            xlabel('[mm]'); ylabel('[mm]'); zlabel('[mm]');
                            saveas(f, fullfile(currIterationFolder, [muscleNames{i} '_' num2str(loadIndizes(j)) '.jpg']));
                            savefig(f, fullfile(currIterationFolder, [muscleNames{i} '_' num2str(loadIndizes(j)) '.fig']))
                            close(f);
                        end

                        % now find closest node in hex mesh to this position
                        % --> since geometry is more or less equal, node should
                        % be on the surface
                        diffLocation = nodes.N - nodeLocationInParticipantSTL;
                        abs_diff = sqrt( diffLocation(:,1).^2 + diffLocation(:,2).^2 + diffLocation(:,3).^2);
                        [~, minDiffNodeIndex] = min(abs_diff);
                    end

                    nodeIDsOfAttachment(i,j) = minDiffNodeIndex;

                    attachmentsInfo.(['loadInstance_' num2str(j)]).(muscleNames{i}).anglesBetweenSurfaceNormals = sortedAngles(index);
                    attachmentsInfo.(['loadInstance_' num2str(j)]).(muscleNames{i}).distanceBetweenOpensimAndSTL = distNodeToAttachment(index);
                    nodeLocationInMesh = nodes.N(minDiffNodeIndex, :);
                    diffLocation = nodeLocationInMesh - attachmentOpenSim;
                    abs_diff = sqrt( diffLocation(:,1).^2 + diffLocation(:,2).^2 + diffLocation(:,3).^2);
                    attachmentsInfo.(['loadInstance_' num2str(j)]).(muscleNames{i}).distanceBetweenOpensimAndMesh = abs_diff;


                    febio_spec.Mesh.NodeSet{(j-1) * size(muscleNames,1) + i + 1}.ATTR.name = [muscleNames{i} '_loadInstance_' num2str(j)];
                    febio_spec.Mesh.NodeSet{(j-1) * size(muscleNames,1) + i + 1}.node.ATTR.id = minDiffNodeIndex;

                    febio_spec.Step.step{j}.Loads.nodal_load{i*3 - 2}.ATTR.name = [muscleNames{i} '_loadInstance_' num2str(j) '_X'];
                    febio_spec.Step.step{j}.Loads.nodal_load{i*3 - 2}.ATTR.type = 'nodal_load';
                    febio_spec.Step.step{j}.Loads.nodal_load{i*3 - 2}.ATTR.node_set = [muscleNames{i} '_loadInstance_' num2str(j)];
                    febio_spec.Step.step{j}.Loads.nodal_load{i*3 - 2}.dof = 'x';
                    febio_spec.Step.step{j}.Loads.nodal_load{i*3 - 2}.scale.ATTR.lc = 1;
                    % multiply force by unit vector for the direction
                    febio_spec.Step.step{j}.Loads.nodal_load{i*3 - 2}.scale.VAL = muscleForces.(muscleNames{i})(loadIndizes(j)) * directionsOnFemur.([muscleNames{i} '_X_on_femur_' side])(loadIndizes(j)) * Loading.factor;

                    febio_spec.Step.step{j}.Loads.nodal_load{i*3 - 1}.ATTR.name = [muscleNames{i} '_loadInstance_' num2str(j) '_Y'];
                    febio_spec.Step.step{j}.Loads.nodal_load{i*3 - 1}.ATTR.type = 'nodal_load';
                    febio_spec.Step.step{j}.Loads.nodal_load{i*3 - 1}.ATTR.node_set = [muscleNames{i} '_loadInstance_' num2str(j)];
                    febio_spec.Step.step{j}.Loads.nodal_load{i*3 - 1}.dof = 'y';
                    febio_spec.Step.step{j}.Loads.nodal_load{i*3 - 1}.scale.ATTR.lc = 1;
                    % multiply force by unit vector for the direction
                    febio_spec.Step.step{j}.Loads.nodal_load{i*3 - 1}.scale.VAL = muscleForces.(muscleNames{i})(loadIndizes(j)) * directionsOnFemur.([muscleNames{i} '_Y_on_femur_' side])(loadIndizes(j)) * Loading.factor;

                    febio_spec.Step.step{j}.Loads.nodal_load{i*3}.ATTR.name = [muscleNames{i} '_loadInstance_' num2str(j) '_Z'];
                    febio_spec.Step.step{j}.Loads.nodal_load{i*3}.ATTR.type = 'nodal_load';
                    febio_spec.Step.step{j}.Loads.nodal_load{i*3}.ATTR.node_set = [muscleNames{i} '_loadInstance_' num2str(j)];
                    febio_spec.Step.step{j}.Loads.nodal_load{i*3}.dof = 'z';
                    febio_spec.Step.step{j}.Loads.nodal_load{i*3}.scale.ATTR.lc = 1;
                    % multiply force by unit vector for the direction
                    febio_spec.Step.step{j}.Loads.nodal_load{i*3}.scale.VAL = muscleForces.(muscleNames{i})(loadIndizes(j)) * directionsOnFemur.([muscleNames{i} '_Z_on_femur_' side])(loadIndizes(j)) * Loading.factor;
                end
            end

            if distal == 0
                HJCFfieldName = ['hip_' side '_on_femur_' side '_in_femur_' side '_f'];

                for j = 1 : size(loadIndizes, 2)
                    HJCF = [jrl.([HJCFfieldName 'x'])(loadIndizes(j)) jrl.([HJCFfieldName 'y'])(loadIndizes(j)) jrl.([HJCFfieldName 'z'])(loadIndizes(j))];
                    diffLocation = nodes.N - (HJCF * (-1)); % HJCF *(-1) is also the direction --> we want the closest node in this direction to apply the load on these nodes
                    abs_diff = sqrt( diffLocation(:,1).^2 + diffLocation(:,2).^2 + diffLocation(:,3).^2);
                    [~, minDiffNodeIndizes] = mink(abs_diff, nrNodesWhereHJCFisApplied);

                    febio_spec.Mesh.NodeSet{end + 1}.ATTR.name = ['HJCF_loadInstance_' num2str(j)];
                    febio_spec.Mesh.NodeSet{end}.node.ATTR.id = minDiffNodeIndizes;

                    if strcmp(Loading.Apply, 'all') || strcmp(Loading.Apply, 'x')
                        febio_spec.Step.step{j}.Loads.nodal_load{end+1}.ATTR.name = ['HJCF_loadInstance_' num2str(j) '_X'];
                        febio_spec.Step.step{j}.Loads.nodal_load{end}.ATTR.type = 'nodal_load';
                        febio_spec.Step.step{j}.Loads.nodal_load{end}.ATTR.node_set = ['HJCF_loadInstance_' num2str(j)];
                        febio_spec.Step.step{j}.Loads.nodal_load{end}.dof = 'x';
                        febio_spec.Step.step{j}.Loads.nodal_load{end}.scale.ATTR.lc = 1;
                        febio_spec.Step.step{j}.Loads.nodal_load{end}.scale.VAL = HJCF(1) / nrNodesWhereHJCFisApplied * Loading.factor;
                    end

                    if strcmp(Loading.Apply, 'all') || strcmp(Loading.Apply, 'y')
                        febio_spec.Step.step{j}.Loads.nodal_load{end + 1}.ATTR.name = ['HJCF_loadInstance_' num2str(j) '_Y'];
                        febio_spec.Step.step{j}.Loads.nodal_load{end}.ATTR.type = 'nodal_load';
                        febio_spec.Step.step{j}.Loads.nodal_load{end}.ATTR.node_set = ['HJCF_loadInstance_' num2str(j)];
                        febio_spec.Step.step{j}.Loads.nodal_load{end}.dof = 'y';
                        febio_spec.Step.step{j}.Loads.nodal_load{end}.scale.ATTR.lc = 1;
                        febio_spec.Step.step{j}.Loads.nodal_load{end}.scale.VAL = HJCF(2) / nrNodesWhereHJCFisApplied * Loading.factor;
                    end

                    if strcmp(Loading.Apply, 'all') || strcmp(Loading.Apply, 'z')
                        febio_spec.Step.step{j}.Loads.nodal_load{end + 1}.ATTR.name = ['HJCF_loadInstance_' num2str(j) '_Z'];
                        febio_spec.Step.step{j}.Loads.nodal_load{end}.ATTR.type = 'nodal_load';
                        febio_spec.Step.step{j}.Loads.nodal_load{end}.ATTR.node_set = ['HJCF_loadInstance_' num2str(j)];
                        febio_spec.Step.step{j}.Loads.nodal_load{end}.dof = 'z';
                        febio_spec.Step.step{j}.Loads.nodal_load{end}.scale.ATTR.lc = 1;
                        febio_spec.Step.step{j}.Loads.nodal_load{end}.scale.VAL = HJCF(3) / nrNodesWhereHJCFisApplied * Loading.factor;
                    end
                end
            else
                medJCFFieldName = ['med_cond_joint_' side '_on_med_cond_' side '_in_femur_' side '_f'];
                medJCFApplicationPointFieldName = ['med_cond_joint_' side '_on_med_cond_' side '_in_femur_' side '_p'];
                latJCFFieldName = ['lat_cond_joint_' side '_on_lat_cond_' side '_in_femur_' side '_f'];
                latJCFApplicationPointFieldName = ['lat_cond_joint_' side '_on_lat_cond_' side '_in_femur_' side '_p'];
                PCFFieldName = ['fem_pat_' side '_on_patella_' side '_in_femur_' side '_f'];
                PCFApplicationPointFieldName = ['fem_pat_' side '_on_patella_' side '_in_femur_' side '_p'];


                for j = 1 : size(loadIndizes, 2)
                    medJCF = [jrl.([medJCFFieldName 'x'])(loadIndizes(j)) jrl.([medJCFFieldName 'y'])(loadIndizes(j)) jrl.([medJCFFieldName 'z'])(loadIndizes(j))];
                    medJCFApplicationPoint = [jrl.([medJCFApplicationPointFieldName 'x'])(loadIndizes(j)) jrl.([medJCFApplicationPointFieldName 'y'])(loadIndizes(j)) jrl.([medJCFApplicationPointFieldName 'z'])(loadIndizes(j))] * 1000;
                    medJCFUnitDir = medJCF / norm(medJCF);
                    medApplicationPointTwoCentimeterOutside = medJCFApplicationPoint + medJCFUnitDir * 2;
                    D = pdist2(medApplicationPointTwoCentimeterOutside, nodes.N);
                    [~, minDiffNodeIndizes] = mink(D, nrNodesWhereHJCFisApplied);
                    %                     diffLocation = (nodes.N - medJCFApplicationPoint) - (medJCF); % HJCF *(-1) is also the direction --> we want the closest node in this direction to apply the load on these nodes
                    %                     abs_diff = sqrt( diffLocation(:,1).^2 + diffLocation(:,2).^2 + diffLocation(:,3).^2);
                    %                     [~, minDiffNodeIndizes] = mink(abs_diff, nrNodesWhereHJCFisApplied);

                    febio_spec.Mesh.NodeSet{end + 1}.ATTR.name = ['medJCF_loadInstance_' num2str(j)];
                    febio_spec.Mesh.NodeSet{end}.node.ATTR.id = minDiffNodeIndizes';

                    if strcmp(Loading.Apply, 'all') || strcmp(Loading.Apply, 'x')
                        febio_spec.Step.step{j}.Loads.nodal_load{end+1}.ATTR.name = ['medJCF_loadInstance_' num2str(j) '_X'];
                        febio_spec.Step.step{j}.Loads.nodal_load{end}.ATTR.type = 'nodal_load';
                        febio_spec.Step.step{j}.Loads.nodal_load{end}.ATTR.node_set = ['medJCF_loadInstance_' num2str(j)];
                        febio_spec.Step.step{j}.Loads.nodal_load{end}.dof = 'x';
                        febio_spec.Step.step{j}.Loads.nodal_load{end}.scale.ATTR.lc = 1;
                        febio_spec.Step.step{j}.Loads.nodal_load{end}.scale.VAL = medJCF(1) * (-1) / nrNodesWhereHJCFisApplied * Loading.factor;
                    end

                    if strcmp(Loading.Apply, 'all') || strcmp(Loading.Apply, 'y')
                        febio_spec.Step.step{j}.Loads.nodal_load{end + 1}.ATTR.name = ['medJCF_loadInstance_' num2str(j) '_Y'];
                        febio_spec.Step.step{j}.Loads.nodal_load{end}.ATTR.type = 'nodal_load';
                        febio_spec.Step.step{j}.Loads.nodal_load{end}.ATTR.node_set = ['medJCF_loadInstance_' num2str(j)];
                        febio_spec.Step.step{j}.Loads.nodal_load{end}.dof = 'y';
                        febio_spec.Step.step{j}.Loads.nodal_load{end}.scale.ATTR.lc = 1;
                        febio_spec.Step.step{j}.Loads.nodal_load{end}.scale.VAL = medJCF(2) * (-1) / nrNodesWhereHJCFisApplied * Loading.factor;
                    end

                    if strcmp(Loading.Apply, 'all') || strcmp(Loading.Apply, 'z')
                        febio_spec.Step.step{j}.Loads.nodal_load{end + 1}.ATTR.name = ['medJCF_loadInstance_' num2str(j) '_Z'];
                        febio_spec.Step.step{j}.Loads.nodal_load{end}.ATTR.type = 'nodal_load';
                        febio_spec.Step.step{j}.Loads.nodal_load{end}.ATTR.node_set = ['medJCF_loadInstance_' num2str(j)];
                        febio_spec.Step.step{j}.Loads.nodal_load{end}.dof = 'z';
                        febio_spec.Step.step{j}.Loads.nodal_load{end}.scale.ATTR.lc = 1;
                        febio_spec.Step.step{j}.Loads.nodal_load{end}.scale.VAL = medJCF(3) * (-1) / nrNodesWhereHJCFisApplied * Loading.factor;
                    end

                    latJCF = [jrl.([latJCFFieldName 'x'])(loadIndizes(j)) jrl.([latJCFFieldName 'y'])(loadIndizes(j)) jrl.([latJCFFieldName 'z'])(loadIndizes(j))];
                    latJCFApplicationPoint = [jrl.([latJCFApplicationPointFieldName 'x'])(loadIndizes(j)) jrl.([latJCFApplicationPointFieldName 'y'])(loadIndizes(j)) jrl.([latJCFApplicationPointFieldName 'z'])(loadIndizes(j))] * 1000;

                    latJCFUnitDir = latJCF / norm(latJCF);
                    latApplicationPointTwoCentimeterOutside = latJCFApplicationPoint + latJCFUnitDir * 2;
                    D = pdist2(latApplicationPointTwoCentimeterOutside, nodes.N);
                    [~, minDiffNodeIndizes] = mink(D, nrNodesWhereHJCFisApplied);
                    %                     diffLocation = (nodes.N - latJCFApplicationPoint) - (latJCF); % HJCF *(-1) is also the direction --> we want the closest node in this direction to apply the load on these nodes
                    %                     abs_diff = sqrt( diffLocation(:,1).^2 + diffLocation(:,2).^2 + diffLocation(:,3).^2);
                    %                     [~, minDiffNodeIndizes] = mink(abs_diff, nrNodesWhereHJCFisApplied);

                    febio_spec.Mesh.NodeSet{end + 1}.ATTR.name = ['latJCF_loadInstance_' num2str(j)];
                    febio_spec.Mesh.NodeSet{end}.node.ATTR.id = minDiffNodeIndizes';

                    if strcmp(Loading.Apply, 'all') || strcmp(Loading.Apply, 'x')
                        febio_spec.Step.step{j}.Loads.nodal_load{end+1}.ATTR.name = ['latJCF_loadInstance_' num2str(j) '_X'];
                        febio_spec.Step.step{j}.Loads.nodal_load{end}.ATTR.type = 'nodal_load';
                        febio_spec.Step.step{j}.Loads.nodal_load{end}.ATTR.node_set = ['latJCF_loadInstance_' num2str(j)];
                        febio_spec.Step.step{j}.Loads.nodal_load{end}.dof = 'x';
                        febio_spec.Step.step{j}.Loads.nodal_load{end}.scale.ATTR.lc = 1;
                        febio_spec.Step.step{j}.Loads.nodal_load{end}.scale.VAL = latJCF(1) * (-1) / nrNodesWhereHJCFisApplied * Loading.factor;
                    end

                    if strcmp(Loading.Apply, 'all') || strcmp(Loading.Apply, 'y')
                        febio_spec.Step.step{j}.Loads.nodal_load{end + 1}.ATTR.name = ['latJCF_loadInstance_' num2str(j) '_Y'];
                        febio_spec.Step.step{j}.Loads.nodal_load{end}.ATTR.type = 'nodal_load';
                        febio_spec.Step.step{j}.Loads.nodal_load{end}.ATTR.node_set = ['latJCF_loadInstance_' num2str(j)];
                        febio_spec.Step.step{j}.Loads.nodal_load{end}.dof = 'y';
                        febio_spec.Step.step{j}.Loads.nodal_load{end}.scale.ATTR.lc = 1;
                        febio_spec.Step.step{j}.Loads.nodal_load{end}.scale.VAL = latJCF(2) * (-1) / nrNodesWhereHJCFisApplied * Loading.factor;
                    end

                    if strcmp(Loading.Apply, 'all') || strcmp(Loading.Apply, 'z')
                        febio_spec.Step.step{j}.Loads.nodal_load{end + 1}.ATTR.name = ['latJCF_loadInstance_' num2str(j) '_Z'];
                        febio_spec.Step.step{j}.Loads.nodal_load{end}.ATTR.type = 'nodal_load';
                        febio_spec.Step.step{j}.Loads.nodal_load{end}.ATTR.node_set = ['latJCF_loadInstance_' num2str(j)];
                        febio_spec.Step.step{j}.Loads.nodal_load{end}.dof = 'z';
                        febio_spec.Step.step{j}.Loads.nodal_load{end}.scale.ATTR.lc = 1;
                        febio_spec.Step.step{j}.Loads.nodal_load{end}.scale.VAL = latJCF(3) * (-1) / nrNodesWhereHJCFisApplied * Loading.factor;
                    end


                    PCF = [jrl.([PCFFieldName 'x'])(loadIndizes(j)) jrl.([PCFFieldName 'y'])(loadIndizes(j)) jrl.([PCFFieldName 'z'])(loadIndizes(j))];
                    PCFApplicationPoint = [jrl.([PCFApplicationPointFieldName 'x'])(loadIndizes(j)) jrl.([PCFApplicationPointFieldName 'y'])(loadIndizes(j)) jrl.([PCFApplicationPointFieldName 'z'])(loadIndizes(j))] * 1000;
                    PCFUnitDir = PCF / norm(PCF);
                    PCFApplicationPointTwoCentimeterOutside = PCFApplicationPoint + PCFUnitDir * 2;
                    D = pdist2(PCFApplicationPointTwoCentimeterOutside, nodes.N);
                    [~, minDiffNodeIndizes] = mink(D, nrNodesWhereHJCFisApplied);
                    %                     diffLocation = (nodes.N - medJCFApplicationPoint) - (medJCF); % HJCF *(-1) is also the direction --> we want the closest node in this direction to apply the load on these nodes
                    %                     abs_diff = sqrt( diffLocation(:,1).^2 + diffLocation(:,2).^2 + diffLocation(:,3).^2);
                    %                     [~, minDiffNodeIndizes] = mink(abs_diff, nrNodesWhereHJCFisApplied);

                    febio_spec.Mesh.NodeSet{end + 1}.ATTR.name = ['PCF_loadInstance_' num2str(j)];
                    febio_spec.Mesh.NodeSet{end}.node.ATTR.id = minDiffNodeIndizes';

                    if strcmp(Loading.Apply, 'all') || strcmp(Loading.Apply, 'x')
                        febio_spec.Step.step{j}.Loads.nodal_load{end+1}.ATTR.name = ['PCF_loadInstance_' num2str(j) '_X'];
                        febio_spec.Step.step{j}.Loads.nodal_load{end}.ATTR.type = 'nodal_load';
                        febio_spec.Step.step{j}.Loads.nodal_load{end}.ATTR.node_set = ['PCF_loadInstance_' num2str(j)];
                        febio_spec.Step.step{j}.Loads.nodal_load{end}.dof = 'x';
                        febio_spec.Step.step{j}.Loads.nodal_load{end}.scale.ATTR.lc = 1;
                        febio_spec.Step.step{j}.Loads.nodal_load{end}.scale.VAL = PCF(1) * (-1) / nrNodesWhereHJCFisApplied * Loading.factor;
                    end

                    if strcmp(Loading.Apply, 'all') || strcmp(Loading.Apply, 'y')
                        febio_spec.Step.step{j}.Loads.nodal_load{end + 1}.ATTR.name = ['PCF_loadInstance_' num2str(j) '_Y'];
                        febio_spec.Step.step{j}.Loads.nodal_load{end}.ATTR.type = 'nodal_load';
                        febio_spec.Step.step{j}.Loads.nodal_load{end}.ATTR.node_set = ['PCF_loadInstance_' num2str(j)];
                        febio_spec.Step.step{j}.Loads.nodal_load{end}.dof = 'y';
                        febio_spec.Step.step{j}.Loads.nodal_load{end}.scale.ATTR.lc = 1;
                        febio_spec.Step.step{j}.Loads.nodal_load{end}.scale.VAL = PCF(2) * (-1) / nrNodesWhereHJCFisApplied * Loading.factor;
                    end

                    if strcmp(Loading.Apply, 'all') || strcmp(Loading.Apply, 'z')
                        febio_spec.Step.step{j}.Loads.nodal_load{end + 1}.ATTR.name = ['PCF_loadInstance_' num2str(j) '_Z'];
                        febio_spec.Step.step{j}.Loads.nodal_load{end}.ATTR.type = 'nodal_load';
                        febio_spec.Step.step{j}.Loads.nodal_load{end}.ATTR.node_set = ['PCF_loadInstance_' num2str(j)];
                        febio_spec.Step.step{j}.Loads.nodal_load{end}.dof = 'z';
                        febio_spec.Step.step{j}.Loads.nodal_load{end}.scale.ATTR.lc = 1;
                        febio_spec.Step.step{j}.Loads.nodal_load{end}.scale.VAL = PCF(3) * (-1) / nrNodesWhereHJCFisApplied * Loading.factor;
                    end
                end
            end

            febio_spec.Output.logfile.ATTR.file = 'FE_stresses.log';

            febio_spec.Output.logfile.node_data{1}.ATTR.file = 'nodal_displacement.txt';
            febio_spec.Output.logfile.node_data{1}.ATTR.data = 'ux;uy;uz';
            febio_spec.Output.logfile.node_data{1}.ATTR.delim = ',';

            febio_spec.Output.logfile.element_data{1}.ATTR.file = 'element_stresses.txt';
            febio_spec.Output.logfile.element_data{1}.ATTR.data = 's1;s2;s3';
            febio_spec.Output.logfile.element_data{1}.ATTR.delim = ',';

            febio_spec.Output.logfile.element_data{2}.ATTR.file = 'cauchy_stress_components.txt';
            febio_spec.Output.logfile.element_data{2}.ATTR.data = 'sx;sy;sz;sxy;syz;sxz';
            febio_spec.Output.logfile.element_data{2}.ATTR.delim = ',';

            febioFileName = fullfile(currIterationFolder, 'FE_stresses.feb');
            febioStruct2xml(febio_spec, febioFileName);
            save(fullfile(currIterationFolder, 'FE_stresses.mat'), 'febio_spec', 'attachmentsInfo');

            fid = fopen(fullfile(currIterationFolder, 'muscleAttachments.csv'), 'w');

            fprintf(fid, 'muscle name;load instance;distance to STL [mm];distance to Mesh [mm];angle difference of surface normals of Opensim and Participant STL [°]\n');

            loadinstances = fieldnames(attachmentsInfo);
            distanceSTL = [];
            distanceMesh = [];
            angleDiff = [];

            muscles = fieldnames(attachmentsInfo.(loadinstances{1}));
            for j = 1 : numel(muscles)
                for i = 1 : numel(loadinstances)
                    distanceSTL(i, j) = attachmentsInfo.(loadinstances{i}).(muscles{j}).distanceBetweenOpensimAndSTL;
                    distanceMesh(i, j) = attachmentsInfo.(loadinstances{i}).(muscles{j}).distanceBetweenOpensimAndMesh;
                    angleDiff(i, j) = attachmentsInfo.(loadinstances{i}).(muscles{j}).anglesBetweenSurfaceNormals;
                    fprintf(fid, [muscles{j} ';' loadinstances{i} ';' num2str(distanceSTL(i, j)) ';' num2str(distanceMesh(i, j)) ';' num2str(angleDiff(i, j)) '\n']);
                end
            end

            fclose(fid);
            fid = fopen(fullfile(currIterationFolder, 'muscleAttachmentSummary.txt'), 'w');

            [M,I] = max(angleDiff(:));
            muscle = floor((I-1)/numel(loadinstances)) + 1;
            loadinstance = mod(I,numel(loadinstances));
            if loadinstance == 0
                loadinstance = numel(loadinstances);
            end
            fprintf(fid, ['Max surface angle diff = ' num2str(M) '° for ' muscles{muscle} ' at load instance ' num2str(loadinstance) '\n']);
            fprintf(fid, ['Distance between OpenSim and Mesh for this muscle = ' num2str(distanceMesh(loadinstance, muscle)) 'mm \n\n']);
            disp(newline);
            [M,I] = max(distanceSTL(:));
            muscle = floor(I/numel(loadinstances)) + 1;
            loadinstance = mod(I,numel(loadinstances));
            if loadinstance == 0
                loadinstance = numel(loadinstances);
            end
            fprintf(fid, ['Max distance from OpenSim to participant STL = ' num2str(M) 'mm for ' muscles{muscle} ' at load instance ' num2str(loadinstance) '\n']);
            fprintf(fid, ['Surface angle difference between OpenSim and participant STL for this muscle = ' num2str(angleDiff(loadinstance, muscle)) '° \n\n']);
            disp(newline);
            [M,I] = max(distanceMesh(:));
            muscle = floor(I/numel(loadinstances)) + 1;
            loadinstance = mod(I,numel(loadinstances));
            if loadinstance == 0
                loadinstance = numel(loadinstances);
            end
            fprintf(fid, ['Max distance from OpenSim to participant mesh = ' num2str(M) 'mm for ' muscles{muscle} ' at load instance ' num2str(loadinstance) '\n']);
            fprintf(fid, ['Surface angle difference between OpenSim and Mesh for this muscle = ' num2str(angleDiff(loadinstance, muscle)) '° \n']);

            fclose(fid);
        end

        function    lag = runFEBio(~, febioFileName)
            febioAnalysis.run_filename = febioFileName; %The input file name
            febioAnalysis.run_logname = strrep(febioFileName, '.feb', '.log'); %The name for the log file
            febioAnalysis.disp_on = 0; %Display information on the command window
            febioAnalysis.runMode = 'internal';

            [runFlag] = runMonitorFEBio(febioAnalysis);
        end

        function [febioFileName] = createFEBio_GrowthModel(app, nodes, elements, rowToGrow, stresses_data, analysisFileName, currIterationFolder, distal, Rows)

            load(fullfile(currIterationFolder, 'FE_stresses.mat'), 'febio_spec');
            load(analysisFileName, 'Growth');


            febio_spec.Mesh = rmfield(febio_spec.Mesh, 'NodeSet');
            stepStruct.Control = febio_spec.Step.step{1}.Control;
            febio_spec.Step = [];
            febio_spec.Step.step{1}.Control = stepStruct.Control;

            if distal == 0
                elementIDs_rowToGrow = elements.Sets.(['row_' num2str(rowToGrow)]).elements';
                elementIDs_rowAboveRowToGrow = elements.Sets.(['row_' num2str(rowToGrow-1)]).elements';
            else
                elementIDs_rowToGrow = elements.Sets.(['dist_row_' num2str(rowToGrow)]).elements';
                elementIDs_rowAboveRowToGrow = elements.Sets.(['dist_row_' num2str(rowToGrow+1)]).elements';
            end
            nodeIDsOfRowToGrow = elements.E(elementIDs_rowToGrow, :);
            nodeIDsOfRowAboveRowToGrow = elements.E(elementIDs_rowAboveRowToGrow, :);

            [nodeIDsToApplyForce, ~] = intersect(nodeIDsOfRowToGrow, nodeIDsOfRowAboveRowToGrow);
            uniqueNodeIDsOfRowToGrow = unique(nodeIDsOfRowToGrow);
            nodeIDsToFix = uniqueNodeIDsOfRowToGrow(~ismember(uniqueNodeIDsOfRowToGrow, nodeIDsToApplyForce));

            febio_spec.Mesh.NodeSet{1}.ATTR.name = 'bc_fixed';
            febio_spec.Mesh.NodeSet{1}.node.ATTR.id = nodeIDsToFix;
            febio_spec.Boundary.bc{1}.ATTR.type = 'fix';
            febio_spec.Boundary.bc{1}.ATTR.node_set = 'bc_fixed';
            febio_spec.Boundary.bc{1}.dofs = 'x,y,z';

            febio_spec.Material = rmfield(febio_spec.Material, 'material');

            materialType = 'isotropic elastic';
            febio_spec.Material.material{1}.ATTR.name = 'GROWTHPLATE';
            febio_spec.Material.material{1}.ATTR.type = materialType;
            febio_spec.Material.material{1}.ATTR.id = 1;
            if ~strcmp(Growth.method, 'CELL')
                febio_spec.Material.material{1}.E = 10000000;
            else
                febio_spec.Material.material{1}.E = 1000;
            end
            febio_spec.Material.material{1}.v = 0;

            febio_spec.Material.material{2}.ATTR.name = 'QUASIRIGID';
            febio_spec.Material.material{2}.ATTR.type = materialType;
            febio_spec.Material.material{2}.ATTR.id = 2;
            febio_spec.Material.material{2}.E = 10000000;
            febio_spec.Material.material{2}.v = 0;

            for i = 1 : size(febio_spec.MeshDomains.SolidDomain, 2)
                if contains(febio_spec.MeshDomains.SolidDomain{i}.ATTR.name, 'ROW_')
                    febio_spec.MeshDomains.SolidDomain{i}.ATTR.mat = 'GROWTHPLATE';
                else
                    febio_spec.MeshDomains.SolidDomain{i}.ATTR.mat = 'QUASIRIGID';
                end
            end

            if ~strcmp(Growth.method, 'CELL')
                febio_spec.Material.material{3}.ATTR.name = 'GROWTH';
                febio_spec.Material.material{3}.ATTR.type = materialType;
                febio_spec.Material.material{3}.ATTR.id = 3;
                febio_spec.Material.material{3}.E = 1000;
                febio_spec.Material.material{3}.v = 0.48;

                if distal == 0
                    febio_spec.MeshDomains.SolidDomain{rowToGrow}.ATTR.mat = 'GROWTH';
                else
                    febio_spec.MeshDomains.SolidDomain{Rows.total_nr_of_rows + rowToGrow}.ATTR.mat = 'GROWTH';
                end
            else
                phir=0.000001; % phi value % from paper
                AbaFEBioConversion = 3.375; % from paper
                cellGrowthFactor = 5; % modifiable    % Yadav 2021: "Previous studies report growth rate in the proximal femur of a seven year old child to be approximately 9mm/year or 0.8mm/month (Pritchett, 1992)"
                % we want to simulate approx. 6 months cycles --> target = 4.8 mm
                % 2 leads to 0.42 mm growth in CP08_L with bio = doubleMechanical
                cellGrowthFactor = AbaFEBioConversion * cellGrowthFactor;

                %                 febio_spec.Material.material{2} = baseMat;

                baseMat = struct;
                baseMat.ATTR.type='solid mixture';
                baseMat.solid{1} = struct;
                baseMat.solid{1}.ATTR.type='neo-Hookean';
                baseMat.solid{1}.E = 0.001; % modifiable
                baseMat.solid{1}.v = 0;

                baseMat.solid{2}.ATTR.type='cell growth';
                baseMat.solid{2}.phir=phir;
                baseMat.solid{2}.cr.ATTR.lc = '1';
                baseMat.solid{2}.cr.VAL=1;
                baseMat.solid{2}.ce=2000; % from paper

                % remove element set of the row to grow --> each element
                % will be another material

                if distal == 0
                    febio_spec.Mesh.Elements(rowToGrow) = [];
                    febio_spec.MeshDomains.SolidDomain(rowToGrow) = [];
                else
                    febio_spec.Mesh.Elements(Rows.total_nr_of_rows + rowToGrow) = [];
                    febio_spec.MeshDomains.SolidDomain(Rows.total_nr_of_rows + rowToGrow) = [];
                end
            end



            %             elementIDs_rowToGrow = elements.Sets.(['row_' num2str(rowToGrow)]).elements';

            for loadInstance = 1 : size(stresses_data, 3)

                % get data for interesting elements
                tempInd = ismember(stresses_data(:, 1, loadInstance), elementIDs_rowToGrow, 'rows');
                principalStresses = stresses_data(tempInd, 2 : 4, loadInstance);

                HydrostaticStress(:, 1) = elementIDs_rowToGrow;
                HydrostaticStress(:, loadInstance + 1) = ( principalStresses(:, 1) + principalStresses(:, 2) + principalStresses(:, 3) ) / 3;

                OctahedralShearStress(:, 1) = elementIDs_rowToGrow;
                OctahedralShearStress(:, loadInstance + 1) = sqrt( (principalStresses(:, 1) - principalStresses(:, 2)).^2 ...
                    + (principalStresses(:, 2) - principalStresses(:, 3)).^2 ...
                    + (principalStresses(:, 3) - principalStresses(:, 1)).^2  ) ...
                    / 3;

                principalStress(:, 1, loadInstance) = elementIDs_rowToGrow;
                principalStress(:, 2:4, loadInstance) = principalStresses;
            end

            osteogenicIndex(:, 1) = elementIDs_rowToGrow;
            osteogenicIndex(:, 2) = Growth.a * max(OctahedralShearStress(:, 2:end), [], 2) + Growth.b * min(HydrostaticStress(:, 2:end), [], 2);

            growthRate(:, 1) = elementIDs_rowToGrow;

            if isfield(Growth, 'bioIsDoubleMechanical') && Growth.bioIsDoubleMechanical
                % as per the observation that bones grow to approximately 50% to 80% normal
                % size without mechanical loading (Hall and Herring, 1990; Germiller and Goldstein,1997).
                % get max osteogenic index --> this is used as the biological growth rate
                maxMechanicalGrowth = max(osteogenicIndex(:, 2));
                bioGrowth = 2 * maxMechanicalGrowth;
                growthRate(:, 2) = (osteogenicIndex(:, 2) + bioGrowth) * 10000 * Growth.factor;
            else
                if strcmp(Growth.bio, 'NaN')
                    Growth.bio = 0;
                end
                growthRate(:, 2) = (osteogenicIndex(:, 2) + Growth.bio) * 10000 * Growth.factor;
            end

            if isfield(Growth, 'avoidNegativeGrowth') && Growth.avoidNegativeGrowth
                minGrowthRate = min(growthRate(:, 2));
                if(minGrowthRate < 0)
                    growthRate(:, 2) = growthRate(:, 2) - minGrowthRate;
                end
            end

            applyGrowthDirection = zeros(size(nodeIDsToApplyForce, 1), 4);
            applyGrowthDirection(:, 1) = nodeIDsToApplyForce;

            if ~strcmp(Growth.method, 'CELL')
                switch(Growth.method)
                    case 'FNDD'
                        [~, nodal_displacement, ~] = importFEBio_logfile(fullfile(currIterationFolder, 'nodal_displacement.txt'));
                        load(fullfile(app.meshFolder, 'meshSettings.mat'), 'headCenter_nodeNr', 'headCenter_nodeLoc', 'neckBase_nodeNr', 'neckBase_nodeLoc')

                        tempInd = ismember(nodal_displacement(:, 1, 1), headCenter_nodeNr, 'rows');
                        headCenter_displacement = mean(nodal_displacement(tempInd, 2 : 4, :), 3);
                        tempInd = ismember(nodal_displacement(:, 1, 1), neckBase_nodeNr, 'rows');
                        neckBase_displacement = mean(nodal_displacement(tempInd, 2 : 4, :), 3);

                        headCenter_displaced = headCenter_nodeLoc + headCenter_displacement;
                        neckBase_displaced = neckBase_nodeLoc + neckBase_displacement;
                        neckAxisDeflected = headCenter_displaced - neckBase_displaced;
                        neckDeflectionDirectionUnitVector = neckAxisDeflected / norm(neckAxisDeflected);
                        for i = 1 : size(nodeIDsToApplyForce, 1)
                            applyGrowthDirection(i, 2:4) = neckDeflectionDirectionUnitVector(1:3);
                        end
                    case 'PSD'
                        [~, cauchy_components, ~] = importFEBio_logfile(fullfile(currIterationFolder, 'cauchy_stress_components.txt'));
                        % *Data  = sx;sy;sz;sxy;syz;sxz
                        % sx	xx-component of the Cauchy stress
                        % sy	yy-component of the Cauchy stress
                        % sz	zz-component of the Cauchy stress
                        % sxy	xy-component of the Cauchy stress
                        % syz	yz-component of the Cauchy stress
                        % sxz	xz-component of the Cauchy stress


                        maxPSDir(:, 1) = elementIDs_rowToGrow;

                        for i = 1 : size(elementIDs_rowToGrow, 1)
                            [~,I] = max(max(abs(principalStress(i, 2:4, :)), [], 2)); % find maximum absolute principal stress of all load instances

                            sig = cauchy_components(i, 2:end, I);
                            A = [sig(1) sig(4) sig(6); ...
                                sig(4) sig(2) sig(5); ...
                                sig(6) sig(5) sig(3)];
                            [V,D] = eig(A);  % returns diagonal matrix D of eigenvalues and matrix V whose columns are the corresponding right eigenvectors, so that A*V = V*D.
                            [~, ind] = max(max(abs(D), [], 1)); % find maximum absolute principal stress
                            maxPSDir(i, 2:4) = V(:, ind)'; % column vector is the direction of this principal stress
                        end

                        for i = 1 : size(nodeIDsToApplyForce, 1)
                            [rows,~] = find(nodeIDsOfRowToGrow == nodeIDsToApplyForce(i));
                            growthDirectionAdjacentElements = maxPSDir(ismember(maxPSDir(:, 1), elementIDs_rowToGrow(rows)), 2:4);
                            tmp_growthDir = mean(growthDirectionAdjacentElements, 1);

                            applyGrowthDirection(i, 2:4) = tmp_growthDir;
                        end
                    case 'NORM'
                        nodesToApplyForce = nodes.N(nodeIDsToApplyForce, :);
                        PCA = pca(nodesToApplyForce);
                        normalVectorToGrowthPlate = PCA(:, 3)';

                        for i = 1 : size(nodeIDsToApplyForce, 1)
                            applyGrowthDirection(i, 2:4) = normalVectorToGrowthPlate(1:3);
                        end
                end

                for i = 1 : size(nodeIDsToApplyForce, 1)
                    % find growth rate of this element
                    [rows,~] = find(nodeIDsOfRowToGrow == nodeIDsToApplyForce(i));
                    growthRateAdjacentElements = growthRate(ismember(growthRate(:, 1), elementIDs_rowToGrow(rows)), 2);
                    tmp_growthRate = mean(growthRateAdjacentElements);

                    [rows,~] = find(applyGrowthDirection(:, 1) == nodeIDsToApplyForce(i));
                    tmp_growthDirection = applyGrowthDirection(rows, 2:4);


                    % define NodeSet for every node to apply specific nodal load
                    febio_spec.Mesh.NodeSet{i+1}.ATTR.name = ['growth_nodeID_' num2str(nodeIDsToApplyForce(i))];
                    febio_spec.Mesh.NodeSet{i+1}.node.ATTR.id = nodeIDsToApplyForce(i);

                    % define nodal load for this node in all three directions
                    febio_spec.Step.step{1}.Loads.nodal_load{i*3 - 2}.ATTR.name = ['growth_nodeID_' num2str(nodeIDsToApplyForce(i)) '_X'];
                    febio_spec.Step.step{1}.Loads.nodal_load{i*3 - 2}.ATTR.type = 'nodal_load';
                    febio_spec.Step.step{1}.Loads.nodal_load{i*3 - 2}.ATTR.node_set = ['growth_nodeID_' num2str(nodeIDsToApplyForce(i))];
                    febio_spec.Step.step{1}.Loads.nodal_load{i*3 - 2}.dof = 'x';
                    febio_spec.Step.step{1}.Loads.nodal_load{i*3 - 2}.scale.ATTR.lc = 1;
                    % multiply force by unit vector for the direction
                    febio_spec.Step.step{1}.Loads.nodal_load{i*3 - 2}.scale.VAL = tmp_growthRate * tmp_growthDirection(1);

                    febio_spec.Step.step{1}.Loads.nodal_load{i*3 - 1}.ATTR.name = ['growth_nodeID_' num2str(nodeIDsToApplyForce(i)) '_Y'];
                    febio_spec.Step.step{1}.Loads.nodal_load{i*3 - 1}.ATTR.type = 'nodal_load';
                    febio_spec.Step.step{1}.Loads.nodal_load{i*3 - 1}.ATTR.node_set = ['growth_nodeID_' num2str(nodeIDsToApplyForce(i))];
                    febio_spec.Step.step{1}.Loads.nodal_load{i*3 - 1}.dof = 'y';
                    febio_spec.Step.step{1}.Loads.nodal_load{i*3 - 1}.scale.ATTR.lc = 1;
                    % multiply force by unit vector for the direction
                    febio_spec.Step.step{1}.Loads.nodal_load{i*3 - 1}.scale.VAL = tmp_growthRate * tmp_growthDirection(2);

                    febio_spec.Step.step{1}.Loads.nodal_load{i*3}.ATTR.name = ['growth_nodeID_' num2str(nodeIDsToApplyForce(i)) '_Z'];
                    febio_spec.Step.step{1}.Loads.nodal_load{i*3}.ATTR.type = 'nodal_load';
                    febio_spec.Step.step{1}.Loads.nodal_load{i*3}.ATTR.node_set = ['growth_nodeID_' num2str(nodeIDsToApplyForce(i))];
                    febio_spec.Step.step{1}.Loads.nodal_load{i*3}.dof = 'z';
                    febio_spec.Step.step{1}.Loads.nodal_load{i*3}.scale.ATTR.lc = 1;
                    % multiply force by unit vector for the direction
                    febio_spec.Step.step{1}.Loads.nodal_load{i*3}.scale.VAL = tmp_growthRate * tmp_growthDirection(3);
                end
            else % CELL GROWTH --> it a function for each element
                % divide growth rate by 10000, it is multiplied by this
                % value above to have proper nodal forces
                growthRate(:, 2) = growthRate(:, 2) / 10000;

                elementSetOffset = size(febio_spec.Mesh.Elements, 2); % is equal to SolidDomain
                for i = 1 : size(elementIDs_rowToGrow, 1)
                    tmpMat = baseMat;
                    tmpMat.ATTR.name=['CELL_GROWTH' num2str(elementIDs_rowToGrow(i))];
                    tmpMat.ATTR.id=i+2;
                    tmpMat.solid{2}.cr.ATTR.lc = i;

                    febio_spec.Material.material{i+2} = tmpMat;

                    % define this load controller - this sets the magnitude of
                    % growth
                    febio_spec.LoadData.load_controller{i}.ATTR.id = i;
                    febio_spec.LoadData.load_controller{i}.ATTR.type = 'loadcurve';
                    febio_spec.LoadData.load_controller{i}.interpolate = 'LINEAR';
                    alphaV = growthRate(i,2) * cellGrowthFactor;
                    % Cr = Ce*(aV *deltaT - phir + 1);     % deltaT is 1 in Abaqus
                    Cr = tmpMat.solid{2}.ce * (alphaV * 1 - tmpMat.solid{2}.phir + 1);
                    febio_spec.LoadData.load_controller{i}.points.point.VAL = [0 0; 1 Cr];

                    %CHANGE
                    % add element set for this element - necessary to assign the
                    % material to it
                    % i+2 because 2 element sets already exist
                    febio_spec.Mesh.Elements{i + elementSetOffset}.ATTR.name = ['CELL_GROWTH' num2str(elementIDs_rowToGrow(i))]; %Name of this part
                    febio_spec.Mesh.Elements{i + elementSetOffset}.ATTR.type = 'hex8'; %Element type
                    febio_spec.Mesh.Elements{i + elementSetOffset}.elem.ATTR.id = elementIDs_rowToGrow(i); %Element id's
                    febio_spec.Mesh.Elements{i + elementSetOffset}.elem.VAL = elements.E(elementIDs_rowToGrow(i), :);


                    % link material and element set together
                    febio_spec.MeshDomains.SolidDomain{i + elementSetOffset}.ATTR.mat = ['CELL_GROWTH' num2str(elementIDs_rowToGrow(i))];
                    febio_spec.MeshDomains.SolidDomain{i + elementSetOffset}.ATTR.name = ['CELL_GROWTH' num2str(elementIDs_rowToGrow(i))];
                end
            end

            febio_spec.Output.logfile.ATTR.file = 'FE_growth.log';
            febio_spec.Output.logfile = rmfield(febio_spec.Output.logfile, 'element_data');
            febio_spec.Output.logfile.node_data{1}.ATTR.file = 'growth_displacement.txt';

            febioFileName = fullfile(currIterationFolder, 'FE_growth.feb');
            febioStruct2xml(febio_spec, febioFileName);

            save(fullfile(currIterationFolder, 'FE_growth.mat'), 'febio_spec', 'osteogenicIndex', 'OctahedralShearStress', 'HydrostaticStress');
        end

        function [abaqusInpFileName] = createAbaqus_GrowthModel(app, nodes, elements, rowToGrow, stresses_data, analysisFileName, currIterationFolder, distal, Rows)
            %CHANGE Include distal
            load(analysisFileName, 'Growth');
            abaqusInpFileName=fullfile(currIterationFolder, 'FE_growth.inp'); %INP file name

            % Heading
            abaqus_spec.Heading.COMMENT{1}='Job name: ABAQUS inp file creation demo';
            abaqus_spec.Heading.COMMENT{2}='Generated by: GIBBON';

            % Preprint
            abaqus_spec.Preprint.ATTR.echo='NO';
            abaqus_spec.Preprint.ATTR.model='NO';
            abaqus_spec.Preprint.ATTR.history='NO';
            abaqus_spec.Preprint.ATTR.contact='NO';

            % Part
            % Node
            nodeIds=(1:1:size(nodes.N,1))';
            abaqus_spec.Part.ATTR.name='Femur';
            abaqus_spec.Part.Node={nodeIds,nodes.N};

            % Element
            elementIds=(1:1:size(elements.E,1));
            abaqus_spec.Part.Element{1}.ATTR.type='C3D8';
            abaqus_spec.Part.Element{1}.VAL={elementIds(:),elements.E};


            elementIDs_rowToGrow = elements.Sets.(['row_' num2str(rowToGrow)]).elements';
            elementIDs_rowAboveRowToGrow = elements.Sets.(['row_' num2str(rowToGrow-1)]).elements';
            nodeIDsOfRowToGrow = elements.E(elementIDs_rowToGrow, :);
            nodeIDsOfRowToGrow = reshape(nodeIDsOfRowToGrow, 1, []);
            nodeIDsOfRowAboveRowToGrow = elements.E(elementIDs_rowAboveRowToGrow, :);
            nodeIDsOfRowAboveRowToGrow = reshape(nodeIDsOfRowAboveRowToGrow, 1, []);

            [nodeIDsToApplyForce, ~] = intersect(nodeIDsOfRowToGrow, nodeIDsOfRowAboveRowToGrow);
            uniqueNodeIDsOfRowToGrow = unique(nodeIDsOfRowToGrow);
            nodeIDsToFix = uniqueNodeIDsOfRowToGrow(~ismember(uniqueNodeIDsOfRowToGrow, nodeIDsToApplyForce));

            % Node sets
            abaqus_spec.Part.Nset{1}.ATTR.nset='nodesetFixed';
            abaqus_spec.Part.Nset{1}.VAL = nodeIDsToFix;

            abaqus_spec.Part.Nset{2}.ATTR.nset='nodesetOfRowAboveRowToGrow';
            abaqus_spec.Part.Nset{2}.VAL = reshape(nodeIDsOfRowAboveRowToGrow, 1, []);

            abaqus_spec.Part.Nset{3}.ATTR.nset='allNodes';
            abaqus_spec.Part.Nset{3}.VAL = nodeIds';

            % Element sets
            % Element set for each element of the growthplate
            GP_elements = elements.Sets.(['row_' num2str(rowToGrow)]).elements;

            % similar to the script of Hans
            FN_vector = [0.418980126212094 0.735275831769323 0.532752386250149];

            for loadInstance = 1 : size(stresses_data, 3)

                % get data for interesting elements
                tempInd = ismember(stresses_data(:, 1, loadInstance), elementIDs_rowToGrow, 'rows');
                principalStresses = stresses_data(tempInd, 2 : 4, loadInstance);

                HydrostaticStress(:, 1) = elementIDs_rowToGrow;
                HydrostaticStress(:, loadInstance + 1) = ( principalStresses(:, 1) + principalStresses(:, 2) + principalStresses(:, 3) ) / 3;

                OctahedralShearStress(:, 1) = elementIDs_rowToGrow;
                OctahedralShearStress(:, loadInstance + 1) = sqrt( (principalStresses(:, 1) - principalStresses(:, 2)).^2 ...
                    + (principalStresses(:, 2) - principalStresses(:, 3)).^2 ...
                    + (principalStresses(:, 3) - principalStresses(:, 1)).^2  ) ...
                    / 3;

                principalStress(:, 1, loadInstance) = elementIDs_rowToGrow;
                principalStress(:, 2:4, loadInstance) = principalStresses;
            end

            osteogenicIndex(:, 1) = elementIDs_rowToGrow;
            osteogenicIndex(:, 2) = Growth.a * max(OctahedralShearStress(:, 2:end), [], 2) + Growth.b * min(HydrostaticStress(:, 2:end), [], 2);

            % as per the observation that bones grow to approximately 50% to 80% normal
            % size without mechanical loading (Hall and Herring, 1990; Germiller and Goldstein,1997).
            % get max osteogenic index --> this is used as the biological growth rate
            growthRate(:, 1) = elementIDs_rowToGrow;


            if isfield(Growth, 'bioIsDoubleMechanical') && Growth.bioIsDoubleMechanical
                maxMechanicalGrowth = max(osteogenicIndex(:, 2));
                bioGrowth = 2 * maxMechanicalGrowth;
                growthRate(:, 2) = (osteogenicIndex(:, 2) + bioGrowth) * 10000 * Growth.factor;
            else
                growthRate(:, 2) = (osteogenicIndex(:, 2) + Growth.bio) * 10000 * Growth.factor;
            end

            if isfield(Growth, 'avoidNegativeGrowth') && Growth.avoidNegativeGrowth
                minGrowthRate = min(growthRate(:, 2));
                if(minGrowthRate < 0)
                    growthRate(:, 2) = growthRate(:, 2) - minGrowthRate;
                end
            end

            applyGrowthDirection = zeros(size(growthRate, 1), 4);
            applyGrowthDirection(:, 1) = growthRate(:, 1);

            switch(Growth.method)
                case 'FNDD'
                    [~, nodal_displacement, ~] = importFEBio_logfile(fullfile(currIterationFolder, 'nodal_displacement.txt'));
                    load(fullfile(app.meshFolder, 'meshSettings.mat'), 'headCenter_nodeNr', 'headCenter_nodeLoc', 'neckBase_nodeNr', 'neckBase_nodeLoc')

                    tempInd = ismember(nodal_displacement(:, 1, 1), headCenter_nodeNr, 'rows');
                    headCenter_displacement = mean(nodal_displacement(tempInd, 2 : 4, :), 3);
                    tempInd = ismember(nodal_displacement(:, 1, 1), neckBase_nodeNr, 'rows');
                    neckBase_displacement = mean(nodal_displacement(tempInd, 2 : 4, :), 3);

                    headCenter_displaced = headCenter_nodeLoc + headCenter_displacement;
                    neckBase_displaced = neckBase_nodeLoc + neckBase_displacement;
                    neckAxisDeflected = headCenter_displaced - neckBase_displaced;
                    neckDeflectionDirectionUnitVector = neckAxisDeflected / norm(neckAxisDeflected);
                    for i = 1 : size(applyGrowthDirection, 1)
                        applyGrowthDirection(i, 2:4) = neckDeflectionDirectionUnitVector(1:3);
                    end
                case 'PSD'
                    [~, cauchy_components, ~] = importFEBio_logfile(fullfile(currIterationFolder, 'cauchy_stress_components.txt'));
                    % *Data  = sx;sy;sz;sxy;syz;sxz
                    % sx	xx-component of the Cauchy stress
                    % sy	yy-component of the Cauchy stress
                    % sz	zz-component of the Cauchy stress
                    % sxy	xy-component of the Cauchy stress
                    % syz	yz-component of the Cauchy stress
                    % sxz	xz-component of the Cauchy stress

                    maxPSDir(:, 1) = elementIDs_rowToGrow;

                    for i = 1 : size(elementIDs_rowToGrow, 1)
                        [~,I] = max(max(abs(principalStress(i, 2:4, :)), [], 2)); % find maximum absolute principal stress of all load instances

                        sig = cauchy_components(i, 2:end, I);
                        A = [sig(1) sig(4) sig(6); ...
                            sig(4) sig(2) sig(5); ...
                            sig(6) sig(5) sig(3)];
                        [V,D] = eig(A);  % returns diagonal matrix D of eigenvalues and matrix V whose columns are the corresponding right eigenvectors, so that A*V = V*D.
                        [~, ind] = max(max(abs(D), [], 1)); % find maximum absolute principal stress
                        maxPSDir(i, 2:4) = V(:, ind)'; % column vector is the direction of this principal stress

                        applyGrowthDirection(i, 2:4) = maxPSDir(i, 2:4);
                    end
                case 'NORM'
                    nodesToApplyForce = nodes.N(nodeIDsToApplyForce, :);
                    PCA = pca(nodesToApplyForce);
                    normalVectorToGrowthPlate = PCA(:, 3)';

                    for i = 1 : size(applyGrowthDirection, 1)
                        applyGrowthDirection(i, 2:4) = normalVectorToGrowthPlate(1:3);
                    end
            end


            for ii = 1 : size(GP_elements, 2)
                abaqus_spec.Part.Elset{ii}.ATTR.elset = ['Elset-GP_' num2str(GP_elements(1,ii))];
                abaqus_spec.Part.Elset{ii}.VAL = GP_elements(1,ii);
                % Materials: define material for each element with elastic/expansion coeff.
                abaqus_spec.Material{ii}.ATTR.name=['Element' num2str(GP_elements(1,ii))];
                abaqus_spec.Material{ii}.Elastic.VAL = [6 0.48];
                abaqus_spec.Material{ii}.Expansion.ATTR.type = 'ORTHO';
                abaqus_spec.Material{ii}.Expansion.VAL = [growthRate(ii,2) / 500 0 0];  % 200 seems to be a reasonable divisor to have similar results to the nodal force approach
                % Orientation: define orientation for each element containing vector: [0.418980126212094; 0.735275831769323; 0.532752386250149]
                abaqus_spec.Part.Orientation{ii}.ATTR.name= ['Orientation-GP' num2str(GP_elements(1,ii))];
                % similar to the script of Hans
                dirVector = applyGrowthDirection(ii, 2:4);
                dirvector_normal = [dirVector(1,1) dirVector(1,3) dirVector(1,2)*(-1)];
                abaqus_spec.Part.Orientation{ii}.VAL=[dirVector dirvector_normal];
                % Solid section: define solid section for each element
                abaqus_spec.Part.Solid_section{ii}.ATTR.elset= ['Elset-GP_' num2str(GP_elements(1,ii))];
                abaqus_spec.Part.Solid_section{ii}.ATTR.orientation=['Orientation-GP' num2str(GP_elements(1,ii))];
                abaqus_spec.Part.Solid_section{ii}.ATTR.material=['Element' num2str(GP_elements(1,ii))];
            end

            abaqus_spec.Material{size(GP_elements, 2) + 1}.ATTR.name='growthplate';
            abaqus_spec.Material{size(GP_elements, 2) + 1}.Elastic = [6 0.48];


            % Element set for above/below growthplate
            abaqus_spec.Part.Elset{size(GP_elements, 2) + 1}.ATTR.elset='Set-not_growthplate';
            elements_not_GP = elements.E_ind(~ismember(elements.E_ind, GP_elements));
            abaqus_spec.Part.Elset{size(GP_elements, 2) + 1}.VAL = elements_not_GP;

            % Materials
            abaqus_spec.Material{size(GP_elements, 2) + 2}.ATTR.name='NotGrowthplate';
            abaqus_spec.Material{size(GP_elements, 2) + 2}.Elastic = [10000000 0.48];

            abaqus_spec.Part.Solid_section{size(GP_elements, 2) + 2}.ATTR.elset= 'Set-not_growthplate';
            abaqus_spec.Part.Solid_section{size(GP_elements, 2) + 2}.ATTR.material='NotGrowthplate';

            % Boundary conditions
            abaqus_spec.Boundary.VAL='Femur1.nodesetFixed , ENCASTRE'; % add boundary condition
            abaqus_spec.Step.ATTR.name='Step-1';
            abaqus_spec.Step.ATTR.nlgeom='NO';
            abaqus_spec.Step.Static=[1 1 1e-5 1];
            abaqus_spec.Step.Temperature = {'Femur1.nodesetOfRowAboveRowToGrow',1}; % has to be "nameOfInstance"."nameOfNodeSet"
            abaqus_spec.Assembly.ATTR.name='Assembly';

            % Assembly
            abaqus_spec.Assembly.Instance{1}.ATTR.name='Femur1';
            abaqus_spec.Assembly.Instance{1}.ATTR.part='Femur';

            % Output
            abaqus_spec.Step.Restart.ATTR.write='';
            abaqus_spec.Step.Restart.ATTR.frequency=0;


            abaqus_spec.Step.Output{1}.ATTR.field='';
            abaqus_spec.Step.Output{1}.ATTR.variable='PRESELECT';
            abaqus_spec.Step.Node_print.VAL='U';
            abaqus_spec.Step.Output{2}.ATTR.history='';
            abaqus_spec.Step.Output{2}.ATTR.variable='PRESELECT';

            abaqusStruct2inp(abaqus_spec,abaqusInpFileName);

            save(fullfile(currIterationFolder, 'FE_growth.mat'), 'abaqus_spec', 'osteogenicIndex', 'OctahedralShearStress', 'HydrostaticStress');
        end

        function nodes = growMesh(~, nodes, elements, displacement_data, iterationFolder)
            nodes.N = nodes.N + displacement_data(:, 2:4, end);
            save(fullfile(iterationFolder, 'meshAfterGrowth.mat'), 'nodes', 'elements');
            export_INP(elements, nodes, fullfile(iterationFolder, 'meshAfterGrowth.inp'));
        end

        function nodes = growMeshAbaqus(~, nodes, elements, displacement_data, iterationFolder)
            for i = 1 : size(displacement_data, 1)
                ind = ismember(nodes.N_ind, displacement_data(i, 1));
                nodes.N(ind, :) = nodes.N(ind, :) + displacement_data(i, 2:4);
            end
            save(fullfile(iterationFolder, 'meshAfterGrowth.mat'), 'nodes', 'elements');
            export_INP(elements, nodes, fullfile(iterationFolder, 'meshAfterGrowth.inp'));
        end

        function [AVA_inTransverse, NSA] = calculateGeometryAngles(~, nodes, headSphereNodes, neck_shaftPlane_intersection, diaphyseVector, side)
            headSphereNodes.N = nodes.N(headSphereNodes.N_ind, :);
            [fem_head_center,~] = sphereFit(headSphereNodes.N);
            neckVector = fem_head_center - neck_shaftPlane_intersection;

            % NSA in 3D
            NSA = atan2d(vecnorm(cross(neckVector,diaphyseVector*(-1))),dot(neckVector,diaphyseVector*(-1)));

            % AVA from transverse plane --> set y coordinate to 0;
            u = neckVector([1 3]);
            v = [0 -1];
            CosTheta = max(min(dot(u,v)/(norm(u)*norm(v)),1),-1);
            AVA_inTransverse = real(acosd(CosTheta));

            if strcmp(side, 'L')
                AVA_inTransverse = 180 - AVA_inTransverse;
            end
        end

        function kneeAxisAngle = calculateKneeAxisAngle(~, nodes, kneeMedInd, kneeLatInd, side)
            % positive kneeAxisAngle means lateral point is more distal which leads to a varus angle
            kneeMed = nodes.N(kneeMedInd, [2 3]);  % ignore x axis --> anterior posterior --> ignored for varus / valgus
            kneeLat = nodes.N(kneeLatInd, [2 3]);
            u = kneeMed - kneeLat;
            if strcmpi(side, 'l')
                v = [0, 1];
            else
                v = [0, -1];
            end

            CosTheta = max(min(dot(u,v)/(norm(u)*norm(v)),1),-1);
            kneeAxisAngle = real(acosd(CosTheta));
            if kneeLat(1) > kneeMed(1)
                kneeAxisAngle = kneeAxisAngle *-1;
            end

            % figure; hold on;
            % plot3(0, kneeLat(1), kneeLat(2), 'x', 'MarkerSize', 10, 'LineWidth',3);
            % plot3(0, kneeMed(1), kneeMed(2), 'x', 'MarkerSize', 10, 'LineWidth',3);
            % legend;
            % plotNodes(nodes.N);
            % daspect([1 1 1]);
        end

        function [max_displacement, max_displacement_at_nodeID] = getMaxDisplacement(~, nodal_displacement)
            tmp_displacement = zeros(size(nodal_displacement, 3), size(nodal_displacement, 1));
            for k = 1 : size(nodal_displacement, 3)
                for l = 1 : size(nodal_displacement, 1)
                    tmp_displacement(k, l) = sqrt(nodal_displacement(l, 2, k)^2 + nodal_displacement(l, 3, k)^2 + nodal_displacement(l, 4, k)^2);
                end
            end
            [max_displacement, max_displacement_at_nodeID] = max(max(tmp_displacement, [], 1));
        end

        function plotFEBio(~, febio_spec, step, factor, stlFilename, stlAlpha)
            if nargin < 4
                factor = 1;
            end

            E = [];
            for i = 1 : size(febio_spec.Mesh.Elements, 2)
                E = [E; febio_spec.Mesh.Elements{1, i}.elem.VAL];
            end
            V = febio_spec.Mesh.Nodes{1, 1}.node.VAL;
            C = zeros(size(E, 1), 1);
            [F,~,~]=element2patch(E,C,'hex8');

            f = figure;
            hold on;
            if ~exist('stlFilename','var')
                F = F(1 : 5 : end, :);
                patch('Faces', F, 'Vertices', V, 'Facecolor', [0.65    0.65    0.6290] ,'FaceAlpha',0.1,'edgecolor','none');
            else
                if ~exist('stlAlpha', 'var')
                    stlAlpha = 1;
                end

                [filepath,name,~] = fileparts(stlFilename);
                stlGeometry = createTriGeomSet({name}, filepath);
                trisurf(stlGeometry.(name), 'FaceColor', [0.9290 0.6940 0.1250], 'EdgeColor', 'none', 'FaceAlpha', stlAlpha);
            end
            daspect([1 1 1]); camlight headlight; rotate3d on;
            view([-168 -11]);
            f.WindowState = 'maximized';

            nodesets = struct;
            nodesets.names = [];
            nodesets.attachments = [];
            nodesets.factor = [];
            attachments = zeros(1, 3);
            forces = [];

            for i = 1 : size(febio_spec.Step.step{1, step}.Loads.nodal_load, 2)
                nset = febio_spec.Step.step{1, step}.Loads.nodal_load{1, i}.ATTR.node_set;

                switch febio_spec.Step.step{1, step}.Loads.nodal_load{1, i}.dof
                    case 'x'
                        force = [febio_spec.Step.step{1, step}.Loads.nodal_load{1, i}.scale.VAL 0 0];
                    case 'y'
                        force = [0 febio_spec.Step.step{1, step}.Loads.nodal_load{1, i}.scale.VAL 0];
                    case 'z'
                        force = [0 0 febio_spec.Step.step{1, step}.Loads.nodal_load{1, i}.scale.VAL];
                end

                nset_ind = find(ismember(nodesets.names, nset), 1);
                if nset_ind > 0
                    forces(nset_ind, :) = forces(nset_ind, :) + force;
                else
                    for j = 1 : size(febio_spec.Mesh.NodeSet, 2)
                        if strcmp(febio_spec.Mesh.NodeSet{1, j}.ATTR.name, nset)
                            nodeIDs = febio_spec.Mesh.NodeSet{1, j}.node.ATTR.id;
                            break;
                        end
                    end
                    nodesets.names{end+1} = nset;
                    nodesets.factor(end + 1) = length(nodeIDs);
                    if ~isempty(nodeIDs)
                        forces = [forces; force];
                        meanAttachmentPosition = mean(V(nodeIDs, :), 1);
                        nodesets.attachments = [nodesets.attachments; meanAttachmentPosition];
                    end
                end

                clear nodeIDs nset_ind;
            end
            forces = forces * factor;

            for i = 1 : size(forces, 1)
                forces(i, :) = forces(i, :) .* nodesets.factor(i);
                if contains(nodesets.names{i}, 'HJCF')
                    quiver3(nodesets.attachments(i, 1) - forces(i, 1) * 0.1,nodesets.attachments(i, 2) - forces(i, 2) * 0.1,nodesets.attachments(i, 3) - forces(i, 3) * 0.1, forces(i, 1),forces(i, 2),forces(i, 3), 0.1,'LineWidth',2)
                else
                    quiver3(nodesets.attachments(i, 1),nodesets.attachments(i, 2),nodesets.attachments(i, 3),forces(i, 1),forces(i, 2),forces(i, 3), 0.5,'LineWidth',2)
                end
            end

            xlabel('[mm]'); ylabel('[mm]'); zlabel('[mm]');
        end

        function updateNeckAxisLengthPlot(app, distance, nodes, D)
            set(app.neckAxisPlotHandle1,'Visible','off');
            set(app.neckAxisPlotHandle2,'Visible','off');
            temp = nodes;
            temp(D > distance, :) = [];
            oldView = get(gca, 'View');
            app.neckAxisPlotHandle1 = plotNodes(temp, 'r');
            temp = nodes;
            temp(or(D < distance, D > 100), :) = [];
            app.neckAxisPlotHandle2 = plotNodes(temp, 'b');
            view(oldView);
            daspect([1 1 1]);
            app.newProbandGeometry.neckAxisCutOff = distance;
        end

        function checkIfFullSetupIsSuccessful(app)
            if isequal(app.PythonStatusLamp.Color, [0 1 0]) && isequal(app.PyMeshLabStatusLamp.Color, [0 1 0]) && ...
                    isequal(app.CoreformCubitStatusLamp.Color, [0 1 0]) && isequal(app.SculptStatusLamp.Color, [0 1 0]) && ...
                    isequal(app.FeBioStatusLamp.Color, [0 1 0])
                setup_complete = 1;
                save(fullfile(app.appDir, 'settings.mat'), 'setup_complete', '-append');
            end
            figure(app.GPToolAtoolboxUIFigure);
        end
    end


    % Callbacks that handle component events
    methods (Access = public)

        % Code that executes after component creation
        function startupFcn(app)
            movegui(app.GPToolAtoolboxUIFigure,"center");
            if isdeployed
                [~, result] = system('path');
                app.appDir = char(regexpi(result, 'Path=(.*?);', 'tokens', 'once'));
            else
                % add STAPLE directly, because we made some changes in the
                % code - see lines at the top of the script
                addpath(genpath('functions'));
                app.appDir = pwd;
            end
            app.GPToolAtoolboxUIFigure.Icon = fullfile(app.appDir, 'logo.png');
            disp(['App directory is "' app.appDir '"']);

            if isfile(fullfile(app.appDir, 'settings.mat'))
                load(fullfile(app.appDir, 'settings.mat'), 'settings_workingDirectory', 'settings_selectedProband', 'settings_selectedMesh', 'settings_selectedAnalysis', 'settings_cubitPath', 'settings_mpiexecPath', 'setup_complete');

                if ~exist('settings_mpiexecPath', 'var')
                    settings_mpiexecPath = 'C:\Program Files\Microsoft MPI\Bin\mpiexec.exe';
                end
                app.mpiexecPathLabel.Text = settings_mpiexecPath;
                app.mpiexecPath = settings_mpiexecPath;

                if exist('settings_cubitPath', 'var')
                    app.cubitPath = settings_cubitPath;
                    app.cubitPathLabel.Text = app.cubitPath;
                end

                app.febioPathLabel.Text = getFEBioPath;

                if ~exist('setup_complete', 'var') || setup_complete ~= 1
                    warnHandle = warndlg('Please be sure that everything is setup correctly');
                    figure(warnHandle);
                    waitfor(warnHandle);                 figure(app.GPToolAtoolboxUIFigure);

                    app.TabGroup.SelectedTab = app.GeneralSettingsTab;
                else
                    app.TabGroup.SelectedTab = app.ParticipantsTab;
                end

                app.workingDirectory = settings_workingDirectory;
                app.workingDirectoryLabel.Text = app.workingDirectory;
                setProbandListForWorkingDir(app);
                if exist('settings_selectedProband', 'var') && any(strcmp(app.AvailableParticipantsinthisdatafolderListBox.Items, settings_selectedProband))
                    app.AvailableParticipantsinthisdatafolderListBox.Value = settings_selectedProband;
                    AvailableParticipantsinthisdatafolderListBoxValueChanged(app, 0);

                    setMeshListForProband(app);

                    if exist('settings_selectedMesh', 'var') && any(strcmp(app.AvailableMeshesinthisdirectoryListBox.Items, settings_selectedMesh))
                        app.AvailableMeshesinthisdirectoryListBox.Value = settings_selectedMesh;
                        AvailableMeshesinthisdirectoryListBoxValueChanged(app, 0);

                        setAnalysisListForMesh(app);

                        if exist('settings_selectedAnalysis', 'var') && any(strcmp(app.AvailableAnalysisinthisdirectoryListBox.Items, settings_selectedAnalysis))
                            app.AvailableAnalysisinthisdirectoryListBox.Value = settings_selectedAnalysis;
                            AvailableAnalysisinthisdirectoryListBoxValueChanged(app, 0);
                        end
                    end
                end
            else
                warnHandle = warndlg('As your first action, select a data folder. Everything will be loaded from and saved to this directory.');
                figure(warnHandle);
                waitfor(warnHandle);                 figure(app.GPToolAtoolboxUIFigure);
                SelectdatafolderButtonPushed(app, 0);
                app.febioPathLabel.Text = getFEBioPath;
            end

            app.latestSelectedFolder = app.workingDirectory;
            app.tmp_loadingPath = '';
        end

        % Button pushed function: SelectdatafolderButton
        function SelectdatafolderButtonPushed(app, event)
            app.workingDirectory = uigetdir();
            app.latestSelectedFolder = app.workingDirectory;
            drawnow;
            figure(app.GPToolAtoolboxUIFigure);
            if app.workingDirectory ~= 0
                app.workingDirectoryLabel.Text = app.workingDirectory;
                settings_workingDirectory = app.workingDirectory;

                if isfile(fullfile(app.appDir, 'settings.mat'))
                    save(fullfile(app.appDir, 'settings.mat'), 'settings_workingDirectory', '-append');
                else
                    settings_mpiexecPath = 'C:\Program Files\Microsoft MPI\Bin\mpiexec.exe';
                    app.mpiexecPathLabel.Text = settings_mpiexecPath;
                    app.mpiexecPath = settings_mpiexecPath;

                    try
                        save(fullfile(app.appDir, 'settings.mat'), 'settings_workingDirectory', 'settings_mpiexecPath')
                    catch e
                        if contains(e.message, 'permission denied')
                            waitfor(warndlg(['Permission denied! Give permission to write on folder "' app.appDir '"']));
                            winopen(app.appDir);
                        end
                    end
                end
                setProbandListForWorkingDir(app);
                app.TabGroup.Visible = 1;
            else
                app.workingDirectoryLabel.Text = 'nothing selected';
                app.TabGroup.Visible = 0;
                waitfor(warndlg('Select a data folder! Everything will be loaded from and saved to this directory.'));
                SelectdatafolderButtonPushed(app, 0);
            end
        end

        % Value changed function: AvailableMeshesinthisdirectoryListBox
        function AvailableMeshesinthisdirectoryListBoxValueChanged(app, event)
            value = app.AvailableMeshesinthisdirectoryListBox.Value;
            if isempty(value) || strcmp(value, 'Create new')
                if isempty(app.MeshPropertiesTable.Data)
                    app.MeshPropertiesTable.Data = {'Mesh size' 1.5; ...
                        'Total Rows in Growth Plate' 10; ...
                        'Number of transition rows' 3};
                end
                app.MeshPropertiesTable.ColumnEditable = [false, true];
                app.CreatemeshButton.Enable = true;

                app.AnteversionAngleLabel.Text = 'AVA = create Mesh to calculate';
                app.NeckShaftAngleLabel.Text = 'NSA = create Mesh to calculate';
                app.GrowthplateorientationtoneckaxisLabel.Text = 'Growth plate orientation to neck axis = create Mesh to calculate';
                app.SimplegeometryplotButton.Enable = false;
                app.AdvancedproximalgeometryplotButton.Enable = false;

                app.Analysisforthismesh0Label.Text = '# Analysis for this mesh: 0';
            else
                settings_selectedMesh = value;
                save(fullfile(app.appDir, 'settings.mat'), 'settings_selectedMesh','-append');

                [meshsize, rows, transitionRows] = getParametersFromMeshName(app, value);
                app.MeshPropertiesTable.Data = {'Mesh size' meshsize; ...
                    'Rows in Growth Plate' rows; ...
                    'Number of transition rows' transitionRows};

                app.MeshPropertiesTable.ColumnEditable = [false, false];
                app.CreatemeshButton.Enable = false;
                app.meshFolder = fullfile(app.probandFolder, value);
                meshSettingsFile = fullfile(app.meshFolder, 'meshSettings.mat');

                try
                    load(meshSettingsFile, 'AVA_inTransverse', 'NSA', 'neckAxis', 'normalVectorToGrowthPlate');
                    app.AnteversionAngleLabel.Text = ['Anteversion Angle = ' num2str(AVA_inTransverse) '°'];
                    app.NeckShaftAngleLabel.Text = ['Neck-Shaft Angle = ' num2str(NSA) '°'];

                    angleGPtoneckAxis = atan2d(vecnorm(cross(neckAxis*(-1),normalVectorToGrowthPlate)),dot(neckAxis*(-1),normalVectorToGrowthPlate));
                    app.GrowthplateorientationtoneckaxisLabel.Text = ['Growth plate orientation to neck axis = ' num2str(angleGPtoneckAxis) '°'];
                    app.SimplegeometryplotButton.Enable = true;
                    app.AdvancedproximalgeometryplotButton.Enable = true;
                end

                analysis = GetSubDirsFirstLevelOnly(app.meshFolder);
                analysis = analysis(~contains(analysis, 'Mesh'));
                app.Analysisforthismesh0Label.Text = ['# Analysis for this mesh: ' num2str(numel(analysis))];
            end
        end

        % Button pushed function: CreatemeshButton
        function CreatemeshButtonPushed(app, event)
            % e.g. s_1.5_r_10_t_3
            meshName = ['s_' num2str(app.MeshPropertiesTable.Data{1, 2}) ...
                '_r_' num2str(app.MeshPropertiesTable.Data{2, 2}) ...
                '_t_' num2str(app.MeshPropertiesTable.Data{3, 2})];

            if exist(fullfile(app.probandFolder, meshName), 'dir')
                warnHandle = warndlg('This Mesh is already set up, please select it in the list.');
                figure(warnHandle);
                waitfor(warnHandle);                 figure(app.GPToolAtoolboxUIFigure);
            else
                app.meshFolder = fullfile(app.probandFolder, meshName);
                mkdir(app.meshFolder);

                mesh_size = app.MeshPropertiesTable.Data{1, 2};
                nr_of_rows_in_gp = app.MeshPropertiesTable.Data{2, 2};
                nr_of_transition_rows = app.MeshPropertiesTable.Data{3, 2};

                createMesh(app, mesh_size, nr_of_rows_in_gp, nr_of_transition_rows);

                setMeshListForProband(app);
                try
                    app.AvailableMeshesinthisdirectoryListBox.Value = meshName;
                catch
                    app.AvailableMeshesinthisdirectoryListBox.Value = 'Create new';
                end
                AvailableMeshesinthisdirectoryListBoxValueChanged(app, 0);
            end
        end

        % Button down function: AnalysisTab
        function AnalysisTabButtonDown(app, event)
            value = app.AvailableMeshesinthisdirectoryListBox.Value;
            if isempty(value) || strcmp(value, 'Create new')
                warnHandle = warndlg('Select or create a mesh first!');
                figure(warnHandle);
                waitfor(warnHandle);                 figure(app.GPToolAtoolboxUIFigure);
                app.TabGroup.SelectedTab = app.MeshesTab;
                MeshesTabButtonDown(app, 0);
            else
                load(fullfile(app.probandFolder, 'settings.mat'));
                app.SelectedMeshLabel.Text = [p_id '_' side '    -     Mesh: ' app.AvailableMeshesinthisdirectoryListBox.Value];

                setAnalysisListForMesh(app);
                CheckIfAnalysisSetupIsComplete(app);
            end
            load(fullfile(app.probandFolder, 'settings.mat'));

            if exist('abaqus_working', 'var') && abaqus_working == 1
                app.useThermalExpansionwithAbaqusforgrowthCheckBox.Enable = 1;
            else
                app.useThermalExpansionwithAbaqusforgrowthCheckBox.Enable = 0;
            end
            if exist('includeDistalGP', 'var') && includeDistalGP == 1
                app.DistalorProximalDropDown.Value = 'Distal';
                app.DistalorProximalDropDown.Enable = 1;
            else
                app.DistalorProximalDropDown.Value = 'Proximal';
                app.DistalorProximalDropDown.Enable = 0;
            end

            AvailableAnalysisinthisdirectoryListBoxValueChanged(app, 0);
        end

        % Value changed function: AvailableAnalysisinthisdirectoryListBox
        function AvailableAnalysisinthisdirectoryListBoxValueChanged(app, event)
            value = app.AvailableAnalysisinthisdirectoryListBox.Value;
            if isempty(value) || strcmp(value, 'Create new')
                if isempty(app.MaterialsParametersTable.Data)
                    app.MaterialsParametersTable.Data = {'GROWTHPLATE' 1000 0.49; ...
                        'TRAB_PROX' 10000 0.3; ...
                        'CORTICAL' 20000 0.3; ...
                        'MARROW' 100 0.3; ...
                        'TRAB_DIST' 10000 0.3};
                end
                if isempty(app.GrowthParametersTable.Data)
                    app.GrowthParametersTable.Data = {'a', 0.02; ...
                        'b', 0.01;...
                        'biological growth', 'NaN'; ...
                        'growth factor', 1; ...
                        'nr of growth iterations', 1};
                end
                app.MaterialsParametersTable.ColumnEditable = [false, true, true];
                app.biologicalgrowth2mechanicalgrowthCheckBox.Value = 1;
                app.GrowthParametersTable.ColumnEditable = [false, true];
                app.LoadingFactorSpinner.Enable = true;
                app.CheckLoadingButton.Enable = false;
                CheckIfAnalysisSetupIsComplete(app);
                app.RunAnalysisButton.Enable = false;
            else
                [loadingName, matName, ~, ~, ~, ~, ~] = getParametersFromAnalysisName(app, value);
                app.analysisFolder = fullfile(app.meshFolder, value);
                load(fullfile(app.analysisFolder, 'analysisSettings.mat'));
                if ~isfield(Growth, 'factor')
                    Growth.factor = 0.0001;
                end
                if ~isfield(Loading, 'factor')
                    Loading.factor = 1;
                end
                if ~isfield(Growth, 'avoidNegativeGrowth')
                    Growth.avoidNegativeGrowth = false;
                end
                if ~isfield(Growth, 'bioIsDoubleMechanical')
                    Growth.bioIsDoubleMechanical = false;
                end
                if ~isfield(Growth, 'useThermalExpansionwithAbaqus')
                    Growth.useThermalExpansionwithAbaqus = false;
                end
                if ~exist('clamping', 'var')
                    clamping = 'default';
                    app.ClampingDropDown.Value = clamping;
                else
                    app.ClampingDropDown.Value = clamping;
                end
                if ~exist('distal', 'var') || distal == 0
                    distal = 0;
                    app.DistalorProximalDropDown.Value = 'Proximal';
                else
                    app.DistalorProximalDropDown.Value = 'Distal';
                end

                settings_selectedAnalysis = value;
                save(fullfile(app.appDir, 'settings.mat'), 'settings_selectedAnalysis','-append');

                app.MaterialsParametersTable.Data = {'GROWTHPLATE' Materials.GROWTHPLATE.E Materials.GROWTHPLATE.v; ...
                    'TRAB_PROX' Materials.TRAB_PROX.E Materials.TRAB_PROX.v; ...
                    'CORTICAL' Materials.CORTICAL.E Materials.CORTICAL.v; ...
                    'MARROW' Materials.MARROW.E Materials.MARROW.v; ...
                    'TRAB_DIST' Materials.TRAB_DIST.E Materials.TRAB_DIST.v};
                app.GrowthParametersTable.Data = {'a', Growth.a; ...
                    'b', Growth.b;...
                    'biological growth', Growth.bio;...
                    'growth factor', Growth.factor; ...
                    'nr of growth iterations', Growth.nr_of_iterations};
                app.selectloadingfileLabel.Text = fullfile(app.analysisFolder, 'loading.mat');
                app.GrowthMethodDropDown.Value = Growth.method;
                app.avoidnegativegrowthCheckBox.Value = Growth.avoidNegativeGrowth;
                app.biologicalgrowth2mechanicalgrowthCheckBox.Value = Growth.bioIsDoubleMechanical;
                app.useThermalExpansionwithAbaqusforgrowthCheckBox.Value = Growth.useThermalExpansionwithAbaqus;
                app.LoadingNameEditField.Value = loadingName;
                app.MaterialNameEditField.Value = matName;

                app.MaterialsParametersTable.ColumnEditable = [false, false, false];
                app.GrowthParametersTable.ColumnEditable = [false, false];
                app.LoadingFactorSpinner.Enable = false;
                app.LoadingFactorSpinner.Value = Loading.factor;

                CheckIfAnalysisSetupIsComplete(app);

                if isfile(fullfile(app.analysisFolder, 'analysisResults.mat'))
                    load(fullfile(app.analysisFolder, 'analysisResults.mat'), 'AVA');
                    if size(AVA, 1) == Growth.nr_of_iterations + 1
                        app.StatusLamp.Color = [0 1 0];
                        app.StatusLampLabel.Text = 'Analysis run successfully';
                    else
                        app.StatusLamp.Color = [0.9290 0.6940 0.1250];
                        app.StatusLampLabel.Text = ['Analysis aborted during iteration ' num2str(size(AVA, 1))];
                    end
                else
                    app.StatusLamp.Color = 	[1 0 0];
                    app.StatusLampLabel.Text = 'Analysis not run yet';
                end

                if ~strcmp(Loading.Apply, 'all')
                    if strcmp(Loading.Apply, 'x')
                        app.xantpostCheckBox.Value = 1;
                        app.ysupinfCheckBox.Value = 0;
                        app.zlatmedCheckBox.Value = 0;
                    elseif strcmp(Loading.Apply, 'y')
                        app.xantpostCheckBox.Value = 0;
                        app.ysupinfCheckBox.Value = 1;
                        app.zlatmedCheckBox.Value = 0;
                    elseif strcmp(Loading.Apply, 'z')
                        app.xantpostCheckBox.Value = 0;
                        app.ysupinfCheckBox.Value = 0;
                        app.zlatmedCheckBox.Value = 1;
                    end
                else
                    app.xantpostCheckBox.Value = 0;
                    app.ysupinfCheckBox.Value = 0;
                    app.zlatmedCheckBox.Value = 0;
                end

                app.RunAnalysisButton.Enable = true;
            end
        end

        % Value changed function: 
        % AvailableParticipantsinthisdatafolderListBox
        function AvailableParticipantsinthisdatafolderListBoxValueChanged(app, event)
            value = app.AvailableParticipantsinthisdatafolderListBox.Value;
            if isempty(value) || strcmp(value, 'Create new')
                app.ParticipantIdentifierEditField.Value = 'TDxx';
                app.LeftRightFemurDropDown.Value = 'select';
                app.CheckthegeometryButton.Enable = false;

                app.ParticipantIdentifierEditField.Editable = true;
                app.LeftRightFemurDropDown.Enable = true;
                app.SegmentationPath.Text = 'select folder containing MRI data';
                app.CheckthegeometryButton.BackgroundColor = [0.96 0.96 0.96];
                app.Meshesforthisparticipant0Label.Text = '# Meshes for this participant: 0';
                app.Analysisforthisparticipant0Label.Text = '# Analysis for this participant: 0';
            else
                try
                    i = strfind(value, '_');
                    app.ParticipantIdentifierEditField.Value = value(1 : i(1)-1);
                    app.LeftRightFemurDropDown.Value = value(i(1)+1 : end);
                    settings_selectedProband = value;
                    save(fullfile(app.appDir, 'settings.mat'), 'settings_selectedProband','-append');

                    app.probandFolder = fullfile(app.workingDirectory, settings_selectedProband);
                    load(fullfile(app.probandFolder, 'settings.mat'));
                    app.SegmentationPath.Text = oldSegPath;

                    app.CheckthegeometryButton.Enable = true;

                    app.ParticipantIdentifierEditField.Editable = false;
                    app.LeftRightFemurDropDown.Enable = false;
                    app.SelectfoldercontainingMRIdataSTLfilesButton.Enable = false;
                    app.CheckthegeometryButton.BackgroundColor = [0.96 0.96 0.96];


                    meshes = GetSubDirsFirstLevelOnly(app.probandFolder);
                    meshes = meshes(~contains(meshes, 'Segmentation'));
                    analysisCount = 0;
                    for i = 1 : numel(meshes)
                        analysis = GetSubDirsFirstLevelOnly(fullfile(app.probandFolder, meshes{i}));
                        analysis = analysis(~contains(analysis, 'Mesh'));
                        analysisCount = analysisCount + numel(analysis);
                    end

                    app.Meshesforthisparticipant0Label.Text = ['# Meshes for this participant: ' num2str(numel(meshes))];
                    app.Analysisforthisparticipant0Label.Text = ['# Analysis for this participant: ' num2str(analysisCount)];

                catch
                    warnHandle = warndlg('This is not a proper folder. Folder name should be like "TDO1_R" and it must contain a proper settings.mat file!');
                    figure(warnHandle);
                    waitfor(warnHandle);                 figure(app.GPToolAtoolboxUIFigure);
                    app.AvailableParticipantsinthisdatafolderListBox.Value = 'Create new';
                    AvailableParticipantsinthisdatafolderListBoxValueChanged(app, 0);
                    app.Meshesforthisparticipant0Label.Text = '# Meshes for this participant: 0';
                    app.Analysisforthisparticipant0Label.Text = '# Analysis for this participant: 0';
                end
            end
        end

        % Button pushed function: 
        % SelectfoldercontainingMRIdataSTLfilesButton
        function SelectfoldercontainingMRIdataSTLfilesButtonPushed(app, event)
            segFolder = uigetdir(app.latestSelectedFolder);
            drawnow;
            figure(app.GPToolAtoolboxUIFigure);
            if segFolder ~= 0
                % check if all stl files are available in this folder
                app.latestSelectedFolder = segFolder;
                allSub = dir(segFolder);
                fileFlags = [allSub.isdir];
                files = allSub(~fileFlags);
                stlFileNames = [];
                for k = 1 : length(files)
                    if contains(files(k).name, '.stl')
                        stlFileNames{end + 1} = files(k).name;
                    end
                end
                lowerCaseFileNames = lower(stlFileNames);
                side = lower(app.LeftRightFemurDropDown.Value);
                app.STL.path = segFolder;
                if length(lowerCaseFileNames) < 9
                    warnHandle = warndlg(['Not all files existing or naming is wrong! Names have to be like "' side '_femur.stl", "' side '_prox.stl", "' side '_prox_2.stl", "' side '_head.stl", "' side '_dist.stl", "' side '_dist_2.stl", "' side '_marrow.stl", "' side '_cortical.stl" and "' side '_cortical_2.stl"']);
                    figure(warnHandle);
                    waitfor(warnHandle);                 figure(app.GPToolAtoolboxUIFigure);
                    app.CheckthegeometryButton.Enable = false;
                else
                    app.STL.femur = stlFileNames(contains(lowerCaseFileNames, [side '_femur.stl']));
                    app.STL.prox = stlFileNames(contains(lowerCaseFileNames, [side '_prox.stl']));
                    app.STL.prox_2 = stlFileNames(contains(lowerCaseFileNames, [side '_prox_2.stl']));
                    app.STL.head = stlFileNames(contains(lowerCaseFileNames, [side '_head.stl']));
                    app.STL.dist = stlFileNames(contains(lowerCaseFileNames, [side '_dist.stl']));
                    if app.includesdistalGPCheckBox.Value
                        app.STL.dist_2_top = stlFileNames(contains(lowerCaseFileNames, [side '_dist_2_nogp_top.stl']));
                        app.STL.dist_2_bottom = stlFileNames(contains(lowerCaseFileNames, [side '_dist_2_nogp_bottom.stl']));
                    else
                        app.STL.dist_2 = stlFileNames(contains(lowerCaseFileNames, [side '_dist_2.stl']));
                    end
                    app.STL.marrow = stlFileNames(contains(lowerCaseFileNames, [side '_marrow.stl']));
                    app.STL.cortical = stlFileNames(contains(lowerCaseFileNames, [side '_cortical.stl']));
                    app.STL.cortical_2 = stlFileNames(contains(lowerCaseFileNames, [side '_cortical_2.stl']));
                    if any( structfun(@isempty, app.STL) )
                        %CHANGE
                        warnHandle = warndlg(['Not all files existing or naming is wrong! Names have to be like "' side '_femur.stl", "' side '_prox.stl", "' side '_prox_2.stl", "' side '_head.stl", "' side '_dist.stl", "' side '_dist_2.stl", "' side '_marrow.stl", "' side '_cortical.stl" and "' side '_cortical_2.stl"']);
                        figure(warnHandle);
                        waitfor(warnHandle);                 figure(app.GPToolAtoolboxUIFigure);
                        app.CheckthegeometryButton.Enable = false;
                    else
                        app.SegmentationPath.Text = segFolder;
                        app.CheckthegeometryButton.Enable = true;
                    end
                end
            else
                warnHandle = warndlg('nothing selected');
                figure(warnHandle);
                waitfor(warnHandle);
                figure(app.GPToolAtoolboxUIFigure);
            end
        end

        % Value changed function: LeftRightFemurDropDown
        function LeftRightFemurDropDownValueChanged(app, event)
            value = app.LeftRightFemurDropDown.Value;
            if ~strcmp(value, 'select')
                app.SelectfoldercontainingMRIdataSTLfilesButton.Enable = true;
                app.SegmentationPath.Text = 'select folder containing MRI data';
            else
                app.SelectfoldercontainingMRIdataSTLfilesButton.Enable = false;
                app.SegmentationPath.Text = 'select folder containing MRI data';
            end
        end

        % Callback function
        function SetupthisProbandButtonPushed(app, event)
            newFolderName = fullfile(app.workingDirectory, [app.ParticipantIdentifierEditField.Value '_' app.LeftRightFemurDropDown.Value]);
            if exist(newFolderName, 'dir')
                warnHandle = warndlg('This folder is already existing in this directory!');
                figure(warnHandle);
                waitfor(warnHandle);
                figure(app.GPToolAtoolboxUIFigure);
            else
                mkdir(newFolderName);
                newSegFolder = fullfile(newFolderName, 'Segmentation');
                side = app.LeftRightFemurDropDown.Value;
                mkdir(newSegFolder);
                oldSegPath = app.SegmentationPath.Text;

                % calculate rotation matrix that growth plate is parallel
                % to X/Y plane --> this is necessary for sculpt meshing
                if isprop(app, 'newProbandGeometry') && ~isempty(app.newProbandGeometry) ...
                        && isfield(app.newProbandGeometry, 'neckAxisCutOff') && isfield(app.newProbandGeometry, 'firstGuessNeckAxis') ...
                        && isfield(app.newProbandGeometry, 'headTranslation') && isfield(app.newProbandGeometry, 'rot_matrix')

                    d = uiprogressdlg(app.GPToolAtoolboxUIFigure,'Title', 'Preparing STL files', 'Message', 'Rotation all STL files');

                    parts = fieldnames(app.STL);
                    parts = parts(~contains(parts, 'path'));

                    if isfield(app.newProbandGeometry, 'distScaling')
                        stlStruct = import_STL(fullfile(oldSegPath, app.STL.dist_2_bottom{1}));
                        stlStruct.solidNormals={[]};
                        stlStruct.solidVertices{1, 1} = (app.newProbandGeometry.dist_rot_matrix*stlStruct.solidVertices{1, 1}')';
                        stlStruct.solidVertices{1, 1}(:, 1) = (stlStruct.solidVertices{1, 1}(:, 1) - app.newProbandGeometry.distScaling.bottomMinX) / app.newProbandGeometry.distScaling.scaleX + app.newProbandGeometry.distScaling.topMinX;
                        stlStruct.solidVertices{1, 1}(:, 2) = (stlStruct.solidVertices{1, 1}(:, 2) - app.newProbandGeometry.distScaling.bottomMinY) / app.newProbandGeometry.distScaling.scaleY + app.newProbandGeometry.distScaling.topMinY;
                        stlStruct.solidVertices{1, 1} = stlStruct.solidVertices{1, 1} - app.newProbandGeometry.distTranslation;

                        stlStruct.solidNormals={[]};
                        tri = triangulation(stlStruct.solidFaces{1,1}, stlStruct.solidVertices{1,1});
                        stlwrite(tri, fullfile(newSegFolder, [side '_dist_2_bottom_rotated_moved.stl']));

                        bottomStlStruct = import_STL(fullfile(newSegFolder, [side '_dist_2_bottom_rotated_moved.stl']));

                        nodes = bottomStlStruct.solidVertices{1, 1};
                        bottomFaces = bottomStlStruct.solidFaces{1, 1};
                        bottomNormals = bottomStlStruct.solidNormals{1, 1};
                        zDirBottom = bottomFaces(bottomNormals(:, 3) > 0.7, :);

                        nodeIDsInBottomSurface = unique(zDirBottom);
                        nodesInBottomSurface = nodes(nodeIDsInBottomSurface, :);
                        minZCoordinateOfDistGP = min(nodesInBottomSurface(:, 3));
                        maxZCoordinateOfDistGP = max(nodesInBottomSurface(:, 3));
                        minZCoordinateOfDistGP = minZCoordinateOfDistGP - (maxZCoordinateOfDistGP-minZCoordinateOfDistGP) * 0.25;
                        maxZCoordinateOfDistGP = maxZCoordinateOfDistGP + (maxZCoordinateOfDistGP-minZCoordinateOfDistGP) * 0.25;
                        meanZCoordinateOfDistGP = mean(nodesInBottomSurface(:, 3));


                        % we have to rotate the dist_2_top also to make the edge smoother with Meshlab
                        stlStruct = import_STL(fullfile(oldSegPath, app.STL.dist_2_top{1}));
                        stlStruct.solidNormals={[]};
                        stlStruct.solidVertices{1, 1} = (app.newProbandGeometry.dist_rot_matrix*stlStruct.solidVertices{1, 1}')';
                        stlStruct.solidNormals={[]};
                        tri = triangulation(stlStruct.solidFaces{1,1}, stlStruct.solidVertices{1,1});
                        stlwrite(tri, fullfile(newSegFolder, [side '_dist_2_top_moved.stl']));

                        fid = fopen(fullfile(app.appDir, 'checkMeshPython', 'pythonArgs.txt'), 'w');
                        fwrite(fid, [newSegFolder filesep newline]);
                        fwrite(fid, [num2str(minZCoordinateOfDistGP) newline]);
                        fwrite(fid, [num2str(maxZCoordinateOfDistGP) newline]);
                        fwrite(fid, side);
                        fclose(fid);

                        pythonFile = fullfile(app.appDir, 'checkMeshPython', 'meshlabSmoothenTransitionDistal.py');
                        runPythonScriptAndWaitForFinish(app, pythonFile, 'Smoothing transition zone');

                        stlStruct = import_STL(fullfile(newSegFolder, [side '_dist_2_top_moved_smoothed.stl']));
                        stlStruct.solidNormals={[]};
                        stlStruct.solidVertices{1, 1} = (app.newProbandGeometry.dist_rot_matrix' * stlStruct.solidVertices{1, 1}')';
                        stlStruct.solidVertices{1, 1} = (app.newProbandGeometry.rot_matrix * stlStruct.solidVertices{1, 1}')';
                        stlStruct.solidNormals={[]};
                        tri = triangulation(stlStruct.solidFaces{1,1}, stlStruct.solidVertices{1,1});
                        stlwrite(tri, fullfile(newSegFolder, [side '_dist_2_top_smoothed.stl']));


                        stlStruct = import_STL(fullfile(newSegFolder, [side '_dist_2_bottom_moved_smoothed.stl']));
                        stlStruct.solidNormals={[]};
                        stlStruct.solidVertices{1, 1} = (app.newProbandGeometry.dist_rot_matrix' * stlStruct.solidVertices{1, 1}')';
                        stlStruct.solidVertices{1, 1} = (app.newProbandGeometry.rot_matrix * stlStruct.solidVertices{1, 1}')';
                        stlStruct.solidNormals={[]};
                        tri = triangulation(stlStruct.solidFaces{1,1}, stlStruct.solidVertices{1,1});
                        stlwrite(tri, fullfile(newSegFolder, [side '_dist_2_bottom_smoothed.stl']));

                        includeDistalGP = 1;
                    else
                        includeDistalGP = 0;
                    end

                    for i = 1 : numel(parts)
                        d.Message = ['Rotating and exporting file ' num2str(i) ' from ' num2str(numel(fieldnames(app.STL)) - 1)];
                        d.Value = d.Value + 0.1;

                        % ignore dist_2_bottom and dist_2_top, they are
                        % already treated before the for loop
                        if ~contains(parts{i}, 'dist_2_bottom') && ~contains(parts{i}, 'dist_2_top')

                            stlStruct = import_STL(fullfile(oldSegPath, app.STL.(parts{i}){1}));
                            stlStruct.solidNormals={[]};
                            stlStruct.solidVertices{1, 1} = (app.newProbandGeometry.rot_matrix*stlStruct.solidVertices{1, 1}')';
                            tri = triangulation(stlStruct.solidFaces{1,1}, stlStruct.solidVertices{1,1});
                            stlwrite(tri, fullfile(newSegFolder, [side '_' parts{i} '.stl']));
                            if contains(parts{i}, 'head')
                                headStlStruct = import_STL(fullfile(newSegFolder, [side '_' parts{i} '.stl']));
                                headStlStruct.solidVertices{1, 1} = headStlStruct.solidVertices{1, 1} + app.newProbandGeometry.headTranslation;
                                nodes = headStlStruct.solidVertices{1, 1};
                                headFaces = headStlStruct.solidFaces{1, 1};
                                headNormals = headStlStruct.solidNormals{1, 1};
                                zDirHead = headFaces(headNormals(:, 3) < -0.7, :);

                                nodeIDsInBottomSurface = unique(zDirHead);
                                nodesInBottomSurface = nodes(nodeIDsInBottomSurface, :);
                                minZCoordinateOfGP = min(nodesInBottomSurface(:, 3));
                                maxZCoordinateOfGP = max(nodesInBottomSurface(:, 3));
                                minZCoordinateOfGP = minZCoordinateOfGP - (maxZCoordinateOfGP-minZCoordinateOfGP) * 0.25;
                                maxZCoordinateOfGP = maxZCoordinateOfGP + (maxZCoordinateOfGP-minZCoordinateOfGP) * 0.25;
                                meanZCoordinateOfGP = mean(nodesInBottomSurface(:, 3));

                                headStlStruct.solidNormals={[]};
                                tri = triangulation(headStlStruct.solidFaces{1,1}, headStlStruct.solidVertices{1,1});
                                stlwrite(tri, fullfile(newSegFolder, [side '_' parts{i} '_moved.stl']));
                            end

                        end
                    end

                    % now smoothen the head/prox transition zone with meshlab so that there
                    % are no islands and bad edges when meshing

                    %% Write folder to pythonArgs.txt because winopen cannot use arguments...
                    fid = fopen(fullfile(app.appDir, 'checkMeshPython', 'pythonArgs.txt'), 'w');
                    fwrite(fid, [newSegFolder filesep newline]);
                    fwrite(fid, [num2str(minZCoordinateOfGP) newline]);
                    fwrite(fid, [num2str(maxZCoordinateOfGP) newline]);
                    fwrite(fid, side);
                    fclose(fid);

                    pythonFile = fullfile(app.appDir, 'checkMeshPython', 'meshlabSmoothenTransition.py');
                    runPythonScriptAndWaitForFinish(app, pythonFile, 'Smoothing transition zone');

                    close(d);

                    p_id = app.ParticipantIdentifierEditField.Value;
                    rot_matrix = app.newProbandGeometry.rot_matrix;
                    neckAxisCutOff = app.newProbandGeometry.neckAxisCutOff;
                    headTranslation = app.newProbandGeometry.headTranslation;
                    firstGuessNeckAxis = app.newProbandGeometry.firstGuessNeckAxis;
                    giboc_method = app.newProbandGeometry.giboc_method;
                    try
                        dist_rot_matrix = app.newProbandGeometry.dist_rot_matrix;
                        distTranslation = app.newProbandGeometry.distTranslation;
                        distScaling = app.newProbandGeometry.distScaling;
                    catch
                        dist_rot_matrix = [];
                        distTranslation = [];
                        distScaling = [];
                        meanZCoordinateOfDistGP = [];
                        minZCoordinateOfDistGP = [];
                        maxZCoordinateOfDistGP = [];
                    end


                    save(fullfile(newFolderName, 'settings.mat'), 'p_id', 'side', 'oldSegPath', 'rot_matrix', ...
                        'neckAxisCutOff', 'headTranslation', 'firstGuessNeckAxis', 'meanZCoordinateOfGP', 'minZCoordinateOfGP', 'maxZCoordinateOfGP', 'giboc_method', ...
                        'includeDistalGP', 'dist_rot_matrix', 'distTranslation', 'distScaling', 'meanZCoordinateOfDistGP', 'minZCoordinateOfDistGP', 'maxZCoordinateOfDistGP');

                    warnHandle = msgbox('Setup was successful, please continue now with the Meshes Tab.');
                    figure(warnHandle);
                    waitfor(warnHandle);
                    figure(app.GPToolAtoolboxUIFigure);

                    app.AvailableParticipantsinthisdatafolderListBox.Items{end+1} = [app.ParticipantIdentifierEditField.Value '_' app.LeftRightFemurDropDown.Value];
                    app.AvailableParticipantsinthisdatafolderListBox.Value = [app.ParticipantIdentifierEditField.Value '_' app.LeftRightFemurDropDown.Value];
                    app.TabGroup.SelectedTab = app.MeshesTab;
                    app.probandFolder = newFolderName;
                    MeshesTabButtonDown(app, 0);
                else
                    warnHandle = warndlg('Run "Check the Geometry" first!');
                    figure(warnHandle);
                    waitfor(warnHandle);
                    figure(app.GPToolAtoolboxUIFigure);

                end
            end
        end

        % Button down function: MeshesTab
        function MeshesTabButtonDown(app, event)
            value = app.AvailableParticipantsinthisdatafolderListBox.Value;
            if isempty(value) || strcmp(value, 'Create new')
                warnHandle = warndlg('Select a participant first!');
                figure(warnHandle);
                waitfor(warnHandle);
                figure(app.GPToolAtoolboxUIFigure);

                app.TabGroup.SelectedTab = app.ParticipantsTab;
            else
                app.ParticipantLabel.Text = ['Participant identifier: ' app.AvailableParticipantsinthisdatafolderListBox.Value];
                app.SideLabel.Text = ['Side: ' app.LeftRightFemurDropDown.Value];

                app.probandFolder = fullfile(app.workingDirectory, app.AvailableParticipantsinthisdatafolderListBox.Value);
                load(fullfile(app.probandFolder, 'settings.mat'));

                app.AnteversionAngleLabel.Text = 'Anteversion Angle = create Mesh to calculate';
                app.NeckShaftAngleLabel.Text = 'Neck-Shaft Angle = create Mesh to calculate';

                setMeshListForProband(app);
                AvailableMeshesinthisdirectoryListBoxValueChanged(app, 0)
            end
        end

        % Button down function: ParticipantsTab
        function ParticipantsTabButtonDown(app, event)
            setProbandListForWorkingDir(app);
        end

        % Button pushed function: 
        % SelectmatwithLoadingMuscleForcesandDirectionsButton
        function SelectmatwithLoadingMuscleForcesandDirectionsButtonPushed(app, event)
            [loadingFile, path] = uigetfile(fullfile(app.latestSelectedFolder, '*.mat'), 'MultiSelect',"off");
            drawnow;
            figure(app.GPToolAtoolboxUIFigure);
            if loadingFile ~= 0
                app.selectloadingfileLabel.Text = fullfile(path, loadingFile);
                app.tmp_loadingPath = path;
                app.CheckLoadingButton.BackgroundColor = [0.96 0.96 0.96];
                app.CheckLoadingButton.Text = 'Check';
                app.latestSelectedFolder = path;
            end
            CheckIfAnalysisSetupIsComplete(app);
        end

        % Value changed function: LoadingNameEditField
        function LoadingNameEditFieldValueChanged(app, event)
            CheckIfAnalysisSetupIsComplete(app);
        end

        % Value changed function: MaterialNameEditField
        function MaterialNameEditFieldValueChanged(app, event)
            CheckIfAnalysisSetupIsComplete(app);
        end

        % Button pushed function: CreatethisanalysisButton
        function CreatethisanalysisButtonPushed(app, event)
            [~, rows, transitionRows] = getParametersFromMeshName(app, app.AvailableMeshesinthisdirectoryListBox.Value);
            gp_rows = rows - 2*transitionRows;
            if gp_rows < app.GrowthParametersTable.Data{5, 2}
                warnHandle = warndlg('Iterations cannot be more than rows in GP (without transition)! Use less iterations or create a mesh with more rows');
                figure(warnHandle);
                waitfor(warnHandle);
                figure(app.GPToolAtoolboxUIFigure);
            else
                if app.biologicalgrowth2mechanicalgrowthCheckBox.Value
                    bioGrowthString = 'double';
                else
                    bioGrowthString = num2str(app.GrowthParametersTable.Data{3, 2});
                end
                if app.LoadingFactorSpinner.Value == 1
                    analysisName = [app.LoadingNameEditField.Value '_' app.MaterialNameEditField.Value ...
                        '_a_' num2str(app.GrowthParametersTable.Data{1, 2}) '_b_' num2str(app.GrowthParametersTable.Data{2, 2}) '_bio_' bioGrowthString ...
                        '_f_' num2str(app.GrowthParametersTable.Data{4, 2}) '_iter_' num2str(app.GrowthParametersTable.Data{5, 2}) '_' app.GrowthMethodDropDown.Value];
                else
                    analysisName = [app.LoadingNameEditField.Value num2str(app.LoadingFactorSpinner.Value) '_' app.MaterialNameEditField.Value ...
                        '_a_' num2str(app.GrowthParametersTable.Data{1, 2}) '_b_' num2str(app.GrowthParametersTable.Data{2, 2}) '_bio_' bioGrowthString ...
                        '_f_' num2str(app.GrowthParametersTable.Data{4, 2}) '_iter_' num2str(app.GrowthParametersTable.Data{5, 2}) '_' app.GrowthMethodDropDown.Value];
                end

                if app.avoidnegativegrowthCheckBox.Value
                    analysisName = [analysisName '_nz'];
                end

                if app.useThermalExpansionwithAbaqusforgrowthCheckBox.Value
                    analysisName = [analysisName '_Abaqus'];
                end

                if ~strcmp(app.ClampingDropDown.Value, 'default')
                    analysisName = [analysisName '_' app.ClampingDropDown.Value];
                end

                if strcmp(app.DistalorProximalDropDown.Value, 'Distal')
                    analysisName = [analysisName '_distal'];
                    distal = 1;
                else
                    distal = 0;
                end


                if exist(fullfile(app.meshFolder, analysisName), 'dir')
                    try
                        rmdir(fullfile(app.meshFolder, analysisName), 's');
                    end
                    % warnHandle = warndlg('Analysis with the same name is already available. Use different material or loading name!');
                    % figure(warnHandle);
                    % waitfor(warnHandle);
                    % figure(app.GPToolAtoolboxUIFigure);
                end
                % else
                    if ~strcmp(app.CheckLoadingButton.Text, 'Checked')
                        CheckLoadingButtonPushed(app, 0);
                    end

                    if strcmp(app.CheckLoadingButton.Text, 'Checked')
                        app.analysisFolder = fullfile(app.meshFolder, analysisName);
                        mkdir(app.analysisFolder);
                        analysisSettingsFile = fullfile(app.analysisFolder, 'analysisSettings.mat');

                        copyfile(app.selectloadingfileLabel.Text, fullfile(app.analysisFolder, 'loading.mat'));
                        load(fullfile(app.probandFolder, 'settings.mat'));
                        load(fullfile(app.analysisFolder, 'loading.mat'));

                        if strcmp(app.DistalorProximalDropDown.Value, 'Distal')
                            distal = 1;
                        else
                            distal = 0;
                        end
                        names = fieldnames( muscleAttachments );
                        subStr = ['on_femur_' lower(side)];
                        attachmentsOnFemur = rmfield( muscleAttachments, names( find( cellfun( @isempty, strfind( names , subStr ) ) ) ) );
                        attachmentsOnFemur = orderfields(attachmentsOnFemur); % be sure that fields are in correct order - one muscle has X / Y / Z forces

                        names = fieldnames( muscleDirections );
                        directionsOnFemur = rmfield( muscleDirections, names( find( cellfun( @isempty, strfind( names , subStr ) ) ) ) );
                        directionsOnFemur = orderfields(directionsOnFemur); % be sure that fields are in correct order - one muscle has X / Y / Z forces

                        % rename fields - splice number after X/Y/Z
                        newFieldnames = fieldnames(attachmentsOnFemur);
                        for i = 1 : numel(newFieldnames)
                            newFieldnames{i}(end - 11) = [];
                        end
                        attachmentsOnFemur = cell2struct(struct2cell(attachmentsOnFemur), newFieldnames);
                        directionsOnFemur = cell2struct(struct2cell(directionsOnFemur), newFieldnames);

                        %
                        muscleNames = fieldnames(directionsOnFemur);
                        for i = 1 : numel(muscleNames)
                            muscleNames{i} = muscleNames{i}(1:end-13);
                        end
                        muscleNames = unique(muscleNames);

                        save(fullfile(app.analysisFolder, 'loading.mat'), 'attachmentsOnFemur', 'directionsOnFemur', 'muscleNames', '-append');

                        if app.xantpostCheckBox.Value
                            Loading.Apply = 'x';
                        elseif app.ysupinfCheckBox.Value
                            Loading.Apply = 'y';
                        elseif app.zlatmedCheckBox.Value
                            Loading.Apply = 'z';
                        else
                            Loading.Apply = 'all';
                        end

                        Loading.factor = app.LoadingFactorSpinner.Value;

                        Materials.GROWTHPLATE.E = app.MaterialsParametersTable.Data{1, 2};
                        Materials.GROWTHPLATE.v = app.MaterialsParametersTable.Data{1, 3};

                        Materials.TRAB_PROX.E = app.MaterialsParametersTable.Data{2, 2};
                        Materials.TRAB_PROX.v = app.MaterialsParametersTable.Data{2, 3};

                        Materials.CORTICAL.E = app.MaterialsParametersTable.Data{3, 2};
                        Materials.CORTICAL.v = app.MaterialsParametersTable.Data{3, 3};

                        Materials.MARROW.E = app.MaterialsParametersTable.Data{4, 2};
                        Materials.MARROW.v = app.MaterialsParametersTable.Data{4, 3};

                        Materials.TRAB_DIST.E = app.MaterialsParametersTable.Data{5, 2};
                        Materials.TRAB_DIST.v = app.MaterialsParametersTable.Data{5, 3};

                        clamping = app.ClampingDropDown.Value;

                        Growth.a = app.GrowthParametersTable.Data{1, 2};
                        Growth.b = app.GrowthParametersTable.Data{2, 2};
                        Growth.bio = app.GrowthParametersTable.Data{3, 2};
                        Growth.factor = app.GrowthParametersTable.Data{4, 2};
                        Growth.nr_of_iterations = app.GrowthParametersTable.Data{5, 2};
                        Growth.method = app.GrowthMethodDropDown.Value;
                        Growth.avoidNegativeGrowth = app.avoidnegativegrowthCheckBox.Value;
                        Growth.bioIsDoubleMechanical = app.biologicalgrowth2mechanicalgrowthCheckBox.Value;
                        Growth.useThermalExpansionwithAbaqus = app.useThermalExpansionwithAbaqusforgrowthCheckBox.Value;

                        save(analysisSettingsFile, 'Materials', 'Growth', 'Loading', 'distal', 'clamping');

                        setAnalysisListForMesh(app);

                        app.AvailableAnalysisinthisdirectoryListBox.Value = analysisName;

                        app.StatusLamp.Color = 	[1 0 0];
                        app.StatusLampLabel.Text = 'Analysis not run yet';

                        app.RunAnalysisButton.Enable = true;
                    end
                % end
            end
        end

        % Button pushed function: CheckLoadingButton
        function CheckLoadingButtonPushed(app, event)
            load(fullfile(app.probandFolder, 'settings.mat'), 'side');

            try
                f = figure; hold on;
                load(app.selectloadingfileLabel.Text);
                if strcmp(app.DistalorProximalDropDown.Value, 'Proximal')
                    JCFfieldName = ['hip_' lower(side) '_on_femur_' lower(side) '_in_femur_' lower(side) '_f'];
                    % app.DistalorProximalDropDown.Value = 'Proximal';
                else
                    %CHANGE
                    JCFfieldName = ['Lerner_knee_' lower(side) '_on_sagittal_articulation_frame_' lower(side) '_in_femur_' lower(side) '_f'];
                    % app.DistalorProximalDropDown.Value = 'Distal';
                end
                if app.xantpostCheckBox.Value
                    title('only x');
                    JCF_fullCycle = jrl.([JCFfieldName 'x']);
                elseif app.ysupinfCheckBox.Value
                    title('only y');
                    JCF_fullCycle = jrl.([JCFfieldName 'y']);
                elseif app.zlatmedCheckBox.Value
                    title('only z');
                    JCF_fullCycle = jrl.([JCFfieldName 'z']);
                else
                    JCF_fullCycle = sqrt(jrl.([JCFfieldName 'x']).^2 + jrl.([JCFfieldName 'y']).^2 + jrl.([JCFfieldName 'z']).^2);
                end

                plot(JCF_fullCycle);
                ylabel('JCF [N]');
                xlabel('% of gait cycle');
                plot(loadIndizes, JCF_fullCycle(loadIndizes), 'r*');
                plot([loadIndizes(9) loadIndizes(9)], [0 max(JCF_fullCycle)], 'b-');

                loadingTexts = {'Foot contact', '1^{st} peak', 'Valley between 1^{st} and 2^{nd} peaks', '2^{nd} peak' 'Foot Off'};
                for i = 1 : 5
                    text(loadIndizes(i*2-1), JCF_fullCycle(loadIndizes(i*2-1)), loadingTexts{i}, 'HorizontalAlignment', 'center', 'VerticalAlignment', 'top')
                end

                answer = 'Yes'; %questdlg('Are the load instances correct?', 'Loading correct?', 'Yes', 'No', 'Yes');
                figure(app.GPToolAtoolboxUIFigure);
                if strcmp(answer, 'Yes')
                    app.CheckLoadingButton.BackgroundColor = [0.4660 0.6740 0.1880];
                    app.CheckLoadingButton.Text = 'Checked';
                else
                    app.CheckLoadingButton.BackgroundColor = [0.96 0.96 0.96];
                    app.CheckLoadingButton.Text = 'Check';
                end
                close(f);
            catch
                warnHandle = warndlg('Something went wrong. Be sure to select a mat file containing "jrl", "mf", "md", "loadIndizes" variables');
                figure(warnHandle);
                waitfor(warnHandle);                 figure(app.GPToolAtoolboxUIFigure);
                app.CheckLoadingButton.BackgroundColor = [0.96 0.96 0.96];
                app.CheckLoadingButton.Text = 'Check';
                try %#ok<TRYNC>
                    close(f);
                end
            end
        end

        % Value changed function: xantpostCheckBox
        function xantpostCheckBoxValueChanged(app, event)
            value = app.xantpostCheckBox.Value;
            if value
                app.ysupinfCheckBox.Value = false;
                app.zlatmedCheckBox.Value = false;
                app.CheckLoadingButton.BackgroundColor = [0.96 0.96 0.96];
                app.CheckLoadingButton.Text = 'Check';
            end
        end

        % Value changed function: ysupinfCheckBox
        function ysupinfCheckBoxValueChanged(app, event)
            value = app.ysupinfCheckBox.Value;
            if value
                app.xantpostCheckBox.Value = false;
                app.zlatmedCheckBox.Value = false;
                app.CheckLoadingButton.BackgroundColor = [0.96 0.96 0.96];
                app.CheckLoadingButton.Text = 'Check';
            end
        end

        % Value changed function: zlatmedCheckBox
        function zlatmedCheckBoxValueChanged(app, event)
            value = app.zlatmedCheckBox.Value;
            if value
                app.xantpostCheckBox.Value = false;
                app.ysupinfCheckBox.Value = false;
                app.CheckLoadingButton.BackgroundColor = [0.96 0.96 0.96];
                app.CheckLoadingButton.Text = 'Check';
            end
        end

        % Button pushed function: RunAnalysisButton
        function RunAnalysisButtonPushed(app, event)
            load(fullfile(app.analysisFolder, 'analysisSettings.mat'), 'Growth', 'distal', 'clamping');

            if ~exist('distal', 'var')
                distal = 0;
            end
            if ~exist('clamping', 'var')
                clamping = 'default';
            end

            answer = 'Yes'; %questdlg(['Are you sure that you want to run this analysis? This takes about 10-15 minutes for each iteration, so in total about ' num2str(Growth.nr_of_iterations * 10) ' minutes.'], 'Are you sure?', 'Yes', 'No', 'Yes');
            figure(app.GPToolAtoolboxUIFigure);
            if strcmp(answer, 'Yes')
                d = uiprogressdlg(app.GPToolAtoolboxUIFigure,'Title', 'Running Analysis', 'Message','Preparing Analysis');
                error = 0;

                load(fullfile(app.meshFolder, 'meshSettings.mat'), 'AVA_inTransverse', 'NSA', 'diaphyseVector', 'headSphereNodes', 'neck_shaftPlane_intersection', 'kneeMedInd', 'kneeLatInd', 'kneeAxisAngle');
                AVA(1, :) = AVA_inTransverse;
                NSA(1, :) = NSA;
                kneeAxisAngle(1, :) = kneeAxisAngle;
                max_displacement = [];
                max_displacement_at_nodeID = [];

                analysisFileName = fullfile(app.analysisFolder, 'analysisSettings.mat');
                loadingFileName = fullfile(app.analysisFolder, 'loading.mat');
                load(fullfile(app.meshFolder, 'meshSettings.mat'), 'nr_of_transition_rows', 'total_nr_of_rows');
                load(fullfile(app.probandFolder, 'settings.mat'), 'side');
                Rows.nr_of_transition_rows = nr_of_transition_rows;
                Rows.total_nr_of_rows = total_nr_of_rows;

                fullRunValueChange = 1 / Growth.nr_of_iterations;
                for iteration = 1 : Growth.nr_of_iterations
                    d.Title = ['Running Analysis - Iteration ' num2str(iteration) '/' num2str(Growth.nr_of_iterations)];
                    d.Message = 'Loading latest mesh';
                    d.Value = fullRunValueChange * 0.05 + (iteration - 1) * fullRunValueChange;

                    if distal == 0
                        rowToGrow = Rows.total_nr_of_rows - Rows.nr_of_transition_rows - iteration + 1;
                    else
                        rowToGrow = Rows.nr_of_transition_rows + iteration;
                    end

                    % Load latest mesh (base mesh or output of previous iteration)
                    if iteration == 1
                        load(fullfile(app.meshFolder, 'meshSettings'), 'renumbered_elements', 'renumbered_nodes');
                        nodes = renumbered_nodes;
                        elements = renumbered_elements;
                    else
                        if exist(fullfile(app.analysisFolder, ['Iteration_' num2str(iteration-1)], 'meshAfterGrowth.mat'), 'file')
                            load(fullfile(app.analysisFolder, ['Iteration_' num2str(iteration-1)], 'meshAfterGrowth.mat'), 'nodes', 'elements');
                        else
                            % warnHandle = warndlg('An error occured! Aborting simulation.');
                            % figure(warnHandle);
                            % waitfor(warnHandle);
                            figure(app.GPToolAtoolboxUIFigure);
                            break;
                        end
                    end

                    if ~isempty(nodes)
                        iterationFolder = fullfile(app.analysisFolder, ['Iteration_' num2str(iteration)]);
                        mkdir(iterationFolder);

                        d.Message = 'Setting up FE Model to calculate stresses in the growthplate';
                        d.Value = fullRunValueChange * 0.1 + (iteration - 1) * fullRunValueChange;

                        % setUpFEModelForStresses
                        if iteration == 1 && app.skipstresscalculationinIteration1seetooltipCheckBox.Value
                            d.Message = 'FE Model to calculate stresses in the growthplate skipped - loading results!';
                            d.Value = fullRunValueChange * 0.2 + (iteration - 1) * fullRunValueChange;
                        else
                            febioFileName = createFEBio_StressModel(app, nodes, elements, Rows, rowToGrow, analysisFileName, loadingFileName, iterationFolder, distal, clamping);
                            d.Message = 'Run FE Model to calculate stresses in the growthplate - this step can take up to 30 minutes!';
                            d.Value = fullRunValueChange * 0.2 + (iteration - 1) * fullRunValueChange;
                            runFEBio(app, febioFileName);
                        end

                        if isfile(fullfile(iterationFolder, 'element_stresses.txt'))
                            stresses_filename = fullfile(iterationFolder, 'element_stresses.txt');
                            try
                                [TIME, stresses_data, ~] = importFEBio_logfile(stresses_filename);
                            catch % file exists but has no data in it. set time to 0 --> else block
                                TIME = 0;
                            end
                            if max(TIME) == 9  % results available for all 9 load instances

                                [~, nodal_displacement, ~] = importFEBio_logfile(fullfile(iterationFolder, 'nodal_displacement.txt'));
                                [max_displacement(iteration + 1), max_displacement_at_nodeID(iteration + 1)] = getMaxDisplacement(app, nodal_displacement);

                                d.Message = 'Setting up FE Model to calculate growth';
                                d.Value = fullRunValueChange * 0.65 + (iteration - 1) * fullRunValueChange;

                                if isfield(Growth, 'useThermalExpansionwithAbaqus') && Growth.useThermalExpansionwithAbaqus
                                    % run growth model with thermal expansion and abaqus
                                    % create the model
                                    abaqusFileName = createAbaqus_GrowthModel(app, nodes, elements, rowToGrow, stresses_data, analysisFileName, iterationFolder, distal, Rows);

                                    d.Message = 'Run FE Model to calculate growth - this step can take up to 5 minutes!';
                                    d.Value = fullRunValueChange * 0.7 + (iteration - 1) * fullRunValueChange;

                                    % Run the input file with Abaqus
                                    matlabWorkingDir = cd;
                                    cd(iterationFolder);
                                    system('abaqus job=FE_growth inp=FE_growth interactive');
                                    cd(matlabWorkingDir);

                                    log=fileread(fullfile(iterationFolder, 'FE_growth.msg'));
                                    if contains(log, 'THE ANALYSIS HAS BEEN COMPLETED')
                                        d.Message = 'Update Mesh';
                                        d.Value = fullRunValueChange * 0.85 + (iteration - 1) * fullRunValueChange;

                                        importedData = importAbaqusDat(fullfile(iterationFolder, 'FE_growth.dat'));
                                        nodal_displacement = importedData.STEP.INCREMENT.nodeOutput.data;
                                        displacement_data = [nodal_displacement.NODE nodal_displacement.U1 nodal_displacement.U2 nodal_displacement.U3];

                                        nodes = growMeshAbaqus(app, nodes, elements, displacement_data, iterationFolder);

                                        d.Message = 'Calculate Geometry features (NSA, AVA, ...)';
                                        d.Value = fullRunValueChange * 0.95 + (iteration - 1) * fullRunValueChange;

                                        [AVA(iteration + 1, :), NSA(iteration + 1, :)] = calculateGeometryAngles(app, nodes, headSphereNodes, neck_shaftPlane_intersection', diaphyseVector, side);
                                        kneeAxisAngle(iteration+1) = calculateKneeAxisAngle(app, nodes, kneeMedInd, kneeLatInd, side);
                                        save(fullfile(app.analysisFolder, 'analysisResults.mat'), 'AVA', 'NSA', 'kneeAxisAngle', 'max_displacement', 'max_displacement_at_nodeID');
                                    else
                                        % warnHandle = warndlg(['Growth simulation aborted in iteration ' num2str(iteration) ' because FE analysis did not converge. Reduce the growth factor and try again.']);
                                        % figure(warnHandle);
                                        % waitfor(warnHandle);
                                        figure(app.GPToolAtoolboxUIFigure);

                                        error = 1;
                                        save(fullfile(app.analysisFolder, 'analysisResults.mat'), 'AVA', 'NSA', 'max_displacement', 'max_displacement_at_nodeID');
                                        break;
                                    end
                                else
                                    % run growth model with nodal forces and febio
                                    febioFileName = createFEBio_GrowthModel(app, nodes, elements, rowToGrow, stresses_data, analysisFileName, iterationFolder, distal, Rows);
                                    d.Message = 'Run FE Model to calculate growth - this step can take up to 5 minutes!';
                                    d.Value = fullRunValueChange * 0.7 + (iteration - 1) * fullRunValueChange;

                                    % runFEBio(app, febioFileName);

                                    if isfile(fullfile(iterationFolder, 'growth_displacement.txt'))
                                        displacement_filename = fullfile(iterationFolder, 'growth_displacement.txt');
                                        tmpFile = dir(displacement_filename);
                                        if tmpFile.bytes ~= 0
                                            [TIME, displacement_data, ~] = importFEBio_logfile(displacement_filename);
                                            if max(TIME) == 1
                                                d.Message = 'Update Mesh';
                                                d.Value = fullRunValueChange * 0.85 + (iteration - 1) * fullRunValueChange;

                                                nodes = growMesh(app, nodes, elements, displacement_data, iterationFolder);

                                                d.Message = 'Calculate Geometry features (NSA, AVA, ...)';
                                                d.Value = fullRunValueChange * 0.95 + (iteration - 1) * fullRunValueChange;

                                                [AVA(iteration + 1, :), NSA(iteration + 1, :)] = calculateGeometryAngles(app, nodes, headSphereNodes, neck_shaftPlane_intersection', diaphyseVector, side);
                                                kneeAxisAngle(iteration+1) = calculateKneeAxisAngle(app, nodes, kneeMedInd, kneeLatInd, side);
                                                save(fullfile(app.analysisFolder, 'analysisResults.mat'), 'AVA', 'NSA', 'kneeAxisAngle', 'max_displacement', 'max_displacement_at_nodeID');
                                            else
                                                % warnHandle = warndlg(['Growth simulation aborted in iteration ' num2str(iteration) ' because FE analysis did not converge. Reduce the growth factor and try again.']);
                                                % figure(warnHandle);
                                                % waitfor(warnHandle);
                                                figure(app.GPToolAtoolboxUIFigure);

                                                error = 1;
                                                save(fullfile(app.analysisFolder, 'analysisResults.mat'), 'AVA', 'NSA', 'max_displacement', 'max_displacement_at_nodeID');
                                                break;
                                            end
                                        else
                                            % warnHandle = warndlg(['Growth simulation aborted in iteration ' num2str(iteration) ' because FE analysis did not converge. Reduce the growth factor and try again.']);
                                            % figure(warnHandle);
                                            % waitfor(warnHandle);
                                            figure(app.GPToolAtoolboxUIFigure);

                                            error = 1;
                                            save(fullfile(app.analysisFolder, 'analysisResults.mat'), 'AVA', 'NSA', 'max_displacement', 'max_displacement_at_nodeID');
                                            break;
                                        end
                                    else
                                        % warnHandle = warndlg(['Growth simulation aborted in iteration ' num2str(iteration) ' because FE analysis did not converge. Reduce the growth factor and try again.']);
                                        % figure(warnHandle);
                                        % waitfor(warnHandle);
                                        figure(app.GPToolAtoolboxUIFigure);

                                        error = 1;
                                        save(fullfile(app.analysisFolder, 'analysisResults.mat'), 'AVA', 'NSA', 'max_displacement', 'max_displacement_at_nodeID');
                                        break;
                                    end
                                end
                            else
                                % warnHandle = warndlg(['Simulation to calculate stresses aborted in iteration ' num2str(iteration) ' because FE analysis did not converge. Reduce loading or use stiffer material properties']);
                                % figure(warnHandle);
                                % waitfor(warnHandle);
                                figure(app.GPToolAtoolboxUIFigure);

                                save(fullfile(app.analysisFolder, 'analysisResults.mat'), 'AVA', 'NSA', 'max_displacement', 'max_displacement_at_nodeID');
                                error = 1;
                                break;
                            end
                        else
                            % warnHandle = warndlg('Results of Simulation to calculate stresses are not available!');
                            % figure(warnHandle);
                            % waitfor(warnHandle);
                            figure(app.GPToolAtoolboxUIFigure);
                            error = 1;
                            break;
                        end
                    end
                end
                close(d);
                if error == 0
                    app.StatusLamp.Color = [0 1 0];
                    app.StatusLampLabel.Text = 'Analysis run successfully';

                    % warnHandle = msgbox('Analysis finished successfully');
                    % figure(warnHandle);
                    % waitfor(warnHandle);
                    figure(app.GPToolAtoolboxUIFigure);
                else
                    app.StatusLamp.Color = [0.9290 0.6940 0.1250];
                    app.StatusLampLabel.Text = ['Analysis aborted during iteration ' num2str(size(AVA, 1))];
                end
            end
        end

        % Button down function: ResultsofselectedAnalysisTab
        function ResultsofselectedAnalysisTabButtonDown(app, event)
            value = app.AvailableAnalysisinthisdirectoryListBox.Value;
            if isempty(value) || strcmp(value, 'Create new')
                warnHandle = warndlg('Select or create an analysis first!');
                figure(warnHandle);
                waitfor(warnHandle);                 figure(app.GPToolAtoolboxUIFigure);
                app.TabGroup.SelectedTab = app.AnalysisTab;
                AnalysisTabButtonDown(app, 0);
            else
                load(fullfile(app.probandFolder, 'settings.mat'));
                app.SelectedAnalysisLabel.Text = [p_id '_' side '    -     Mesh: ' app.AvailableMeshesinthisdirectoryListBox.Value '    -     Analysis: ' value];

                app.meshFolder = fullfile(app.workingDirectory, app.AvailableParticipantsinthisdatafolderListBox.Value, app.AvailableMeshesinthisdirectoryListBox.Value);
                app.analysisFolder = fullfile(app.workingDirectory, app.AvailableParticipantsinthisdatafolderListBox.Value, app.AvailableMeshesinthisdirectoryListBox.Value, app.AvailableAnalysisinthisdirectoryListBox.Value);
                if exist(app.analysisFolder, 'dir')
                    cla(app.ChangeOfGeometryAxes, 'reset');

                    iterationFolders = GetSubDirsFirstLevelOnly(app.analysisFolder);
                    app.SelectIterations.Items = {};
                    for i = 1 : numel(iterationFolders)
                        app.SelectIterations.Items{i} = ['Iteration ' num2str(i)];
                    end
                    app.SelectIterations_2.Items = app.SelectIterations.Items;

                    if exist(fullfile(app.analysisFolder, 'analysisResults.mat'), 'file')
                        load(fullfile(app.analysisFolder, 'analysisResults.mat'), 'AVA', 'NSA', 'max_displacement', 'kneeAxisAngle');
                        if ~exist('kneeAxisAngle', 'var')
                            kneeAxisAngle = AVA;
                            kneeAxisAngle(:) = 0;
                        end

                        table = {'Base' AVA(1) 0 NSA(1) 0 0 0};

                        for i = 1+1 : size(AVA, 1)
                            table(i, :) = {['Iteration ' num2str(i-1)] AVA(i) AVA(i)-AVA(i-1) NSA(i) NSA(i)-NSA(i-1) kneeAxisAngle(i)-kneeAxisAngle(i-1) round(max_displacement(i)*10)/10};
                        end

                        app.ChangeOfGeometryTable.Data = table;
                        title(app.ChangeOfGeometryAxes, value, 'Interpreter',"none");
                        hold(app.ChangeOfGeometryAxes, 'on');
                        yyaxis(app.ChangeOfGeometryAxes,"left");
                        plot(app.ChangeOfGeometryAxes, 0 : (size(AVA, 1)-1), AVA);
                        yyaxis(app.ChangeOfGeometryAxes,"right");
                        plot(app.ChangeOfGeometryAxes, 0 : (size(NSA, 1)-1), NSA);
                        legend(app.ChangeOfGeometryAxes, {'AVA', 'NSA'});

                        xlabel(app.ChangeOfGeometryAxes, 'Growth Iteration'); ylabel(app.ChangeOfGeometryAxes, 'Angle [°]');
                        xlims = xlim(app.ChangeOfGeometryAxes);
                        xticks(app.ChangeOfGeometryAxes, 0 : 1 : xlims(2));
                    else
                        app.ChangeOfGeometryTable.Data = [];
                    end
                else
                    warnHandle = warndlg('Select or create an analysis first!');
                    figure(warnHandle);
                    waitfor(warnHandle);                 figure(app.GPToolAtoolboxUIFigure);
                    app.TabGroup.SelectedTab = app.AnalysisTab;
                    AnalysisTabButtonDown(app, 0);
                end
            end
        end

        % Button pushed function: PlotSelectedButton
        function PlotSelectedButtonPushed(app, event)
            selectedIterations = sort(app.SelectIterations.Value);
            if ~isempty(selectedIterations)
                figure;
                tiledlayout(size(selectedIterations, 2), 3);
                load(fullfile(app.probandFolder, 'settings.mat'), 'side');
                load(fullfile(app.analysisFolder, 'analysisSettings.mat'), 'distal');
                if ~exist('distal', 'var')
                    distal = 0;
                end
                if distal == 0
                    h = 400 * size(selectedIterations, 2);
                else
                    h = 250 * size(selectedIterations, 2);
                end
                if h > 1000; h=1000; end
                set(gcf, 'Position', [10,10,1200. h]);
                for i = 1 : size(selectedIterations, 2)
                    iterationFolder = strrep(selectedIterations{i}, ' ', '_');
                    load(fullfile(app.analysisFolder, iterationFolder, 'FE_growth.mat'), 'osteogenicIndex', 'OctahedralShearStress', 'HydrostaticStress');
                    if i == 1
                        load(fullfile(app.meshFolder, 'meshSettings'), 'renumbered_elements', 'renumbered_nodes');
                        elementsCentroid = zeros(size(osteogenicIndex, 1), 3);
                        for j = 1 : size(osteogenicIndex, 1)
                            nodeIDs = renumbered_elements.E(osteogenicIndex(j, 1), :);
                            nodePositions = renumbered_nodes.N(nodeIDs, :);
                            elementsCentroid(j, :) = mean(nodePositions,1);
                        end

                        if strcmp(side, 'L')
                            medial = elementsCentroid(:, 3); % in opensim the z coordinate is medial for the left femur
                        else
                            medial = elementsCentroid(:, 3)*(-1); % invert, because in opensim the z coordinate is lateral for the right femur
                        end
                        anterior = elementsCentroid(:, 1); % in opensim x coordinate is anterior
                        y=linspace(min(anterior),max(anterior),150);
                        if distal == 0
                            x=linspace(min(medial),max(medial),150);
                        else
                            x=linspace(min(medial),max(medial),300);
                        end
                        [X,Y]=meshgrid(x,y);
                    end

                    nexttile;
                    F = griddata(medial, anterior, max(OctahedralShearStress(:, 2:end), [], 2), X, Y);
                    % Set the values outside the boundary to NaN
                    k = boundary(medial, anterior, 0.2);
                    pgon = polyshape(medial(k), anterior(k),'Simplify',false);
                    idx = isinterior(pgon,X(:),Y(:));
                    idx = reshape(idx,size(X));
                    F(~idx) = nan;
                    contourf(X,Y,F,100,'LineColor','none')
                    colormap(jet(256));
                    colorbar
                    axis equal;
                    xlabel('lateral (-) / medial (+)');
                    ylabel({['\fontsize{19}' selectedIterations{i}]; '\fontsize{11}posterior(-) / anterior (+)'});
                    subtitle('Maximum Octahedral shear stress');

                    nexttile;
                    F = griddata(medial, anterior, min(HydrostaticStress(:, 2:end), [], 2), X, Y);
                    % Set the values outside the boundary to NaN
                    k = boundary(medial, anterior, 0.2);
                    pgon = polyshape(medial(k), anterior(k),'Simplify',false);
                    idx = isinterior(pgon,X(:),Y(:));
                    idx = reshape(idx,size(X));
                    F(~idx) = nan;
                    contourf(X,Y,F,100,'LineColor','none')
                    colormap(jet(256));
                    colorbar
                    axis equal;
                    ylabel('posterior(-) / anterior (+)');
                    xlabel('lateral (-) / medial (+)');
                    subtitle('Minimum Hydrostatic stress');

                    nexttile;

                    % replace outliers by corresponding minimum and maximum values
                    outliers = osteogenicIndex;
                    outliers(:, 2) = NaN;
                    outliers(isoutlier(osteogenicIndex(:, 2)), 2) = osteogenicIndex((isoutlier(osteogenicIndex(:, 2))), 2);

                    outliersRemoved = osteogenicIndex;
                    outliersRemoved((isoutlier(osteogenicIndex(:, 2))), 2) = NaN;

                    outliers(outliers(:, 2) < nanmean(outliersRemoved(:, 2)), 2) = nanmin(outliersRemoved(:, 2));
                    outliers(outliers(:, 2) > nanmean(outliersRemoved(:, 2)), 2) = nanmax(outliersRemoved(:, 2));

                    osteogenicIndex((isoutlier(osteogenicIndex(:, 2))), 2) = outliers(isoutlier(osteogenicIndex(:, 2)), 2);

                    F = griddata(medial, anterior, osteogenicIndex(:, 2), X, Y);
                    % Set the values outside the boundary to NaN
                    k = boundary(medial, anterior, 0.2);
                    pgon = polyshape(medial(k), anterior(k),'Simplify',false);
                    idx = isinterior(pgon,X(:),Y(:));
                    idx = reshape(idx,size(X));
                    F(~idx) = nan;
                    contourf(X,Y,F,100,'LineColor','none')
                    colormap(jet(256));
                    colorbar
                    axis equal;
                    ylabel('posterior(-) / anterior (+)');
                    xlabel('lateral (-) / medial (+)');
                    subtitle('Osteogenic index');
                end
            end
        end

        % Button pushed function: OpenParticipantinWindowsExplorerButton
        function OpenParticipantinWindowsExplorerButtonPushed(app, event)
            winopen(app.probandFolder);
        end

        % Button pushed function: OpenMeshinWindowsExplorerButton
        function OpenMeshinWindowsExplorerButtonPushed(app, event)
            winopen(app.meshFolder);
        end

        % Button pushed function: OpenAnalysisinWindowsExplorerButton
        function OpenAnalysisinWindowsExplorerButtonPushed(app, event)
            winopen(app.analysisFolder);
        end

        % Value changing function: filterEditField
        function filterEditFieldValueChanging(app, event)
            changingValue = event.Value;
            if ~isempty(changingValue)
                app.AvailableAnalysisinthisdirectoryListBox.Items = app.analysisListUnfiltered(contains(app.analysisListUnfiltered, changingValue));
            else
                app.AvailableAnalysisinthisdirectoryListBox.Items = app.analysisListUnfiltered;
            end
        end

        % Button pushed function: CopyFiguretoClipboardButton
        function CopyFiguretoClipboardButtonPushed(app, event)
            copygraphics(app.ChangeOfGeometryAxes,'ContentType','vector');
        end

        % Button down function: ComparemultipleAnalysisTab
        function ComparemultipleAnalysisTabButtonDown(app, event)
            value = app.AvailableMeshesinthisdirectoryListBox.Value;
            if isempty(value) || strcmp(value, 'Create new')
                warnHandle = warndlg('Select or create a mesh first!');
                figure(warnHandle);
                waitfor(warnHandle);
                figure(app.GPToolAtoolboxUIFigure);
                app.TabGroup.SelectedTab = app.MeshesTab;
                MeshesTabButtonDown(app, 0);
            else
                load(fullfile(app.probandFolder, 'settings.mat'));
                app.SelectedMeshLabel.Text = [p_id '_' side '    -     Mesh: ' app.AvailableMeshesinthisdirectoryListBox.Value];

                setAnalysisListForMesh(app);
                app.AvailableAnalysisinthisdirectoryListBox_2.Items = app.AvailableAnalysisinthisdirectoryListBox.Items(1 : end-1);
            end
        end

        % Value changed function: AvailableAnalysisinthisdirectoryListBox_2
        function AvailableAnalysisinthisdirectoryListBox_2ValueChanged(app, event)
            cla(app.ChangeOfNSA, 'reset');
            cla(app.ChangeOfAVA, 'reset');
            title(app.ChangeOfNSA, 'Change of NSA');
            title(app.ChangeOfAVA, 'Change of AVA');
            hold(app.ChangeOfNSA, 'on');
            hold(app.ChangeOfAVA, 'on');
            legendArr = [];
            selectedAnalysis = sort(app.AvailableAnalysisinthisdirectoryListBox_2.Value);
            if ~isempty(selectedAnalysis)
                for i = 1 : size(selectedAnalysis, 2)
                    try
                        load(fullfile(app.meshFolder, selectedAnalysis{i} , 'analysisResults.mat'), 'AVA', 'NSA');

                        plot(app.ChangeOfNSA, 0 : (size(NSA, 1)-1), NSA, 'LineWidth', 1);
                        plot(app.ChangeOfAVA, 0 : (size(AVA, 1)-1), AVA, 'LineWidth', 1);

                        legendArr{end+1} = selectedAnalysis{i};
                    end
                end
                legend(app.ChangeOfNSA, legendArr, 'Location', 'southwest', 'Interpreter', 'none');
                legend(app.ChangeOfAVA, legendArr, 'Location', 'northwest', 'Interpreter', 'none');
            end
            xlims = xlim(app.ChangeOfAVA);
            xticks(app.ChangeOfAVA, 0 : 1 : xlims(2));
            xticks(app.ChangeOfNSA, 0 : 1 : xlims(2));
            xlabel(app.ChangeOfAVA, 'Growth Iteration'); ylabel(app.ChangeOfAVA, 'Angle [°]');
            xlabel(app.ChangeOfNSA, 'Growth Iteration'); ylabel(app.ChangeOfNSA, 'Angle [°]');
        end

        % Button pushed function: StressButton
        function StressButtonPushed(app, event)
            iterationFolder = strrep(app.SelectIterations_2.Value, ' ', '_');
            load(fullfile(app.analysisFolder, iterationFolder, 'FE_stresses.mat'), 'febio_spec');

            step = str2double(app.SelectLoadInstance.Value);
            load(fullfile(app.probandFolder, 'settings.mat'), 'side')
            stlFemurFileName = fullfile(app.meshFolder, 'Mesh', [side '_femur_CS_OpenSim.stl']);
            plotFEBio(app, febio_spec, step, 2, stlFemurFileName, 0.1);
        end

        % Button pushed function: GrowthButton
        function GrowthButtonPushed(app, event)
            iterationFolder = app.SelectIterations_2.Value;
            iterationFolder = strrep(app.SelectIterations_2.Value, ' ', '_');
            load(fullfile(app.analysisFolder, iterationFolder, 'FE_growth.mat'), 'febio_spec');

            step = 1;
            load(fullfile(app.probandFolder, 'settings.mat'), 'side')
            stlFemurFileName = fullfile(app.meshFolder, 'Mesh', [side '_femur_CS_OpenSim.stl']);
            plotFEBio(app, febio_spec, step, 0.1, stlFemurFileName, 0.3);

            load(fullfile(app.meshFolder, 'meshSettings.mat'), 'neck_shaftPlane_intersection', 'headCenter_nodeLoc');

            neckAxis = headCenter_nodeLoc - neck_shaftPlane_intersection';
            quiver3(neck_shaftPlane_intersection(1), neck_shaftPlane_intersection(2), neck_shaftPlane_intersection(3), ...
                neckAxis(1), neckAxis(2), neckAxis(3), 1, 'LineWidth', 5, 'Color', [0 0 0])
        end

        % Button pushed function: CheckthegeometryButton
        function CheckthegeometryButtonPushed(app, event)
            % here we check for femur.stl
            %   - if Gibboc Toolbox can identify all features
            %   - if neck axis calculation is correct
            % and calculate best fit for head.stl and prox.stl
            % only if these 3 things work, we can setup this proband,
            % otherwise the segmentation is not suitable for this workflow

            app.newProbandGeometry = struct;

            d = uiprogressdlg(app.GPToolAtoolboxUIFigure,'Title','Checking the Geometry', 'Message', 'Loading files ...');

            side = app.LeftRightFemurDropDown.Value;

            if strcmp(app.AvailableParticipantsinthisdatafolderListBox.Value, 'Create new')
                femurFileName = fullfile(app.STL.path, app.STL.femur{1});
                headFileName = fullfile(app.STL.path, app.STL.head{1});
                proxFileName = fullfile(app.STL.path, app.STL.prox{1});
                triGeom_set = createTriGeomSet({strrep(app.STL.femur{1}, '.stl', '')}, app.STL.path);
                triGeom_set.(['femur_' lower(side)]) = triGeom_set.(strrep(app.STL.femur{1}, '.stl', ''));
                triGeom_set = rmfield(triGeom_set, strrep(app.STL.femur{1}, '.stl', ''));
            else
                segmentationPath = fullfile(app.probandFolder, 'Segmentation');
                femurFileName = fullfile(segmentationPath, [side '_femur.stl']);
                headFileName = fullfile(segmentationPath, [side '_head.stl']);
                proxFileName = fullfile(segmentationPath, [side '_prox.stl']);
                triGeom_set = createTriGeomSet({[side '_femur']}, segmentationPath);
                triGeom_set.(['femur_' lower(side)]) = triGeom_set.([side '_femur']);
                triGeom_set = rmfield(triGeom_set, [side '_femur']);
            end

            newFolderName = fullfile(app.workingDirectory, [app.ParticipantIdentifierEditField.Value '_' app.LeftRightFemurDropDown.Value]);
            if exist(newFolderName, 'dir')
                d.close();
                warnHandle = warndlg('Participant with this identifier already existing in this directory! Please use another identifier!');
                figure(warnHandle);
                waitfor(warnHandle);                 figure(app.GPToolAtoolboxUIFigure);
                figure(app.GPToolAtoolboxUIFigure);
            else
                if contains(app.fitmethodtocondylesDropDown.Value, 'cylinder')
                    try
                        d.Message = 'Check if GIBOC - cylinder works with this femur...';
                        d.Value = 0.1;
                        % run GIBOC cylinder workflow

                        [JCS, ~, ~] = processTriGeomBoneSet(triGeom_set, lower(side), '', 'GIBOC-cylinder', '', 1);
                        giboc_method = 'GIBOC-cylinder';
                    catch e
                        disp(e.message);
                        answer = questdlg('Identifying Geometry Features with GIBOC-clyinder failed! Try again with GIBOC-ellipsoids workflow?', 'Do you want to continue?', 'Yes', 'No', 'Yes');
                        figure(app.GPToolAtoolboxUIFigure);
                        if ~strcmp(answer, 'Yes')
                            return;
                        else
                            try
                                d.Message = 'Check if GIBOC - ellipsoids works with this femur...';
                                [JCS, ~, ~] = processTriGeomBoneSet(triGeom_set, lower(side), '', 'GIBOC-ellipsoids', '', 1);
                                giboc_method = 'GIBOC-ellipsoids';
                            catch e
                                disp(e.message);
                                warnHandle = warndlg('Identifying Geometry Features with GIBOC-ellipsoids failed!');
                                figure(warnHandle);
                                waitfor(warnHandle);                 figure(app.GPToolAtoolboxUIFigure);
                                answer = questdlg('Continue?', 'Do you want to continue?', 'Yes', 'No', 'Yes');
                                figure(app.GPToolAtoolboxUIFigure);
                                if ~strcmp(answer, 'Yes')
                                    return;
                                else
                                    giboc_method = 'none';
                                end
                            end
                        end
                    end
                else
                    try
                        d.Message = 'Check if GIBOC - ellipsoids works with this femur...';
                        [JCS, ~, ~] = processTriGeomBoneSet(triGeom_set, lower(side), '', 'GIBOC-ellipsoids', '', 1);
                        giboc_method = 'GIBOC-ellipsoids';
                    catch e
                        disp(e.message);
                        warnHandle = warndlg('Identifying Geometry Features with GIBOC-ellipsoids failed!');
                        figure(warnHandle);
                        waitfor(warnHandle);                 figure(app.GPToolAtoolboxUIFigure);
                        answer = questdlg('Continue?', 'Do you want to continue?', 'Yes', 'No', 'Yes');
                        figure(app.GPToolAtoolboxUIFigure);
                        if ~strcmp(answer, 'Yes')
                            return;
                        else
                            giboc_method = 'none';
                        end
                    end
                end

                d.Message = 'Check if neck axis can be found';
                d.Value = 0.3;
                % now rotate the femur into OpenSim coordinates and try to
                % get the neck axis by fitting a cylinder into the neck
                [stlStruct] = import_STL(femurFileName);
                [~, ~, ~, ~, AuxCSInfo] = GIBOC_femur(triGeom_set.(['femur_' lower(side)]), lower(side), giboc_method(7:end), 0);
                fem_head_radius = AuxCSInfo.RadiusFH_Renault;
                vertexMAT = stlStruct.solidVertices{1, 1} - JCS.(['femur_' lower(side)]).(['hip_' lower(side)]).Origin';
                vertexMAT = vertexMAT * JCS.(['femur_' lower(side)]).(['hip_' lower(side)]).V;


                % new code to determine neck axis cutoff automatically
                D = pdist2(vertexMAT, [0 0 0]);

                tic;

                stepSize = 0.25;
                while(1)
                    distances = round(fem_head_radius)*1.2 : stepSize : round(fem_head_radius) * 3;

                    maxDistance = [];
                    maxAngle = [];
                    aborted = 0;

                    for u = 1 : length(distances)
                        temp = vertexMAT;
                        neckAxisCutOff = distances(u);
                        temp(or(D > neckAxisCutOff, D < neckAxisCutOff - stepSize), :) = [];
                        temp = unique(temp, 'rows');

                        if size(temp, 1) > 500
                            temp = temp (1 : round(size(temp, 1) / 500) : end, :);
                        elseif size(temp, 1) == 0
                            stepSize = stepSize + 0.25;
                            aborted = 1;
                            break;
                        end
                        arr = [];
                        for i = 1 : size(temp, 1)
                            for j = 1 : size(temp, 1)
                                arr(i, j) = atan2d(norm(cross(temp(i, :)',temp(j, :)')), dot(temp(i, :)',temp(j, :)'));
                            end
                        end
                        maxAngle(u) = max(max(arr));
                    end
                    if ~aborted
                        break;
                    end
                end

                [fa, fb] = butter(2, 0.2/(4/2), 'low');
                filteredSignal = filtfilt(fa, fb, maxAngle);
                dF = diff(filteredSignal);
                app.newProbandGeometry.neckAxisCutOff = [];
                app.newProbandGeometry.neckAxisCutOff = distances(find(dF > 0, 1, 'first'));

                if isempty(app.newProbandGeometry.neckAxisCutOff)
                    % ddF = diff(dF);
                    % neckAxisCutOff = distances(find(ddF > 0, 1, 'first'));
                    disp('dF');
                    [~, idx] = findpeaks(dF, 'NPeaks', 1);
                    app.newProbandGeometry.neckAxisCutOff = distances(idx);
                    if isempty(app.newProbandGeometry.neckAxisCutOff)
                        disp('STOP');
                    end
                end

                f = figure;
                rotate3d on; hold on;
                daspect([1 1 1]);
                xlabel('[mm]'); ylabel('[mm]'); zlabel('[mm]');
                % temp = vertexMAT;
                % temp(D > app.newProbandGeometry.neckAxisCutOff, :) = [];
                % plotNodes(temp, 'r');
                temp = vertexMAT;
                % temp(or(D < app.newProbandGeometry.neckAxisCutOff, D > 100), :) = [];
                temp(D > 100, :) = [];
                plotNodes(temp, 'b');
                if strcmp(side, 'R')
                    view([-100, -20]);
                else
                    view([-100, 20]);
                end


                nodes = vertexMAT;














                % nodes = vertexMAT;
                % D = pdist2(nodes, [0 0 0]);
                %
                % f = figure;
                % rotate3d on; hold on;
                % b = uicontrol('Parent',f,'Style','slider','Position',[81,20,419,23], 'value',30, 'min',15, 'max',50);
                % xlabel('[mm]'); ylabel('[mm]'); zlabel('[mm]');
                % temp = nodes;
                % app.newProbandGeometry.neckAxisCutOff = 30;
                % temp(D > app.newProbandGeometry.neckAxisCutOff, :) = [];
                % app.neckAxisPlotHandle1 = plotNodes(temp, 'r');
                % temp = vertexMAT;
                % temp(or(D < app.newProbandGeometry.neckAxisCutOff, D > 100), :) = [];
                % app.neckAxisPlotHandle2 = plotNodes(temp, 'b');
                %
                % daspect([1 1 1]);
                % if strcmp(side, 'R')
                %     view([-100, -20]);
                % else
                %     view([-100, 20]);
                % end
                %
                % b.Callback = @(es,ed) updateNeckAxisLengthPlot(app, es.Value, nodes, D);
                %
                % drawnow;
                % figure(f);
                %
                % answer = MFquestdlg([0.4, 0.4], 'Press yes when the selection for determining the neck axis is okay.', 'Confirm Selection', 'Yes', 'No', 'Yes');
                % figure(app.GPToolAtoolboxUIFigure);
                % if ~strcmp(answer, 'Yes')
                %     return;
                % end
                %
                % close(f);

                nodes(D > app.newProbandGeometry.neckAxisCutOff, :) = [];

                if strcmp(side, 'R')
                    neckAxisGuess = [-0.3 -0.5 0.3];
                else
                    neckAxisGuess = [-0.3 -0.5 -0.3];
                end
                neckAxisGuess = neckAxisGuess / norm(neckAxisGuess)

                p2 = neckAxisGuess * (-1) * fem_head_radius;

                D = pdist2(nodes, p2);

                nodes(D < fem_head_radius, :) = [];

                % use only ~ 5000 nodes
                nodesUsedForCylinderFit = nodes(floor(linspace(1, size(nodes, 1), 5000)), :);
                [~, an] = lscylinder(nodesUsedForCylinderFit, [0 0 0]', neckAxisGuess', 15, 0.1, 0.1);


                neckNodes = vertexMAT;
                D = pdist2(neckNodes, [0 0 0]);
                neckNodes(D > app.newProbandGeometry.neckAxisCutOff, :) = [];
                allNeckNodes = neckNodes;

                latestGuessNeckAxis = an;
                while(1)
                    neckNodes = allNeckNodes;
                    p2 = latestGuessNeckAxis * (-1) * fem_head_radius;
                    D = pdist2(neckNodes, p2');
                    neckNodes(D < fem_head_radius, :) = [];

                    % use only ~ 5000 nodes
                    nodesUsedForCylinderFit = neckNodes(floor(linspace(1, size(neckNodes, 1), 5000)), :);
                    [~, neckAxis] = lscylinder(nodesUsedForCylinderFit, [0 0 0]', latestGuessNeckAxis', 15, 0.1, 0.1);

                    % calc angle between neckAxis and latestGuessNeckAxis
                    angleChange = atan2d(vecnorm(cross(neckAxis,latestGuessNeckAxis)),dot(neckAxis,latestGuessNeckAxis));

                    if angleChange < 0.2
                        break;
                    else
                        latestGuessNeckAxis = neckAxis;
                    end

                end

                app.newProbandGeometry.firstGuessNeckAxis = latestGuessNeckAxis;

                plotNodes(nodesUsedForCylinderFit, 'r');
                quiver3(latestGuessNeckAxis(1)*100, latestGuessNeckAxis(2)*100, latestGuessNeckAxis(3)*100, latestGuessNeckAxis(1)*-180, latestGuessNeckAxis(2)*-180, latestGuessNeckAxis(3)*-180, 'Color', [0.4660 0.6740 0.1880], 'LineWidth', 4);



                d.Message = 'Get the best fit for the growthplate...';
                d.Value = 0.7;
                % get best fit between head.stl and prox.stl

                %% get best translation fit that head fits proximal part
                headStlStruct = import_STL(headFileName);
                nodes = headStlStruct.solidVertices{1, 1};

                % do PCA of all head nodes to get more or less the growth plate orientation
                PCA = pca(nodes);
                p0 = PCA(:, 3);
                p1 = [0; 0; 1];

                C = cross(p0, p1) ;
                D = dot(p0, p1) ;
                NP0 = norm(p0) ; % used for scaling
                if ~all(C==0) % check for colinearity
                    Z = [0 -C(3) C(2); C(3) 0 -C(1); -C(2) C(1) 0] ;
                    tmp_rot_matrix = (eye(3) + Z + Z^2 * (1-D)/(norm(C)^2)) / NP0^2 ; % rotation matrix
                else
                    tmp_rot_matrix = sign(D) * (norm(p1) / NP0) ; % orientation and scaling
                end

                headFaces = headStlStruct.solidFaces{1, 1};
                headNormals = headStlStruct.solidNormals{1, 1};
                headNormals = (tmp_rot_matrix*headNormals')';   % rotate normals, then select depending on z value
                zDirHead = headFaces(headNormals(:, 3) < -0.5, :);

                proxGPnodeIDs = unique(zDirHead);
                proxGPnodes = nodes(proxGPnodeIDs, :);

                f = figure;
                hold on; daspect([1 1 1]);
                view([72 21]); camlight headlight;

                [filepath,name,~] = fileparts(headFileName);
                stlGeometry = createTriGeomSet({name}, filepath);
                proxStruct = struct('Points', stlGeometry.(name).Points, 'ConnectivityList', stlGeometry.(name).ConnectivityList);
                tmp = struct;
                tmp.Points = proxStruct.Points;
                tmpTriangulation = triangulation(proxStruct.ConnectivityList, tmp.Points);
                trisurf(tmpTriangulation, 'FaceColor', [1 0 0], 'EdgeColor', 'none', 'FaceAlpha', 0.6);

                Handle = plotNodes(proxGPnodes);

                xlabel('[mm]'); ylabel('[mm]'); zlabel('[mm]');
                for i = 1 : 360
                    view([i,  10]);
                    pause(0.005)
                end
                brush on;

                answer = MFquestdlg([0.4, 0.4], 'The selected nodes will be deleted and the rest will be used for aligning the two parts. Click yes when you are finished with the selection', 'Select nodes which are not on the bottom surface', 'Yes', 'Cancel', 'Yes');
                figure(app.GPToolAtoolboxUIFigure);
                if ~strcmp(answer, 'Yes')
                    return;
                end

                xd = get(Handle, 'XData');
                yd = get(Handle, 'YData');
                zd = get(Handle, 'ZData');
                brushed = get(Handle, 'BrushData');
                if ~isempty(brushed)
                    proxGPnodes = [xd(~logical(brushed)); yd(~logical(brushed)); zd(~logical(brushed))]';
                end
                close(f);


                % get rotation matrix that GP surface is parallel to XY plane
                PCA = pca(proxGPnodes);
                p0 = PCA(:, 3);
                p1 = [0; 0; 1];

                C = cross(p0, p1) ;
                D = dot(p0, p1) ;
                NP0 = norm(p0) ; % used for scaling
                if ~all(C==0) % check for colinearity
                    Z = [0 -C(3) C(2); C(3) 0 -C(1); -C(2) C(1) 0] ;
                    rot_matrix = (eye(3) + Z + Z^2 * (1-D)/(norm(C)^2)) / NP0^2 ; % rotation matrix
                else
                    rot_matrix = sign(D) * (norm(p1) / NP0) ; % orientation and scaling
                end

                app.newProbandGeometry.rot_matrix = rot_matrix;

                proxGPnodes = (rot_matrix*proxGPnodes')';

                proxStlStruct = import_STL(proxFileName);
                proxNodes = proxStlStruct.solidVertices{1, 1};
                proxFaces = proxStlStruct.solidFaces{1, 1};
                proxNormals = proxStlStruct.solidNormals{1, 1};
                proxNormals = (rot_matrix*proxNormals')';
                zDirProx = proxFaces(proxNormals(:, 3) > 0.5, :);

                distGPnodeIDs = unique(zDirProx);
                distGPnodes = proxNodes(distGPnodeIDs, :);

                distGPnodes = (rot_matrix*distGPnodes')';

                maxXDistance = max(proxGPnodes(:, 1)) - min(proxGPnodes(:, 1));
                maxYDistance = max(proxGPnodes(:, 2)) - min(proxGPnodes(:, 2));

                maxRadius = max(maxXDistance/2, maxYDistance/2);

                if strcmp(side, 'R')
                    minXinDist = max(distGPnodes(:, 1));
                    minYinDist = min(distGPnodes(:, 2));
                    approxCenterDist = [minXinDist-maxXDistance/2   minYinDist+maxYDistance/2    mean(distGPnodes(:, 3))];
                else
                    minXinDist = min(distGPnodes(:, 1));
                    minYinDist = min(distGPnodes(:, 2));
                    approxCenterDist = [minXinDist+maxXDistance/2   minYinDist+maxYDistance/2    mean(distGPnodes(:, 3))];
                end

                D = pdist2(distGPnodes, approxCenterDist);
                distGPnodes(D > maxRadius * 1.2, :) = [];

                zCoords = distGPnodes(:, 3);
                distGPnodes(isoutlier(zCoords), :) = [];

                f = figure;
                f.Position = app.GPToolAtoolboxUIFigure.Position;
                hold on; daspect([1 1 1]);
                view([72 21]); camlight headlight;

                [filepath,name,~] = fileparts(proxFileName);
                stlGeometry = createTriGeomSet({name}, filepath);
                distStruct = struct('Points', stlGeometry.(name).Points, 'ConnectivityList', stlGeometry.(name).ConnectivityList);
                tmp = struct;
                tmp.Points = (rot_matrix*distStruct.Points')';
                tmpTriangulation = triangulation(distStruct.ConnectivityList, tmp.Points);
                trisurf(tmpTriangulation, 'FaceColor', [1 0 0], 'EdgeColor', 'none', 'FaceAlpha', 0.6);

                Handle = plotNodes(distGPnodes);
                xlabel('[mm]'); ylabel('[mm]'); zlabel('[mm]');
                for i = 1 : 360
                    view([i,  10]);
                    pause(0.005)
                end
                brush on;

                answer = MFquestdlg([0.4, 0.4], 'The selected nodes will be deleted and the rest will be used for aligning the two parts. Click yes when you are finished with the selection', 'Select nodes which are not on the top surface', 'Yes', 'Cancel', 'Yes');
                figure(app.GPToolAtoolboxUIFigure);
                if ~strcmp(answer, 'Yes')
                    return;
                end

                xd = get(Handle, 'XData');
                yd = get(Handle, 'YData');
                zd = get(Handle, 'ZData');
                brushed = get(Handle, 'BrushData');
                if ~isempty(brushed)
                    distGPnodes = [xd(~logical(brushed)); yd(~logical(brushed)); zd(~logical(brushed))]';
                end
                close(f);

                meanTop = mean(proxGPnodes, 1);
                meanBottom = mean(distGPnodes, 1);

                translationVector = meanBottom - meanTop;
                translationVector(3) = 0;

                % proxGPnodesAdjusted = proxGPnodes + translationVector;
                %
                % finished = 0;
                % finalTranslation = translationVector;
                % while(~finished)
                %     finished = 1;
                %     for i = 1 : size(proxGPnodesAdjusted, 1)
                %         I = dsearchn(distGPnodes, proxGPnodesAdjusted(i, :));
                %         zDistance = (proxGPnodesAdjusted(i, 3) - distGPnodes(I, 3));
                %         if zDistance > 0
                %             finalTranslation(3) = finalTranslation(3) - zDistance;
                %             proxGPnodesAdjusted(:, 3) = proxGPnodesAdjusted(:, 3) - zDistance;
                %             finished = 0;
                %             break;
                %         end
                %     end
                % end

                proxGPnodesAdj = proxGPnodes - translationVector;
                regionSize = 5;
                maxDiff = 0;
                for i = 1 : size(proxGPnodesAdj, 1)
                    distNodesInRegion = distGPnodes(and(and(and(distGPnodes(:, 1) > proxGPnodesAdj(i, 1) - regionSize/2, distGPnodes(:, 1) < proxGPnodesAdj(i, 1) + regionSize/2), ...
                        distGPnodes(:, 2) < proxGPnodesAdj(i, 2) + regionSize/2), distGPnodes(:, 2) > proxGPnodesAdj(i, 2) - regionSize/2), :);
                    minZ = max(distNodesInRegion(:, 3));
                    diffZ = minZ - proxGPnodesAdj(i, 3);
                    if diffZ < maxDiff
                        maxDiff = diffZ;
                    end
                    % D = pdist2(distBottomGPnodesAdj(i, :), dist)
                end

                finalTranslation = translationVector;
                finalTranslation(3) = maxDiff;


                f = figure;
                f.Position = app.GPToolAtoolboxUIFigure.Position;
                t1 = nexttile; hold on; daspect([1 1 1]); rotate3d on;
                view([7 -34]); camlight headlight;
                [filepath,name,~] = fileparts(headFileName);
                headGeom = createTriGeomSet({name}, filepath);
                headStruct = struct('Points', headGeom.(name).Points, 'ConnectivityList', headGeom.(name).ConnectivityList);
                alteredHead = struct;
                alteredHead.Points = (rot_matrix*headStruct.Points')' + finalTranslation;
                alteredTriangluation = triangulation(headStruct.ConnectivityList, alteredHead.Points);

                trisurf(alteredTriangluation, 'FaceColor', [1 0 0], 'EdgeColor', 'none', 'FaceAlpha', 0.6);
                plotNodes(distGPnodes);
                xlabel('[mm]'); ylabel('[mm]'); zlabel('[mm]');

                t2 = nexttile; hold on; daspect([1 1 1]); rotate3d on;
                view([0 -90]); camlight headlight;

                plotNodes(distGPnodes);
                trisurf(alteredTriangluation, 'FaceColor', [1 0 0], 'EdgeColor', 'none');
                xlabel('[mm]'); ylabel('[mm]'); zlabel('[mm]');

                [filepath,name,~] = fileparts(proxFileName);
                stlGeometry = createTriGeomSet({name}, filepath);
                proxStruct = struct('Points', stlGeometry.(name).Points, 'ConnectivityList', stlGeometry.(name).ConnectivityList);
                tmp = struct;
                tmp.Points = proxStruct.Points;
                tmp.Points = (rot_matrix*proxStruct.Points')';
                tmpTriangulation = triangulation(proxStruct.ConnectivityList, tmp.Points);
                trisurf(tmpTriangulation, 'FaceColor', [0 1 0], 'EdgeColor', 'none', 'FaceAlpha', 0.6);
                annotation('textbox', [0.4, 0.13, 0.3, 0], 'string', ['Translation x = ' num2str(abs(finalTranslation(1)))])
                annotation('textbox', [0.4, 0.09, 0.3, 0], 'string', ['Translation y = ' num2str(abs(finalTranslation(2)))])
                annotation('textbox', [0.4, 0.05, 0.3, 0], 'string', ['Translation z (thickness) = ' num2str(abs(finalTranslation(3)))])

                for i = 1 : 360
                    view(t1, [i,  10]);
                    view(t2, [i,  10]);
                    pause(0.005)
                end

                answer = MFquestdlg([0.4, 0.4], 'Is the positioning of the top part correct?', 'Positioning correct?', 'Yes', 'No', 'Yes');
                figure(app.GPToolAtoolboxUIFigure);
                if ~strcmp(answer, 'Yes')
                    return;
                end

                app.newProbandGeometry.headTranslation = finalTranslation;
                app.newProbandGeometry.giboc_method = giboc_method;
                close(f);

                if isfield(app.STL, 'dist_2_bottom')
                    %% get best translation fit that distTop fits distBottom part
                    distTopFileName = fullfile(app.STL.path, app.STL.dist_2_top{1});
                    distBottomFileName = fullfile(app.STL.path, app.STL.dist_2_bottom{1});
                    distTopStlStruct = import_STL(distTopFileName);
                    nodes = distTopStlStruct.solidVertices{1, 1};

                    % % do PCA of all distTop nodes to get more or less the growth plate orientation
                    % PCA = pca(nodes);
                    % p0 = PCA(:, 3);
                    % p1 = [0; 0; 1];
                    %
                    % C = cross(p0, p1) ;
                    % D = dot(p0, p1) ;
                    % NP0 = norm(p0) ; % used for scaling
                    % if ~all(C==0) % check for colinearity
                    %     Z = [0 -C(3) C(2); C(3) 0 -C(1); -C(2) C(1) 0] ;
                    %     tmp_rot_matrix = (eye(3) + Z + Z^2 * (1-D)/(norm(C)^2)) / NP0^2 ; % rotation matrix
                    % else
                    %     tmp_rot_matrix = sign(D) * (norm(p1) / NP0) ; % orientation and scaling
                    % end

                    tmp_rot_matrix = JCS.(['femur_' lower(side)]).(['hip_' lower(side)]).V;

                    distTopFaces = distTopStlStruct.solidFaces{1, 1};
                    distTopNormals = distTopStlStruct.solidNormals{1, 1};
                    % distTopNormals = (tmp_rot_matrix*distTopNormals')';   % rotate normals, then select depending on z value
                    distTopNormals = (distTopNormals * tmp_rot_matrix);   % rotate normals, then select depending on z value
                    zDirdistTop = distTopFaces(distTopNormals(:, 2) < -0.5, :);

                    distTopGPnodeIDs = unique(zDirdistTop);
                    distTopGPnodes = nodes(distTopGPnodeIDs, :);

                    f = figure;
                    hold on; daspect([1 1 1]);
                    view([72 21]); camlight headlight;

                    [filepath,name,~] = fileparts(distTopFileName);
                    stlGeometry = createTriGeomSet({name}, filepath);
                    distTopStruct = struct('Points', stlGeometry.(name).Points, 'ConnectivityList', stlGeometry.(name).ConnectivityList);
                    tmp = struct;
                    tmp.Points = distTopStruct.Points;
                    tmpTriangulation = triangulation(distTopStruct.ConnectivityList, tmp.Points);
                    trisurf(tmpTriangulation, 'FaceColor', [1 0 0], 'EdgeColor', 'none', 'FaceAlpha', 0.6);

                    Handle = plotNodes(distTopGPnodes);

                    xlabel('[mm]'); ylabel('[mm]'); zlabel('[mm]');
                    for i = 1 : 360
                        view([i,  10]);
                        pause(0.005)
                    end
                    brush on;

                    answer = MFquestdlg([0.4, 0.4], 'The selected nodes will be deleted and the rest will be used for aligning the two parts. Click yes when you are finished with the selection', 'Select nodes which are not on the bottom surface', 'Yes', 'Cancel', 'Yes');
                    figure(app.GPToolAtoolboxUIFigure);
                    if ~strcmp(answer, 'Yes')
                        return;
                    end

                    xd = get(Handle, 'XData');
                    yd = get(Handle, 'YData');
                    zd = get(Handle, 'ZData');
                    brushed = get(Handle, 'BrushData');
                    if ~isempty(brushed)
                        distTopGPnodes = [xd(~logical(brushed)); yd(~logical(brushed)); zd(~logical(brushed))]';
                    end
                    close(f);


                    % get rotation matrix that GP surface is parallel to XY plane
                    PCA = pca(distTopGPnodes);
                    p0 = PCA(:, 3);
                    p1 = [0; 0; 1];

                    C = cross(p0, p1) ;
                    D = dot(p0, p1) ;
                    NP0 = norm(p0) ; % used for scaling
                    if ~all(C==0) % check for colinearity
                        Z = [0 -C(3) C(2); C(3) 0 -C(1); -C(2) C(1) 0] ;
                        rot_matrix = (eye(3) + Z + Z^2 * (1-D)/(norm(C)^2)) / NP0^2 ; % rotation matrix
                    else
                        rot_matrix = sign(D) * (norm(p1) / NP0) ; % orientation and scaling
                    end

                    app.newProbandGeometry.dist_rot_matrix = rot_matrix;

                    distTopGPnodes = (rot_matrix*distTopGPnodes')';

                    distBottomStlStruct = import_STL(distBottomFileName);
                    distBottomNodes = distBottomStlStruct.solidVertices{1, 1};
                    bottomNodes = distBottomStlStruct.solidVertices{1, 1};
                    distBottomFaces = distBottomStlStruct.solidFaces{1, 1};
                    distBottomNormals = distBottomStlStruct.solidNormals{1, 1};
                    distBottomNormals = (rot_matrix*distBottomNormals')';
                    zDirdistBottom = distBottomFaces(distBottomNormals(:, 3) > 0.7, :);

                    distBottomGPnodeIDs = unique(zDirdistBottom);
                    distBottomGPnodes = distBottomNodes(distBottomGPnodeIDs, :);

                    distBottomGPnodes = (rot_matrix*distBottomGPnodes')';

                    % maxXDistance = max(distTopGPnodes(:, 1)) - min(distTopGPnodes(:, 1));
                    % maxYDistance = max(distTopGPnodes(:, 2)) - min(distTopGPnodes(:, 2));
                    %
                    % maxRadius = max(maxXDistance/2, maxYDistance/2);
                    %
                    % if strcmp(side, 'R')
                    %     minXinDist = max(distBottomGPnodes(:, 1));
                    %     minYinDist = min(distBottomGPnodes(:, 2));
                    %     apdistBottomCenterDist = [minXinDist-maxXDistance/2   minYinDist+maxYDistance/2    mean(distBottomGPnodes(:, 3))];
                    % else
                    %     minXinDist = min(distBottomGPnodes(:, 1));
                    %     minYinDist = min(distBottomGPnodes(:, 2));
                    %     apdistBottomCenterDist = [minXinDist+maxXDistance/2   minYinDist+maxYDistance/2    mean(distBottomGPnodes(:, 3))];
                    % end
                    %
                    % apdistBottomCenterDist = [mean(distTopGPnodes(:,1)), mean(distTopGPnodes(:,2)), mean(distBottomGPnodes(:,3))]
                    %
                    % D = pdist2(distBottomGPnodes, apdistBottomCenterDist);
                    % distBottomGPnodes(D > maxRadius, :) = [];


                    boundaryTop = boundary(distTopGPnodes(:, 1), distTopGPnodes(:, 2),0.1);
                    % plot(distTopGPnodes(boundaryTop, 1), distTopGPnodes(boundaryTop, 2))

                    % bd1 = boundary(xv,yv);
                    % pgon1b = polyshape(distTopGPnodes(boundaryTop, 1),distTopGPnodes(boundaryTop, 2));
                    % plot(pgon1b);
                    %
                    % inpolygon(0, 0, distTopGPnodes(boundaryTop, 1), distTopGPnodes(boundaryTop, 2))

                    xV = distTopGPnodes(boundaryTop, 1);
                    offset = mean(xV);
                    xV = (xV - offset) * 1.2 + offset;
                    yV = distTopGPnodes(boundaryTop, 2);
                    offset = mean(yV);
                    yV = (yV - offset) * 1.2 + offset;

                    distBottomGPnodesInBoundary = [];
                    for i = 1 : size(distBottomGPnodes, 1)
                        if inpolygon(distBottomGPnodes(i, 1), distBottomGPnodes(i, 2), xV, yV)
                            distBottomGPnodesInBoundary(end+1, :) = distBottomGPnodes(i, :);
                        end
                    end
                    distBottomGPnodes = distBottomGPnodesInBoundary;

                    f = figure;
                    f.Position = app.GPToolAtoolboxUIFigure.Position;
                    hold on; daspect([1 1 1]);
                    view([72 21]); camlight headlight;

                    [filepath,name,~] = fileparts(distBottomFileName);
                    stlGeometry = createTriGeomSet({name}, filepath);
                    distStruct = struct('Points', stlGeometry.(name).Points, 'ConnectivityList', stlGeometry.(name).ConnectivityList);
                    tmp = struct;
                    tmp.Points = (rot_matrix*distStruct.Points')';
                    tmpTriangulation = triangulation(distStruct.ConnectivityList, tmp.Points);
                    trisurf(tmpTriangulation, 'FaceColor', [1 0 0], 'EdgeColor', 'none', 'FaceAlpha', 0.6);

                    Handle = plotNodes(distBottomGPnodes);
                    xlabel('[mm]'); ylabel('[mm]'); zlabel('[mm]');
                    for i = 1 : 360
                        view([i,  10]);
                        pause(0.005)
                    end
                    brush on;

                    answer = MFquestdlg([0.4, 0.4], 'The selected nodes will be deleted and the rest will be used for aligning the two parts. Click yes when you are finished with the selection', 'Select nodes which are not on the top surface', 'Yes', 'Cancel', 'Yes');
                    figure(app.GPToolAtoolboxUIFigure);
                    if ~strcmp(answer, 'Yes')
                        return;
                    end

                    xd = get(Handle, 'XData');
                    yd = get(Handle, 'YData');
                    zd = get(Handle, 'ZData');
                    brushed = get(Handle, 'BrushData');
                    if ~isempty(brushed)
                        distBottomGPnodes = [xd(~logical(brushed)); yd(~logical(brushed)); zd(~logical(brushed))]';
                    end
                    close(f);

                    meanTop = mean(distTopGPnodes, 1);
                    meanBottom = mean(distBottomGPnodes, 1);

                    % get x and y range of upper part
                    [minZ, maxZ] = bounds(distTopGPnodes(:, 3));
                    tmpDistTopGP = (rot_matrix*nodes')';
                    tmpDistTopGP = tmpDistTopGP(and(tmpDistTopGP(:, 3) > minZ, tmpDistTopGP(:, 3) < maxZ), :);
                    app.newProbandGeometry.distScaling.topMinX = min(tmpDistTopGP(:, 1));
                    app.newProbandGeometry.distScaling.topMinY = min(tmpDistTopGP(:, 2));

                    % get x and y range of lower part
                    [minZ, maxZ] = bounds(distBottomGPnodes(:, 3));
                    % tmpDistBottomGP = (rot_matrix*bottomNodes')';
                    % tmpDistBottomGP = tmpDistBottomGP(and(tmpDistBottomGP(:, 3) > minZ, tmpDistBottomGP(:, 3) < maxZ), :);
                    tmpDistBottomGP = distBottomGPnodes;
                    app.newProbandGeometry.distScaling.bottomMinX= min(tmpDistBottomGP(:, 1));
                    app.newProbandGeometry.distScaling.bottomMinY = min(tmpDistBottomGP(:, 2));

                    app.newProbandGeometry.distScaling.scaleX =  range(tmpDistBottomGP(:, 1)) / range(tmpDistTopGP(:, 1));
                    app.newProbandGeometry.distScaling.scaleY =  range(tmpDistBottomGP(:, 2)) / range(tmpDistTopGP(:, 2));
                    app.newProbandGeometry.distScaling.scaleY = min([app.newProbandGeometry.distScaling.scaleY, 1.15]);


                    translationVector = meanBottom - meanTop;
                    translationVector(3) = 0;

                    distBottomGPnodesAdjusted = distTopGPnodes + translationVector;

                    % finished = 0;
                    % finalTranslation = translationVector;
                    % while(~finished)
                    %     finished = 1;
                    %     for i = 1 : size(distBottomGPnodesAdjusted, 1)
                    %         I = dsearchn(distBottomGPnodes, distBottomGPnodesAdjusted(i, :));
                    %         zDistance = (distBottomGPnodesAdjusted(i, 3) - distBottomGPnodes(I, 3));
                    %         if zDistance > 0
                    %             finalTranslation(3) = finalTranslation(3) - zDistance;
                    %             distBottomGPnodesAdjusted(:, 3) = distBottomGPnodesAdjusted(:, 3) - zDistance;
                    %             finished = 0;
                    %             break;
                    %         end
                    %     end
                    % end



                    distBottomGPnodesAdj = distBottomGPnodes;
                    offset = mean(distBottomGPnodesAdj(:, 1));
                    distBottomGPnodesAdj(:, 1) = (distBottomGPnodesAdj(:, 1) -offset) / app.newProbandGeometry.distScaling.scaleX + offset;
                    offset = mean(distBottomGPnodesAdj(:, 2));
                    distBottomGPnodesAdj(:, 2) = (distBottomGPnodesAdj(:, 2) - offset) / app.newProbandGeometry.distScaling.scaleY + offset;

                    regionSize = 2;
                    maxDiff = 0;
                    for i = 1 : size(distBottomGPnodesAdj, 1)
                        proxNodesInRegion = distTopGPnodes(and(and(and(distTopGPnodes(:, 1) > distBottomGPnodesAdj(i, 1) - regionSize/2, distTopGPnodes(:, 1) < distBottomGPnodesAdj(i, 1) + regionSize/2), ...
                            distTopGPnodes(:, 2) < distBottomGPnodesAdj(i, 2) + regionSize/2), distTopGPnodes(:, 2) > distBottomGPnodesAdj(i, 2) - regionSize/2), :);
                        minZ = max(proxNodesInRegion(:, 3));
                        diffZ = minZ - distBottomGPnodesAdj(i, 3);
                        if diffZ > maxDiff
                            maxDiff = diffZ;
                        end
                        % D = pdist2(distBottomGPnodesAdj(i, :), dist)
                    end

                    finalTranslation = translationVector;
                    finalTranslation(3) = -maxDiff;


                    % distBottomGPnodesAdj = distBottomGPnodesAdj + finalTranslation;

                    f = figure;
                    f.Position = app.GPToolAtoolboxUIFigure.Position;
                    t1 = nexttile; hold on; daspect([1 1 1]); rotate3d on;
                    view([7 -34]); camlight headlight;
                    [filepath,name,~] = fileparts(distTopFileName);
                    distTopGeom = createTriGeomSet({name}, filepath);
                    distTopStruct = struct('Points', distTopGeom.(name).Points, 'ConnectivityList', distTopGeom.(name).ConnectivityList);
                    altereddistTop = struct;
                    finalTranslation(1:2) = 0; % move x and y with scaling
                    altereddistTop.Points = (rot_matrix*distTopStruct.Points')' + finalTranslation;
                    alteredTriangluation = triangulation(distTopStruct.ConnectivityList, altereddistTop.Points);

                    app.newProbandGeometry.distTranslation = finalTranslation;

                    trisurf(alteredTriangluation, 'FaceColor', [1 0 0], 'EdgeColor', 'none', 'FaceAlpha', 0.6);
                    plotNodes(distBottomGPnodesAdj);
                    xlabel('[mm]'); ylabel('[mm]'); zlabel('[mm]');

                    t2 = nexttile; hold on; daspect([1 1 1]); rotate3d on;
                    view([0 -90]); camlight headlight;

                    plotNodes(distBottomGPnodesAdj);
                    trisurf(alteredTriangluation, 'FaceColor', [1 0 0], 'EdgeColor', 'none');
                    xlabel('[mm]'); ylabel('[mm]'); zlabel('[mm]');

                    [filepath,name,~] = fileparts(distBottomFileName);
                    stlGeometry = createTriGeomSet({name}, filepath);
                    distBottomStruct = struct('Points', stlGeometry.(name).Points, 'ConnectivityList', stlGeometry.(name).ConnectivityList);
                    tmp = struct;
                    tmp.Points = distBottomStruct.Points;
                    tmp.Points = (rot_matrix*distBottomStruct.Points')';
                    tmp.Points(:, 1) = (tmp.Points(:, 1) - app.newProbandGeometry.distScaling.bottomMinX) / app.newProbandGeometry.distScaling.scaleX + app.newProbandGeometry.distScaling.topMinX;
                    tmp.Points(:, 2) = (tmp.Points(:, 2) - app.newProbandGeometry.distScaling.bottomMinY) / app.newProbandGeometry.distScaling.scaleY + app.newProbandGeometry.distScaling.topMinY;
                    tmpTriangulation = triangulation(distBottomStruct.ConnectivityList, tmp.Points);
                    trisurf(tmpTriangulation, 'FaceColor', [0 1 0], 'EdgeColor', 'none', 'FaceAlpha', 0.6);
                    annotation('textbox', [0.4, 0.13, 0.3, 0], 'string', ['Scale x = ' num2str(app.newProbandGeometry.distScaling.scaleX)])
                    annotation('textbox', [0.4, 0.09, 0.3, 0], 'string', ['Scale y = ' num2str(app.newProbandGeometry.distScaling.scaleY)])
                    annotation('textbox', [0.4, 0.05, 0.3, 0], 'string', ['Translation z (thickness) = ' num2str(abs(finalTranslation(3)))])

                    for i = 1 : 360
                        view(t1, [i,  10]);
                        view(t2, [i,  10]);
                        pause(0.005)
                    end

                    answer = MFquestdlg([0.4, 0.4], 'Is the positioning of the bottom part correct?', 'Positioning correct?', 'Yes', 'No', 'Yes');
                    figure(app.GPToolAtoolboxUIFigure);
                    if ~strcmp(answer, 'Yes')
                        return;
                    end

                end

                close(d);

                if isfield(app.newProbandGeometry, 'neckAxisCutOff') && isfield(app.newProbandGeometry, 'firstGuessNeckAxis') ...
                        && isfield(app.newProbandGeometry, 'headTranslation') && isfield(app.newProbandGeometry, 'rot_matrix')
                    SetupthisProbandButtonPushed(app, 0);
                end
            end
        end

        % Button pushed function: OpendatafolderinWindowsExplorerButton
        function OpendatafolderinWindowsExplorerButtonPushed(app, event)
            winopen(app.workingDirectory);
        end

        % Button pushed function: SimplegeometryplotButton
        function SimplegeometryplotButtonPushed(app, event)
            meshSettingsFile = fullfile(app.meshFolder, 'meshSettings.mat');
            load(meshSettingsFile, 'renumbered_nodes', 'neck_shaftPlane_intersection', 'headCenter_nodeLoc', 'diaphyseVector', 'AVA_inTransverse', 'NSA');
            load(fullfile(app.probandFolder, 'settings.mat'), 'side');

            f = figure;
            f.Position = [100,100,1120,800];
            nexttile; hold on; daspect([1 1 1]); rotate3d on;
            camlight headlight;

            scatter3(renumbered_nodes.N(:, 1),renumbered_nodes.N(:, 2),renumbered_nodes.N(:, 3), 'MarkerEdgeColor', [0.6 0.6 0.6], 'MarkerEdgeAlpha', 0.05);

            plot3(neck_shaftPlane_intersection(1), neck_shaftPlane_intersection(2), neck_shaftPlane_intersection(3),'gx', 'MarkerSize', 20, 'LineWidth', 5)
            plot3(headCenter_nodeLoc(1), headCenter_nodeLoc(2), headCenter_nodeLoc(3),'rx', 'MarkerSize', 20, 'LineWidth', 5)

            neckAxis = headCenter_nodeLoc - neck_shaftPlane_intersection';
            quiver3(neck_shaftPlane_intersection(1), neck_shaftPlane_intersection(2), neck_shaftPlane_intersection(3), ...
                neckAxis(1), neckAxis(2), neckAxis(3), 1, 'LineWidth', 5, 'Color', [0.8500 0.3250 0.0980])

            if side == 'L'
                quiver3(neck_shaftPlane_intersection(1), neck_shaftPlane_intersection(2), neck_shaftPlane_intersection(3), ...
                    0, 0, 1, 50, 'LineWidth', 5, 'Color', [0 0.4470 0.7410])
            else
                quiver3(neck_shaftPlane_intersection(1), neck_shaftPlane_intersection(2), neck_shaftPlane_intersection(3), ...
                    0, 0, -1, 50, 'LineWidth', 5, 'Color', [0 0.4470 0.7410])
            end

            view(diaphyseVector)

            legend({'', 'Intersection of neck axis and medial/lateral axis', 'femoral head center', 'neck axis', 'medial/lateral axis'});
            xlabel('[mm]'); ylabel('[mm]'); zlabel('[mm]');

            nexttile; hold on; daspect([1 1 1]); rotate3d on;
            view([1, 0, 0])

            scatter3(renumbered_nodes.N(:, 1),renumbered_nodes.N(:, 2),renumbered_nodes.N(:, 3), 'MarkerEdgeColor', [0.6 0.6 0.6], 'MarkerEdgeAlpha', 0.05);

            plot3(neck_shaftPlane_intersection(1), neck_shaftPlane_intersection(2), neck_shaftPlane_intersection(3),'gx', 'MarkerSize', 20, 'LineWidth', 5)
            plot3(headCenter_nodeLoc(1), headCenter_nodeLoc(2), headCenter_nodeLoc(3),'rx', 'MarkerSize', 20, 'LineWidth', 5)

            neckAxis = headCenter_nodeLoc - neck_shaftPlane_intersection';
            quiver3(neck_shaftPlane_intersection(1), neck_shaftPlane_intersection(2), neck_shaftPlane_intersection(3), ...
                neckAxis(1), neckAxis(2), neckAxis(3), 1, 'LineWidth', 5, 'Color', [0.8500 0.3250 0.0980])

            quiver3(neck_shaftPlane_intersection(1), neck_shaftPlane_intersection(2), neck_shaftPlane_intersection(3), ...
                diaphyseVector(1) * (-1), diaphyseVector(2) * (-1), diaphyseVector(3) * (-1), 300, 'LineWidth', 5, 'Color', [0.9290 0.6940 0.1250])


            legend({'', 'Intersection of neck axis and shaft axis', 'femoral head center', 'neck axis', 'shaft axis (parallel shifted)'});
            xlabel('[mm]'); ylabel('[mm]'); zlabel('[mm]');

            annotation('textbox', [0.75, 0.75, 0.2, 0], 'string', ['AVA = ' num2str(AVA_inTransverse) '°']);
            annotation('textbox', [0.75, 0.5, 0.2, 0], 'string', ['NSA = ' num2str(NSA) '°']);
        end

        % Button pushed function: CopyTableButton
        function CopyTableButtonPushed(app, event)
            table = string(app.ChangeOfGeometryTable.Data)';
            str = sprintf('Iteration\tAVA\tchange\tNSA\tchange\t+Varus/-Valgus\tmax deformation\n');
            str = [str sprintf('%s\t%f\t%f\t%f\t%f\t%f\t%f\n', table)];
            clipboard('copy', str);
        end

        % Value changed function: biologicalgrowth2mechanicalgrowthCheckBox
        function biologicalgrowth2mechanicalgrowthCheckBoxValueChanged(app, event)
            value = app.biologicalgrowth2mechanicalgrowthCheckBox.Value;
            if value
                app.avoidnegativegrowthCheckBox.Value = false;
                app.GrowthParametersTable.Data{3, 2} = NaN;
            else
                app.GrowthParametersTable.Data{3, 2} = 0;
            end
        end

        % Button pushed function: SelectCubitPathButton
        function SelectCubitPathButtonPushed(app, event)
            folder = uigetdir(app.latestSelectedFolder);
            drawnow;
            figure(app.GPToolAtoolboxUIFigure);
            if isfile(fullfile(folder, 'cubit.py'))
                app.cubitPathLabel.Text = folder;
                settings_cubitPath = folder;
                app.cubitPath = settings_cubitPath;
                save(fullfile(app.appDir, 'settings.mat'), 'settings_cubitPath', '-append')
                CheckCubitandSculptinstallationButtonPushed(app, 0);
            else
                answer = questdlg('Are you sure this is the correct folder? It does not seem to be the "bin" folder of Cubit', ...
                    'Are you sure?', ...
                    'Yes, I am sure','Cancel','Cancel');
                figure(app.GPToolAtoolboxUIFigure);
                if strcmp(answer, 'Yes, I am sure')
                    app.cubitPathLabel.Text = folder;
                    settings_cubitPath = folder;
                    app.cubitPath = settings_cubitPath;
                    save(fullfile(app.appDir, 'settings.mat'), 'settings_cubitPath', '-append')
                    CheckCubitandSculptinstallationButtonPushed(app, 0);
                end
            end

        end

        % Button pushed function: CheckPythoninstallationButton
        function CheckPythoninstallationButtonPushed(app, event)
            if system('python --version') == 0
                app.PythonStatusLamp.Color = [0 1 0];

                d = uiprogressdlg(app.GPToolAtoolboxUIFigure,'Title','Checking Python and PyMeshLab installation', 'Message','Checking if Python and PyMeshLab is installed correctly...');
                d.Value = 0.3;

                pythonFile = fullfile(app.appDir, 'checkMeshPython', 'testPyMeshLab.py');
                delete(fullfile(app.appDir, 'checkMeshPython', 'testPyMeshLabResult.txt'));

                runPythonScriptAndWaitForFinish(app, pythonFile);

                if isfile(fullfile(app.appDir, 'checkMeshPython', 'testPyMeshLabResult.txt'))
                    result = fileread(fullfile(app.appDir, 'checkMeshPython', 'testPyMeshLabResult.txt'));
                    d.Value = 0.7;

                    if strcmp(result, 'working')
                        app.PyMeshLabStatusLamp.Color = [0 1 0];
                    else
                        app.PyMeshLabStatusLamp.Color = [1 0 0];
                        warnHandle = warndlg('PyMeshLab is not installed correctly and automatic installation was not successful! Please try to install it manually');
                        figure(warnHandle);
                        waitfor(warnHandle);
                        figure(app.GPToolAtoolboxUIFigure);
                    end
                else
                    app.PyMeshLabStatusLamp.Color = [1 0 0];
                    warnHandle = warndlg('PyMeshLab is not installed correctly and automatic installation was not successful! Please try to install it manually');
                    figure(warnHandle);
                    waitfor(warnHandle);
                    figure(app.GPToolAtoolboxUIFigure);
                end

                d.close();
                checkIfFullSetupIsSuccessful(app);
            else
                warnHandle = warndlg('Python is not installed correctly! Be sure that python is installed and added to your systems PATH - variable');
                figure(warnHandle);
                waitfor(warnHandle);
                figure(app.GPToolAtoolboxUIFigure);
                app.PythonStatusLamp.Color = [1 0 0];
            end
        end

        % Button pushed function: CheckCubitandSculptinstallationButton
        function CheckCubitandSculptinstallationButtonPushed(app, event)
            if ~isequal(app.PythonStatusLamp.Color, [0 1 0])
                CheckPythoninstallationButtonPushed(app, 0);
            end
            if isequal(app.PythonStatusLamp.Color, [0 1 0])
                d = uiprogressdlg(app.GPToolAtoolboxUIFigure,'Title','Checking Cubit installation', 'Message','Checking if Coreform Cubit is installed correctly...');
                d.Value = 0.3;
                delete(fullfile(app.appDir, 'checkMeshPython', 'testSculptMesh.inp'));

                %% Write folder to pythonArgs.txt because winopen cannot use arguments...
                fid = fopen(fullfile(app.appDir, 'checkMeshPython', 'pythonArgs.txt'), 'w');
                fwrite(fid, ['' newline]);
                fwrite(fid, ['' newline]);
                fwrite(fid, [app.cubitPath filesep newline]);
                fwrite(fid, [app.mpiexecPath]);
                fclose(fid);

                pythonFile = fullfile(app.appDir, 'checkMeshPython', 'testCubit.py');
                runPythonScriptAndWaitForFinish(app, pythonFile);

                pause(2);
                result = fileread(fullfile(app.appDir, 'checkMeshPython', 'testCubitResult.txt'));
                d.Value = 0.7;
                if strcmp(result, 'working')
                    app.CoreformCubitStatusLamp.Color = [0 1 0];
                    if isfile(fullfile(app.appDir, 'checkMeshPython', 'testSculptMesh.inp'))
                        app.SculptStatusLamp.Color = [0 1 0];
                    else
                        app.SculptStatusLamp.Color = [1 0 0];
                        warnHandle = warndlg('Sculpt meshing is not installed correctly! Be sure that the path to "mpiexec.exe" is correct!');
                        figure(warnHandle);
                        waitfor(warnHandle);
                        figure(app.GPToolAtoolboxUIFigure);
                    end
                else
                    app.CoreformCubitStatusLamp.Color = [1 0 0];
                    warnHandle = warndlg('Coreform Cubit is not installed correctly! Be sure that the path to Cubits "bin"-folder is correct, that you have a valid license to run Cubit and that your python version is compatible with Cubit (2022.4 needs at least python 3.10)!');
                    figure(warnHandle);
                    waitfor(warnHandle);
                    figure(app.GPToolAtoolboxUIFigure);
                end
                d.close();
                checkIfFullSetupIsSuccessful(app);
            end
        end

        % Button pushed function: CheckallButton
        function CheckallButtonPushed(app, event)
            CheckPythoninstallationButtonPushed(app, 0);
            if isequal(app.PythonStatusLamp.Color, [0 1 0])
                CheckCubitandSculptinstallationButtonPushed(app, 0);
                CheckFeBioinstallationButtonPushed(app, 0);
                CheckAbaqusButtonPushed(app, 0);
            end
        end

        % Button pushed function: Selectfebio3exeButton
        function Selectfebio3exeButtonPushed(app, event)
            [baseName, folder] = uigetfile('febio3.exe');
            drawnow;
            figure(app.GPToolAtoolboxUIFigure);
            febioFile = fullfile(folder, baseName);
            if contains(febioFile, 'febio3.exe')
                app.febioPathLabel.Text = febioFile;
                setFEBioPath(febioFile);
                CheckFeBioinstallationButtonPushed(app, 0);
            else
                answer = questdlg('Are you sure this is the file? It does not seem to be the "febio3.exe"', ...
                    'Are you sure?', ...
                    'Yes, I am sure','Cancel','Cancel');
                figure(app.GPToolAtoolboxUIFigure);
                if strcmp(answer, 'Yes, I am sure')
                    app.febioPathLabel.Text = febioFile;
                    setFEBioPath(febioFile);
                end
            end
        end

        % Button pushed function: CheckFeBioinstallationButton
        function CheckFeBioinstallationButtonPushed(app, event)
            d = uiprogressdlg(app.GPToolAtoolboxUIFigure,'Title','Checking FeBio installation', 'Message','Checking if FeBio is installed correctly...');
            d.Value = 0.3;

            load(fullfile(app.appDir, 'febioTest.mat'), 'febio_spec');

            %Output section
            % -> log file
            febioLogFileName = fullfile(app.appDir, 'febioTestLog.txt');
            febioLogFileName_displacement = fullfile(app.appDir, 'febioTestLog_displacements.txt');
            febio_spec.Output.logfile.ATTR.file=febioLogFileName;
            febio_spec.Output.logfile.node_data{1}.ATTR.file=febioLogFileName_displacement;
            febio_spec.Output.logfile.node_data{1}.ATTR.data='ux;uy;uz';
            febio_spec.Output.logfile.node_data{1}.ATTR.delim=',';
            febioFebFileName = fullfile(app.appDir, 'febioTest.feb');
            febioStruct2xml(febio_spec,febioFebFileName);

            d.Value = 0.5;

            febioAnalysis.run_filename=febioFebFileName; %The input file name
            febioAnalysis.run_logname=febioLogFileName; %The name for the log file
            febioAnalysis.disp_on=1; %Display information on the command window
            febioAnalysis.runMode='external';
            febioAnalysis.maxLogCheckTime=10; %Max log file checking time

            [runFlag]=runMonitorFEBio(febioAnalysis);
            delete(febioLogFileName);
            delete(febioLogFileName_displacement);

            delete(fullfile(app.appDir, 'febioTest.xplt'));
            d.Value = 0.9;
            if runFlag == 1
                % febio setup correctly
                app.FeBioStatusLamp.Color = [0 1 0];
            else
                % febio not working!
                app.FeBioStatusLamp.Color = [1 0 0];
                warnHandle = warndlg('FeBio is not installed correctly! Be sure that the path to the febio3.exe is correct!');
                figure(warnHandle);
                waitfor(warnHandle);
                figure(app.GPToolAtoolboxUIFigure);
            end
            d.close();

            checkIfFullSetupIsSuccessful(app);
        end

        % Button pushed function: SelectmpiexecexeButton
        function SelectmpiexecexeButtonPushed(app, event)
            [baseName, folder] = uigetfile('mpiexec.exe');
            drawnow;
            figure(app.GPToolAtoolboxUIFigure);
            mpiexecFile = fullfile(folder, baseName);
            if contains(mpiexecFile, 'mpiexec.exe')
                app.mpiexecPathLabel.Text = mpiexecFile;
                settings_mpiexecPath = mpiexecFile;
                app.mpiexecPath = settings_mpiexecPath;
                save(fullfile(app.appDir, 'settings.mat'), 'settings_mpiexecPath', '-append')
            else
                warnHandle = warndlg('This is not a file named "mpiexec.exe"!');
                figure(warnHandle);
                waitfor(warnHandle);
                figure(app.GPToolAtoolboxUIFigure);
            end
        end

        % Button pushed function: OpenMuscleAttachmentSummaryButton
        function OpenMuscleAttachmentSummaryButtonPushed(app, event)
            winopen(fullfile(app.analysisFolder, 'Iteration_1', 'muscleAttachmentSummary.txt'));
        end

        % Button pushed function: OpenMuscleAttachmentDetailedTableButton
        function OpenMuscleAttachmentDetailedTableButtonPushed(app, event)
            winopen(fullfile(app.analysisFolder, 'Iteration_1', 'muscleAttachments.csv'));
        end

        % Button pushed function: JointReactionLoadFileButton
        function JointReactionLoadFileButtonPushed(app, event)
            [tmp_filename, folder] = uigetfile('*.sto', 'Joint Reaction Loads', fullfile(app.latestSelectedFolder, '_JointReaction_ReactionLoads.sto.sto'));
            drawnow;
            figure(app.GPToolAtoolboxUIFigure);
            if folder ~= 0
                app.JointReactionLoadnotselectedLabel.Text = fullfile(folder, tmp_filename);
                app.latestSelectedFolder = folder;
                if ~contains(tmp_filename, 'JointReaction')
                    warnHandle = warndlg('Selected file might be wrong, check again.');
                    figure(warnHandle);
                    waitfor(warnHandle);
                    figure(app.GPToolAtoolboxUIFigure);
                else
                    files = dir(fullfile(folder, '*.sto'));
                    filenames = {files.name};
                    attachmentFile = filenames(contains(filenames, '_MuscleForceDirection_attachments'));
                    if ~isempty(attachmentFile) && size(attachmentFile, 2) == 1
                        app.MuscleForceDirectionAttachmentsnotselectedLabel.Text = fullfile(folder, attachmentFile{1});
                    end
                    vectorFile = filenames(contains(filenames, '_MuscleForceDirection_vectors'));
                    if ~isempty(vectorFile) && size(vectorFile, 2) == 1
                        app.MuscleForceDirectionVectorsnotselectedLabel.Text = fullfile(folder, vectorFile{1});
                    end

                    soFolder = strrep(folder, [filesep 'JRL' filesep], [filesep 'SO' filesep]);
                    files = dir(fullfile(soFolder, '*.sto'));
                    filenames = {files.name};
                    forceFile = filenames(contains(filenames, '_force'));
                    if ~isempty(forceFile) && size(forceFile, 2) == 1
                        app.MuscleForcesegfromStaticOptimizationnotselectedLabel.Text = fullfile(soFolder, forceFile{1});
                    end
                end
            end
        end

        % Button pushed function: MuscleForceDirectionAttachmentsButton
        function MuscleForceDirectionAttachmentsButtonPushed(app, event)
            [tmp_filename, folder] = uigetfile('*.sto', 'MuscleForceDirection ATTACHMENTS', fullfile(app.latestSelectedFolder, '_MuscleForceDirection_attachments.sto'));
            drawnow;
            figure(app.GPToolAtoolboxUIFigure);
            if folder ~= 0
                app.MuscleForceDirectionAttachmentsnotselectedLabel.Text = fullfile(folder, tmp_filename);
                app.latestSelectedFolder = folder;
                if ~contains(tmp_filename, 'attachments')
                    warnHandle = warndlg('Selected file might be wrong, check again.');
                    figure(warnHandle);
                    waitfor(warnHandle);
                    figure(app.GPToolAtoolboxUIFigure);
                end
            end
        end

        % Button pushed function: MuscleForceDirectionVectorsButton
        function MuscleForceDirectionVectorsButtonPushed(app, event)
            [tmp_filename, folder] = uigetfile('*.sto', 'MuscleForceDirection VECTORS', fullfile(app.latestSelectedFolder, '_MuscleForceDirection_vectors.sto'));
            drawnow;
            figure(app.GPToolAtoolboxUIFigure);
            if folder ~= 0
                app.MuscleForceDirectionVectorsnotselectedLabel.Text = fullfile(folder, tmp_filename);
                app.latestSelectedFolder = folder;
                if ~contains(tmp_filename, 'vectors')
                    warnHandle = warndlg('Selected file might be wrong, check again.');
                    figure(warnHandle);
                    waitfor(warnHandle);
                    figure(app.GPToolAtoolboxUIFigure);
                end
            end
        end

        % Button pushed function: MuscleForcesButton
        function MuscleForcesButtonPushed(app, event)
            [tmp_filename, folder] = uigetfile('*.sto', 'Muscle FORCES (e.g. from Static Optimization', fullfile(app.latestSelectedFolder, '_StaticOptimization_force.sto'));
            drawnow;
            figure(app.GPToolAtoolboxUIFigure);
            if folder ~= 0
                app.MuscleForcesegfromStaticOptimizationnotselectedLabel.Text = fullfile(folder, tmp_filename);
                app.latestSelectedFolder = folder;
                if ~contains(tmp_filename, 'StaticOptimization_force')
                    warnHandle = warndlg('Selected file might be wrong, check again.');
                    figure(warnHandle);
                    waitfor(warnHandle);
                    figure(app.GPToolAtoolboxUIFigure);
                end
            end
        end

        % Button pushed function: 
        % DefineloadinstancesandcreateloadingfileButton
        function DefineloadinstancesandcreateloadingfileButtonPushed(app, event)
            try
                d = uiprogressdlg(app.GPToolAtoolboxUIFigure,'Title','Loading ...', 'Message','Loading data from files');

                jrl = load_sto_file(app.JointReactionLoadnotselectedLabel.Text);
                d.Value = 0.1;
                muscleAttachments = load_sto_file(app.MuscleForceDirectionAttachmentsnotselectedLabel.Text);
                d.Value = 0.2;
                muscleDirections = load_sto_file(app.MuscleForceDirectionVectorsnotselectedLabel.Text);
                d.Value = 0.3;
                muscleForces = load_sto_file(app.MuscleForcesegfromStaticOptimizationnotselectedLabel.Text);
                d.Value = 0.4;
                successfullyLoaded = 1;
            catch
                warnHandle = errordlg('Files are not selected correctly!', 'Error loading files');
                figure(warnHandle);
                waitfor(warnHandle);
                figure(app.GPToolAtoolboxUIFigure);
                d.close();
                successfullyLoaded = 0;
            end

            if successfullyLoaded
                if app.rightButton.Value
                    sideLong = 'right';
                    side = 'r';
                else
                    sideLong = 'left';
                    side = 'l';
                end

                d.Message = 'Converting data';
                jrl_fields = fieldnames(jrl);
                for i = 1: numel(jrl_fields)
                    jrl.(jrl_fields{i}) = jrl.(jrl_fields{i});
                end

                md_fields = fieldnames(muscleDirections);
                for i = 1: numel(md_fields)
                    muscleDirections.(md_fields{i}) = muscleDirections.(md_fields{i});
                end

                mf_fields = fieldnames(muscleForces);
                for i = 1: numel(mf_fields)
                    muscleForces.(mf_fields{i}) = muscleForces.(mf_fields{i});
                end

                ma_fields = fieldnames(muscleAttachments);
                for i = 1: numel(mf_fields)
                    muscleAttachments.(ma_fields{i}) = muscleAttachments.(ma_fields{i});
                end
                d.Value = 0.6;
                d.Message = 'Identifying load instances';

                frequency = 1 / ((jrl.time(end) - jrl.time(1)) / size(jrl.time,1));

                if app.HipContactForceButton.Value == 0
                    distal = 1;
                    % find relevant load instances from knee contact force
                    KJCFfieldName = ['Lerner_knee_' lower(side) '_on_sagittal_articulation_frame_' lower(side) '_in_femur_' lower(side) '_f']; % Lerner_knee_r_on_sagittal_articulation_frame_r_in_femur_r_fx
                    KJCF_fullCycle = sqrt(jrl.([KJCFfieldName 'x']).^2 + jrl.([KJCFfieldName 'y']).^2 + jrl.([KJCFfieldName 'z']).^2);

                    loadingRate = diff(KJCF_fullCycle) / (1 / frequency);

                    try

                        try
                            load(fullfile(app.JointReactionLoadnotselectedLabel.Text, '..', '..', '..', 'settings.mat'))
                            initialContact = preframes;
                            try
                                corrSideMinInd = cycle.(sideLong).start(1);
                                minInd = min(cycle.left.start(1), cycle.right.start(1));
                                if minInd ~= corrSideMinInd
                                    initialContact = corrSideMinInd - minInd + preframes;
                                else
                                    initialContact = preframes;
                                end
                            catch
                                initialContact = preframes;                            
                            end
                            footOff = cycle.(sideLong).footOff(1) - cycle.(sideLong).start(1) + initialContact;
                            trialDuration = footOff - initialContact;
                            tmp_KJCF_fullCycle = KJCF_fullCycle(initialContact : footOff);
                        catch

                            [~, ind] = max(loadingRate); % loading rate is highest at initial contact
                            [~, initialContact] = min(KJCF_fullCycle(ind - floor(0.05*frequency) : ind + floor(0.05*frequency)));
                            initialContact = initialContact + ind - floor(0.05*frequency) - 1;

                            [~, ind] = min(loadingRate(initialContact + floor(0.3*frequency) : initialContact+floor(0.8*frequency))); % loading rate is most negative at foot off
                            ind = ind + initialContact + floor(0.3*frequency);
                            [~, footOff] = min(KJCF_fullCycle(ind - floor(0.05*frequency) : ind + floor(0.07*frequency)));
                            footOff = footOff + ind - floor(0.05*frequency);

                            approximateEnd = initialContact + floor(0.8*frequency); % stance is most likely finished after 0.8s
                            tmp_KJCF_fullCycle = KJCF_fullCycle(initialContact : approximateEnd);
                            trialDuration = approximateEnd - initialContact;
                        end
                        [max_peak_vals,max_peak_locs] = findpeaks(tmp_KJCF_fullCycle, 'MinPeakDistance', trialDuration / 3);
                        [~,min_peak_locs] = findpeaks(-tmp_KJCF_fullCycle(max_peak_locs(1) : max_peak_locs(2)), 'MinPeakDistance', max_peak_locs(2) - max_peak_locs(1) - 1);
                        min_peak_locs = min_peak_locs + max_peak_locs(1) - 1;
                        loadIndizes(1) = 0; % initial contact is load instance 1
                        loadIndizes(3) = max_peak_locs(1) - 1; % first peak is load instance 3
                        loadIndizes(7) = max_peak_locs(2) - 1; % second peak is load instance 7
                        loadIndizes(5) = min_peak_locs(1) - 1; % valley between peak 1 & 2 is load instance 5
                        loadIndizes(9) = footOff - initialContact; % foot off is load instance 9
                        loadIndizes(2) = round((loadIndizes(1) + loadIndizes(3)) / 2);
                        loadIndizes(4) = round((loadIndizes(3) + loadIndizes(5)) / 2);
                        loadIndizes(6) = round((loadIndizes(5) + loadIndizes(7)) / 2);
                        loadIndizes(8) = round((loadIndizes(7) + loadIndizes(9)) / 2);

                        loadIndizes = int32(loadIndizes + initialContact);
                        d.Value = 0.8;
                        d.Message = 'Checking with user if it is correct';

                        f = figure('units','normalized','outerposition',[0 0 1 1]);
                        hold on;
                        plot(KJCF_fullCycle);
                        title('KJCF - load instances');
                        ylabel('KJCF [N]');
                        xlabel('time [frames]');
                        plot(loadIndizes, KJCF_fullCycle(loadIndizes), 'r*');
                        plot([loadIndizes(9) loadIndizes(9)], [0 max(max_peak_vals)], 'b-');

                        loadingTexts = {'Foot contact', '1^{st} peak', 'Valley between 1^{st} and 2^{nd} peaks', '2^{nd} peak' 'Foot Off'};
                        for i = 1 : 5
                            text(loadIndizes(i*2-1), KJCF_fullCycle(loadIndizes(i*2-1)), loadingTexts{i}, 'HorizontalAlignment', 'center', 'VerticalAlignment', 'top')
                        end

                        answer = 'Yes'; %questdlg('Are the load instances correct?', 'Loading correct?', 'Yes', 'No', 'Yes');
                    catch
                        answer = 'No';
                        if ~exist('f')
                            f = figure('units','normalized','outerposition',[0 0 1 1]);
                            hold on;
                            plot(KJCF_fullCycle);
                            title('KJCF - load instances');
                            ylabel('KJCF [N]');
                            xlabel('time [frames]');
                        end
                    end
                    figure(app.GPToolAtoolboxUIFigure);
                    if strcmp(answer, 'Yes')
                        [saveFileName, app.latestSelectedFolder] = uiputfile(fullfile(app.latestSelectedFolder, ['loading_' sideLong '_distal.mat']));
                        if sum(saveFileName ~= 0) && sum(app.latestSelectedFolder ~= 0)
                            save(fullfile(app.latestSelectedFolder, saveFileName), 'jrl', 'muscleAttachments', 'muscleDirections', 'muscleForces', 'loadIndizes', 'distal');
                        end
                    else
                        endLoop = 0;
                        while(~endLoop)
                            warnHandle = msgbox({'Select:  '; '1) initial contact '; '2) first peak '; '3) valley between first and second peak';'4) second peak'; '5) foot off'});
                            figure(warnHandle);
                            waitfor(warnHandle);                 figure(app.GPToolAtoolboxUIFigure);
                            try
                                [x, ~] = ginput(5);
                                close(f);
                                loadIndizes(1) = round(x(1)); % initial contact is load instance 1
                                loadIndizes(3) = round(x(2)); % first peak is load instance 3
                                loadIndizes(7) = round(x(4)); % second peak is load instance 7
                                loadIndizes(5) = round(x(3)); % valley between peak 1 & 2 is load instance 5
                                loadIndizes(9) = round(x(5)); % foot off is load instance 9
                                loadIndizes(2) = round((loadIndizes(1) + loadIndizes(3)) / 2);
                                loadIndizes(4) = round((loadIndizes(3) + loadIndizes(5)) / 2);
                                loadIndizes(6) = round((loadIndizes(5) + loadIndizes(7)) / 2);
                                loadIndizes(8) = round((loadIndizes(7) + loadIndizes(9)) / 2);
                                f = figure('units','normalized','outerposition',[0 0 1 1]);
                                hold on;
                                plot(KJCF_fullCycle);
                                title('KJCF - load instances');
                                ylabel('KJCF [N]');
                                xlabel('time [frames]');
                                plot(loadIndizes, KJCF_fullCycle(loadIndizes), 'r*');
                                ylims = ylim;
                                plot([loadIndizes(9) loadIndizes(9)], ylims, 'b-');

                                loadingTexts = {'Foot contact', '1^{st} peak', 'Valley between 1^{st} and 2^{nd} peaks', '2^{nd} peak' 'Foot Off'};
                                for i = 1 : 5
                                    text(loadIndizes(i*2-1), KJCF_fullCycle(loadIndizes(i*2-1)), loadingTexts{i}, 'HorizontalAlignment', 'center', 'VerticalAlignment', 'top')
                                end

                                answer = 'Yes'; %questdlg('Are the load instances now correct?', 'Loading correct?', 'Yes', 'Select again', 'Cancel', 'Yes');
                                figure(app.GPToolAtoolboxUIFigure);
                                if strcmp(answer, 'Yes')
                                    [saveFileName, app.latestSelectedFolder] = uiputfile(fullfile(app.latestSelectedFolder, ['loading_' sideLong '_distal.mat']));
                                    if sum(saveFileName ~= 0) && sum(app.latestSelectedFolder ~= 0)
                                        save(fullfile(app.latestSelectedFolder, saveFileName), 'jrl', 'muscleAttachments', 'muscleDirections', 'muscleForces', 'loadIndizes', 'distal');
                                    end
                                    endLoop = 1;
                                elseif strcmp(answer, 'Cancel')
                                    endLoop = 1;
                                end
                            catch
                                endLoop = 1;
                            end
                        end
                    end
                else
                    distal = 0;
                    % find relevant load instances from hip contact force
                    HJCFfieldName = ['hip_' lower(side) '_on_femur_' lower(side) '_in_femur_' lower(side) '_f'];
                    HJCF_fullCycle = sqrt(jrl.([HJCFfieldName 'x']).^2 + jrl.([HJCFfieldName 'y']).^2 + jrl.([HJCFfieldName 'z']).^2);
                    loadingRate = diff(HJCF_fullCycle) / (1 / frequency);

                    try
                        load(fullfile(app.JointReactionLoadnotselectedLabel.Text, '..', '..', '..', 'settings.mat'))
                        initialContact = preframes;
                        try
                            corrSideMinInd = cycle.(sideLong).start(1);
                            minInd = min(cycle.left.start(1), cycle.right.start(1));
                            if minInd ~= corrSideMinInd
                                initialContact = corrSideMinInd - minInd + preframes;
                            else
                                initialContact = preframes;
                            end
                        catch
                            initialContact = preframes;
                        end
                        endfootOff = cycle.(sideLong).footOff(1) - cycle.(sideLong).start(1) + preframes;
                        trialDuration = footOff - initialContact;
                        tmp_HJCF_fullCycle = HJCF_fullCycle(initialContact : footOff);
                    catch

                        [~, ind] = max(loadingRate); % loading rate is highest at initial contact
                        [~, initialContact] = min(HJCF_fullCycle(ind - floor(0.05*frequency) : ind + floor(0.05*frequency)));
                        initialContact = initialContact + ind - floor(0.05*frequency) - 1;

                        [~, ind] = min(loadingRate(initialContact + floor(0.3*frequency) : initialContact+floor(0.8*frequency))); % loading rate is most negative at foot off
                        ind = ind + initialContact + floor(0.3*frequency);
                        [~, footOff] = min(HJCF_fullCycle(ind - floor(0.05*frequency) : ind + floor(0.07*frequency)));
                        footOff = footOff + ind - floor(0.05*frequency);

                        approximateEnd = initialContact + floor(0.8*frequency); % stance is most likely finished after 0.8s
                        tmp_HJCF_fullCycle = HJCF_fullCycle(initialContact : approximateEnd);
                        trialDuration = approximateEnd - initialContact;

                    end

                    [max_peak_vals,max_peak_locs] = findpeaks(tmp_HJCF_fullCycle, 'MinPeakDistance', trialDuration / 4);
                    [~,min_peak_locs] = findpeaks(-tmp_HJCF_fullCycle(max_peak_locs(1) : max_peak_locs(2)), 'MinPeakDistance', max_peak_locs(2) - max_peak_locs(1) - 1);
                    min_peak_locs = min_peak_locs + max_peak_locs(1) - 1;
                    loadIndizes(1) = 0; % initial contact is load instance 1
                    loadIndizes(3) = max_peak_locs(1) - 1; % first peak is load instance 3
                    loadIndizes(7) = max_peak_locs(2) - 1; % second peak is load instance 7
                    loadIndizes(5) = min_peak_locs(1) - 1; % valley between peak 1 & 2 is load instance 5
                    loadIndizes(9) = footOff - initialContact; % foot off is load instance 9
                    loadIndizes(2) = round((loadIndizes(1) + loadIndizes(3)) / 2);
                    loadIndizes(4) = round((loadIndizes(3) + loadIndizes(5)) / 2);
                    loadIndizes(6) = round((loadIndizes(5) + loadIndizes(7)) / 2);
                    loadIndizes(8) = round((loadIndizes(7) + loadIndizes(9)) / 2);

                    loadIndizes = int32(loadIndizes + initialContact);
                    d.Value = 0.8;
                    d.Message = 'Checking with user if it is correct';

                    f = figure('units','normalized','outerposition',[0 0 1 1]);
                    hold on;
                    plot(HJCF_fullCycle);
                    title('HJCF - load instances');
                    ylabel('HJCF [N]');
                    xlabel('time [frames]');
                    plot(loadIndizes, HJCF_fullCycle(loadIndizes), 'r*');
                    plot([loadIndizes(9) loadIndizes(9)], [0 max(max_peak_vals)], 'b-');

                    loadingTexts = {'Foot contact', '1^{st} peak', 'Valley between 1^{st} and 2^{nd} peaks', '2^{nd} peak' 'Foot Off'};
                    for i = 1 : 5
                        text(loadIndizes(i*2-1), HJCF_fullCycle(loadIndizes(i*2-1)), loadingTexts{i}, 'HorizontalAlignment', 'center', 'VerticalAlignment', 'top')
                    end

                    answer = 'Yes'; %questdlg('Are the load instances correct?', 'Loading correct?', 'Yes', 'No', 'Yes');
                    figure(app.GPToolAtoolboxUIFigure);
                    if strcmp(answer, 'Yes')
                        [saveFileName, app.latestSelectedFolder] = uiputfile(fullfile(app.latestSelectedFolder, ['loading_' sideLong '.mat']));
                        if sum(saveFileName ~= 0) && sum(app.latestSelectedFolder ~= 0)
                            save(fullfile(app.latestSelectedFolder, saveFileName), 'jrl', 'muscleAttachments', 'muscleDirections', 'muscleForces', 'loadIndizes', 'distal');
                        end
                    else
                        endLoop = 0;
                        while(~endLoop)
                            warnHandle = msgbox({'Select:  '; '1) initial contact '; '2) first peak '; '3) valley between first and second peak';'4) second peak'; '5) foot off'});
                            figure(warnHandle);
                            waitfor(warnHandle);                 figure(app.GPToolAtoolboxUIFigure);
                            try
                                [x, ~] = ginput(5);
                                close(f);
                                loadIndizes(1) = round(x(1)); % initial contact is load instance 1
                                loadIndizes(3) = round(x(2)); % first peak is load instance 3
                                loadIndizes(7) = round(x(4)); % second peak is load instance 7
                                loadIndizes(5) = round(x(3)); % valley between peak 1 & 2 is load instance 5
                                loadIndizes(9) = round(x(5)); % foot off is load instance 9
                                loadIndizes(2) = round((loadIndizes(1) + loadIndizes(3)) / 2);
                                loadIndizes(4) = round((loadIndizes(3) + loadIndizes(5)) / 2);
                                loadIndizes(6) = round((loadIndizes(5) + loadIndizes(7)) / 2);
                                loadIndizes(8) = round((loadIndizes(7) + loadIndizes(9)) / 2);
                                f = figure('units','normalized','outerposition',[0 0 1 1]);
                                hold on;
                                plot(HJCF_fullCycle);
                                title('HJCF - load instances');
                                ylabel('HJCF [N]');
                                xlabel('time [frames]');
                                plot(loadIndizes, HJCF_fullCycle(loadIndizes), 'r*');
                                plot([loadIndizes(9) loadIndizes(9)], [0 max(max_peak_vals)], 'b-');

                                loadingTexts = {'Foot contact', '1^{st} peak', 'Valley between 1^{st} and 2^{nd} peaks', '2^{nd} peak' 'Foot Off'};
                                for i = 1 : 5
                                    text(loadIndizes(i*2-1), HJCF_fullCycle(loadIndizes(i*2-1)), loadingTexts{i}, 'HorizontalAlignment', 'center', 'VerticalAlignment', 'top')
                                end

                                answer = 'Yes'; %questdlg('Are the load instances now correct?', 'Loading correct?', 'Yes', 'Select again', 'Cancel', 'Yes');
                                figure(app.GPToolAtoolboxUIFigure);
                                if strcmp(answer, 'Yes')
                                    [saveFileName, app.latestSelectedFolder] = uiputfile(fullfile(app.latestSelectedFolder, ['loading_' sideLong '.mat']));
                                    if sum(saveFileName ~= 0) && sum(app.latestSelectedFolder ~= 0)
                                        save(fullfile(app.latestSelectedFolder, saveFileName), 'jrl', 'muscleAttachments', 'muscleDirections', 'muscleForces', 'loadIndizes', 'distal');
                                    end
                                    endLoop = 1;
                                elseif strcmp(answer, 'Cancel')
                                    endLoop = 1;
                                end
                            catch
                                endLoop = 1;
                            end
                        end
                    end
                end
                close(f);
                figure(app.GPToolAtoolboxUIFigure);
                d.close();
            end
        end

        % Button pushed function: 
        % ReadsomeinformationaboutthesesettingsButton
        function ReadsomeinformationaboutthesesettingsButtonPushed(app, event)
            winopen(fullfile(app.appDir, 'README_AnalysisSettings.pdf'));
        end

        % Button pushed function: OpenREADMEButton
        function OpenREADMEButtonPushed(app, event)
            winopen(fullfile(app.appDir, 'README.pdf'));
        end

        % Button pushed function: AdvancedproximalgeometryplotButton
        function AdvancedproximalgeometryplotButtonPushed(app, event)
            meshSettingsFile = fullfile(app.meshFolder, 'meshSettings.mat');
            load(meshSettingsFile, 'renumbered_nodes', 'renumbered_elements', 'headCenter_nodeLoc', 'neckAxis', 'total_nr_of_rows', 'normalVectorToGrowthPlate');
            load(fullfile(app.probandFolder, 'settings.mat'), 'side');
            STL_path = fullfile(app.meshFolder, 'Mesh', [side '_femur_CS_OpenSim.stl']);
            proxTMP = headCenter_nodeLoc - neckAxis' * 100;
            distTMP = headCenter_nodeLoc + neckAxis' * 200;
            OS_stlStruct = import_STL(STL_path);
            vertexMAT = OS_stlStruct.solidVertices{1, 1};

            figure('units','normalized','outerposition',[0 0 1 1]);
            title(app.AvailableParticipantsinthisdatafolderListBox.Value)
            plotNodes(vertexMAT(1 : size(vertexMAT, 1) / 1500 : end, :));
            daspect([1 1 1]);

            hold on;
            l = 300;
            quiver3(proxTMP(1), proxTMP(2), proxTMP(3), neckAxis(1) * l, neckAxis(2) * l, neckAxis(3) * l, 'LineWidth', 2);

            tmp = proxTMP;
            while(true)
                tmp = tmp + neckAxis' * 0.5;
                D = pdist2(vertexMAT, tmp);
                [minD, ind] = min(D);
                if minD < 2
                    cutProx = vertexMAT(ind, :);
                    break;
                end
            end
            plot3(cutProx(1), cutProx(2), cutProx(3), 'cx', 'LineWidth', 3, 'MarkerSize', 20)

            tmp = distTMP;
            while(true)
                tmp = tmp - neckAxis' * 0.5;
                D = pdist2(vertexMAT, tmp);
                [minD, ind] = min(D);
                if minD < 2
                    cutDist = vertexMAT(ind, :);
                    break;
                end
            end

            plot3(cutDist(1), cutDist(2), cutDist(3), 'cx', 'LineWidth', 3, 'MarkerSize', 20)

            middleRow = floor(total_nr_of_rows / 2);
            elementsOfMiddleRow = renumbered_elements.Sets.(['row_' num2str(middleRow)]).elements;
            nodesOfMiddleRow = unique(renumbered_elements.E(elementsOfMiddleRow, :));
            nodesOfMiddleRow = renumbered_nodes.N(nodesOfMiddleRow, :);
            plotNodes(nodesOfMiddleRow);
            meanOfMiddleRow = mean(nodesOfMiddleRow, 1);
            quiver3(meanOfMiddleRow(1), meanOfMiddleRow(2), meanOfMiddleRow(3), normalVectorToGrowthPlate(1), normalVectorToGrowthPlate(2), normalVectorToGrowthPlate(3), 100, 'LineWidth', 3);

            lastD = 100;
            tmp = cutProx;
            while(true)
                tmp = tmp + neckAxis' * 0.1;
                D = pdist2(tmp, meanOfMiddleRow);
                if D < lastD
                    lastD = D;
                else
                    intersectGP = tmp - neckAxis' * 0.1;
                    break;
                end
            end

            lengthNeckVector = pdist2(cutProx, cutDist);
            lengthProxToGPIntersection = pdist2(cutProx, intersectGP);

            proxOffsetPercentage = lengthProxToGPIntersection / lengthNeckVector;

            % plot coordinate system
            quiver3(meanOfMiddleRow(1), meanOfMiddleRow(2), meanOfMiddleRow(3), 1, 0, 0, 100);
            quiver3(meanOfMiddleRow(1), meanOfMiddleRow(2), meanOfMiddleRow(3), 0, 1, 0, 100);
            if strcmp(side, 'L')
                quiver3(meanOfMiddleRow(1), meanOfMiddleRow(2), meanOfMiddleRow(3), 0, 0, 1, 100);
            else
                quiver3(meanOfMiddleRow(1), meanOfMiddleRow(2), meanOfMiddleRow(3), 0, 0, -1, 100);
            end

            xlabel('[mm]'); ylabel('[mm]'); zlabel('[mm]');
            legend('Geometry', 'neckAxis', 'prox end of neck', 'dist end of neck', 'growth plate (GP)', 'normal vector to GP', 'anterior axis', 'superior axis', 'medial axis')

            annotation('textbox', [0.75, 0.5, 0.2, 0], 'string', {['Distance between cyan points = ' num2str(round(lengthNeckVector, 1)) 'mm'], ...
                ['Distance of proximal cyan point to growth ploate = ' num2str(round(lengthProxToGPIntersection, 1)) 'mm'], ['This is at ' num2str(round(proxOffsetPercentage*100, 1)) '% of the distance between both cyan points']});
        end

        % Button pushed function: CheckAbaqusButton
        function CheckAbaqusButtonPushed(app, event)
            if system('abaqus information=release') == 0
                app.AbaqusStatusLamp.Color = [0 1 0];
                abaqus_working = 1;
                save(fullfile(app.appDir, 'settings.mat'), 'abaqus_working', '-append');
            else
                abaqus_working = 0;
                save(fullfile(app.appDir, 'settings.mat'), 'abaqus_working', '-append');
                warnHandle = warndlg('Abaqus is not installed correctly! This does not matter, growth simulations will by default be perfomed with FEBio anyway');
                figure(warnHandle);
                waitfor(warnHandle);
                figure(app.GPToolAtoolboxUIFigure);
                app.AbaqusStatusLamp.Color = [1 0 0];
            end
        end

        % Callback function
        function JointReactionLoadExpressedinParentButtonPushed(app, event)
            [tmp_filename, folder] = uigetfile('*.sto', 'Joint Reaction Loads expressed in parent frame', fullfile(app.latestSelectedFolder, '_JointReaction_ReactionLoads.sto.sto'));
            drawnow;
            figure(app.GPToolAtoolboxUIFigure);
            if folder ~= 0
                app.JointReactionLoadExpressedInParent.Text = fullfile(folder, tmp_filename);
                app.latestSelectedFolder = folder;
                if ~contains(tmp_filename, 'JointReaction')
                    warnHandle = warndlg('Selected file might be wrong, check again.');
                    figure(warnHandle);
                    waitfor(warnHandle);
                    figure(app.GPToolAtoolboxUIFigure);
                end
            end
        end
    end

    % Component initialization
    methods (Access = public)

        % Create UIFigure and components
        function createComponents(app)

            % Create GPToolAtoolboxUIFigure and hide until all components are created
            app.GPToolAtoolboxUIFigure = uifigure('Visible', 'off');
            app.GPToolAtoolboxUIFigure.Position = [100 100 1120 634];
            app.GPToolAtoolboxUIFigure.Name = 'GP-Tool: A toolbox to perform subject-specific femoral growth predictions semi-automatically ';

            % Create SelectdatafolderButton
            app.SelectdatafolderButton = uibutton(app.GPToolAtoolboxUIFigure, 'push');
            app.SelectdatafolderButton.ButtonPushedFcn = createCallbackFcn(app, @SelectdatafolderButtonPushed, true);
            app.SelectdatafolderButton.Position = [13 14 109 22];
            app.SelectdatafolderButton.Text = 'Select data folder';

            % Create workingDirectoryLabel
            app.workingDirectoryLabel = uilabel(app.GPToolAtoolboxUIFigure);
            app.workingDirectoryLabel.WordWrap = 'on';
            app.workingDirectoryLabel.Position = [134 14 753 22];
            app.workingDirectoryLabel.Text = 'nothing selected';

            % Create TabGroup
            app.TabGroup = uitabgroup(app.GPToolAtoolboxUIFigure);
            app.TabGroup.Position = [12 48 1098 573];

            % Create GeneralSettingsTab
            app.GeneralSettingsTab = uitab(app.TabGroup);
            app.GeneralSettingsTab.Title = 'General Settings';

            % Create Hyperlink4
            app.Hyperlink4 = uihyperlink(app.GeneralSettingsTab);
            app.Hyperlink4.FontSize = 14;
            app.Hyperlink4.URL = 'https://febio.org/downloads/';
            app.Hyperlink4.Position = [874 361 44 22];
            app.Hyperlink4.Text = 'FeBio';

            % Create FeBiotypicallyCProgramFilesFEBioStudiofebiofebio3exeLabel
            app.FeBiotypicallyCProgramFilesFEBioStudiofebiofebio3exeLabel = uilabel(app.GeneralSettingsTab);
            app.FeBiotypicallyCProgramFilesFEBioStudiofebiofebio3exeLabel.FontSize = 14;
            app.FeBiotypicallyCProgramFilesFEBioStudiofebiofebio3exeLabel.FontWeight = 'bold';
            app.FeBiotypicallyCProgramFilesFEBioStudiofebiofebio3exeLabel.Position = [27 73 833 22];
            app.FeBiotypicallyCProgramFilesFEBioStudiofebiofebio3exeLabel.Text = 'FeBio (typically, "C:\Program Files\FEBioStudio\febio\febio3.exe")';

            % Create CoreformCubittypicallyCSculptMeshingLabel
            app.CoreformCubittypicallyCSculptMeshingLabel = uilabel(app.GeneralSettingsTab);
            app.CoreformCubittypicallyCSculptMeshingLabel.FontSize = 14;
            app.CoreformCubittypicallyCSculptMeshingLabel.FontWeight = 'bold';
            app.CoreformCubittypicallyCSculptMeshingLabel.Position = [30 251 833 22];
            app.CoreformCubittypicallyCSculptMeshingLabel.Text = 'Coreform Cubit (typically, "C:\Program Files\Coreform Cubit 2022.4\bin")';

            % Create febioPathLabel
            app.febioPathLabel = uilabel(app.GeneralSettingsTab);
            app.febioPathLabel.Position = [193 45 658 22];
            app.febioPathLabel.Text = '';

            % Create Selectfebio3exeButton
            app.Selectfebio3exeButton = uibutton(app.GeneralSettingsTab, 'push');
            app.Selectfebio3exeButton.ButtonPushedFcn = createCallbackFcn(app, @Selectfebio3exeButtonPushed, true);
            app.Selectfebio3exeButton.Position = [27 44 128 22];
            app.Selectfebio3exeButton.Text = 'Select febio3.exe';

            % Create CheckFeBioinstallationButton
            app.CheckFeBioinstallationButton = uibutton(app.GeneralSettingsTab, 'push');
            app.CheckFeBioinstallationButton.ButtonPushedFcn = createCallbackFcn(app, @CheckFeBioinstallationButtonPushed, true);
            app.CheckFeBioinstallationButton.Position = [27 10 144 22];
            app.CheckFeBioinstallationButton.Text = 'Check FeBio installation';

            % Create CheckallButton
            app.CheckallButton = uibutton(app.GeneralSettingsTab, 'push');
            app.CheckallButton.ButtonPushedFcn = createCallbackFcn(app, @CheckallButtonPushed, true);
            app.CheckallButton.FontSize = 14;
            app.CheckallButton.FontWeight = 'bold';
            app.CheckallButton.Position = [929 337 100 25];
            app.CheckallButton.Text = 'Check all';

            % Create Hyperlink2
            app.Hyperlink2 = uihyperlink(app.GeneralSettingsTab);
            app.Hyperlink2.FontSize = 14;
            app.Hyperlink2.URL = 'https://www.python.org/downloads/';
            app.Hyperlink2.Position = [544 361 50 22];
            app.Hyperlink2.Text = 'Python';

            % Create Hyperlink
            app.Hyperlink = uihyperlink(app.GeneralSettingsTab);
            app.Hyperlink.FontSize = 14;
            app.Hyperlink.URL = 'https://coreform.com/products/coreform-cubit/';
            app.Hyperlink.Position = [159 361 104 22];
            app.Hyperlink.Text = 'Coreform Cubit';

            % Create CheckCubitandSculptinstallationButton
            app.CheckCubitandSculptinstallationButton = uibutton(app.GeneralSettingsTab, 'push');
            app.CheckCubitandSculptinstallationButton.ButtonPushedFcn = createCallbackFcn(app, @CheckCubitandSculptinstallationButtonPushed, true);
            app.CheckCubitandSculptinstallationButton.Position = [30 111 202 22];
            app.CheckCubitandSculptinstallationButton.Text = 'Check Cubit and Sculpt installation';

            % Create CheckPythoninstallationButton
            app.CheckPythoninstallationButton = uibutton(app.GeneralSettingsTab, 'push');
            app.CheckPythoninstallationButton.ButtonPushedFcn = createCallbackFcn(app, @CheckPythoninstallationButtonPushed, true);
            app.CheckPythoninstallationButton.Position = [30 302 150 22];
            app.CheckPythoninstallationButton.Text = 'Check Python installation';

            % Create SelectCubitPathButton
            app.SelectCubitPathButton = uibutton(app.GeneralSettingsTab, 'push');
            app.SelectCubitPathButton.ButtonPushedFcn = createCallbackFcn(app, @SelectCubitPathButtonPushed, true);
            app.SelectCubitPathButton.Position = [31 218 128 22];
            app.SelectCubitPathButton.Text = 'Select Cubit Path';

            % Create cubitPathLabel
            app.cubitPathLabel = uilabel(app.GeneralSettingsTab);
            app.cubitPathLabel.WordWrap = 'on';
            app.cubitPathLabel.Position = [193 217 658 22];
            app.cubitPathLabel.Text = '';

            % Create ThisapplicationneedsCoreformCubitMeshlabPythonLabel
            app.ThisapplicationneedsCoreformCubitMeshlabPythonLabel = uilabel(app.GeneralSettingsTab);
            app.ThisapplicationneedsCoreformCubitMeshlabPythonLabel.HorizontalAlignment = 'center';
            app.ThisapplicationneedsCoreformCubitMeshlabPythonLabel.FontSize = 16;
            app.ThisapplicationneedsCoreformCubitMeshlabPythonLabel.Position = [27 386 1024 152];
            app.ThisapplicationneedsCoreformCubitMeshlabPythonLabel.Text = {'The GP-Tool needs Coreform Cubit, Python, PyMeshLab and FeBio installed. '; ''; 'Please be sure that versions are compatible with each other and Cubit works from the command line!'; 'Tested with Coreform Cubit 2022.4, PyMeshLab 2022.2, Python 3.10.4 and FeBio3 (FeBioStudio 1.5)'; ''; 'Be sure that Python is in your systems PATH variable!'; ''; 'Restart the application after the installations. Links to the programs are available below.'};

            % Create CoreformCubitStatusLamp
            app.CoreformCubitStatusLamp = uilamp(app.GeneralSettingsTab);
            app.CoreformCubitStatusLamp.Position = [1007 218 20 20];
            app.CoreformCubitStatusLamp.Color = [0.9294 0.6941 0.1255];

            % Create CoreformCubitStatusLampLabel
            app.CoreformCubitStatusLampLabel = uilabel(app.GeneralSettingsTab);
            app.CoreformCubitStatusLampLabel.HorizontalAlignment = 'right';
            app.CoreformCubitStatusLampLabel.Position = [868 218 124 22];
            app.CoreformCubitStatusLampLabel.Text = {'Coreform Cubit Status'; ''};

            % Create PythonStatusLamp
            app.PythonStatusLamp = uilamp(app.GeneralSettingsTab);
            app.PythonStatusLamp.Position = [342 302 20 20];
            app.PythonStatusLamp.Color = [0.9294 0.6941 0.1255];

            % Create PythonStatusLampLabel
            app.PythonStatusLampLabel = uilabel(app.GeneralSettingsTab);
            app.PythonStatusLampLabel.HorizontalAlignment = 'right';
            app.PythonStatusLampLabel.Position = [247 301 80 22];
            app.PythonStatusLampLabel.Text = {'Python Status'; ''};

            % Create PyMeshLabStatusLamp
            app.PyMeshLabStatusLamp = uilamp(app.GeneralSettingsTab);
            app.PyMeshLabStatusLamp.Position = [534 302 20 20];
            app.PyMeshLabStatusLamp.Color = [0.9294 0.6941 0.1255];

            % Create PyMeshLabStatusLampLabel
            app.PyMeshLabStatusLampLabel = uilabel(app.GeneralSettingsTab);
            app.PyMeshLabStatusLampLabel.HorizontalAlignment = 'right';
            app.PyMeshLabStatusLampLabel.Position = [406 301 106 22];
            app.PyMeshLabStatusLampLabel.Text = {'PyMeshLab Status'; ''};

            % Create FeBioStatusLamp
            app.FeBioStatusLamp = uilamp(app.GeneralSettingsTab);
            app.FeBioStatusLamp.Position = [315 11 20 20];
            app.FeBioStatusLamp.Color = [0.9294 0.6941 0.1255];

            % Create FeBioStatusLampLabel
            app.FeBioStatusLampLabel = uilabel(app.GeneralSettingsTab);
            app.FeBioStatusLampLabel.HorizontalAlignment = 'right';
            app.FeBioStatusLampLabel.Position = [226 11 74 22];
            app.FeBioStatusLampLabel.Text = {'FeBio Status'; ''};

            % Create SelectmpiexecexeButton
            app.SelectmpiexecexeButton = uibutton(app.GeneralSettingsTab, 'push');
            app.SelectmpiexecexeButton.ButtonPushedFcn = createCallbackFcn(app, @SelectmpiexecexeButtonPushed, true);
            app.SelectmpiexecexeButton.Position = [30 151 128 22];
            app.SelectmpiexecexeButton.Text = 'Select mpiexec.exe';

            % Create mpiexecPathLabel
            app.mpiexecPathLabel = uilabel(app.GeneralSettingsTab);
            app.mpiexecPathLabel.WordWrap = 'on';
            app.mpiexecPathLabel.Position = [193 152 658 22];
            app.mpiexecPathLabel.Text = '';

            % Create SculptStatusLamp
            app.SculptStatusLamp = uilamp(app.GeneralSettingsTab);
            app.SculptStatusLamp.Position = [1004 151 20 20];
            app.SculptStatusLamp.Color = [0.9294 0.6941 0.1255];

            % Create SculptStatusLabel
            app.SculptStatusLabel = uilabel(app.GeneralSettingsTab);
            app.SculptStatusLabel.HorizontalAlignment = 'right';
            app.SculptStatusLabel.Position = [913 151 76 22];
            app.SculptStatusLabel.Text = 'Sculpt Status';

            % Create mpiexecHelpLabel
            app.mpiexecHelpLabel = uilabel(app.GeneralSettingsTab);
            app.mpiexecHelpLabel.Position = [32 177 953 22];
            app.mpiexecHelpLabel.Text = 'CHANGE MPIEXEC ONLY IN CASE OF AN ERROR!     typically "C:\Program Files\Microsoft MPI\Bin\mpiexec.exe"      if it is not there, search on your harddrive for "mpiexec"';

            % Create OpenREADMEButton
            app.OpenREADMEButton = uibutton(app.GeneralSettingsTab, 'push');
            app.OpenREADMEButton.ButtonPushedFcn = createCallbackFcn(app, @OpenREADMEButtonPushed, true);
            app.OpenREADMEButton.FontSize = 15;
            app.OpenREADMEButton.FontWeight = 'bold';
            app.OpenREADMEButton.Position = [957 512 124 26];
            app.OpenREADMEButton.Text = 'Open README';

            % Create CheckAbaqusButton
            app.CheckAbaqusButton = uibutton(app.GeneralSettingsTab, 'push');
            app.CheckAbaqusButton.ButtonPushedFcn = createCallbackFcn(app, @CheckAbaqusButtonPushed, true);
            app.CheckAbaqusButton.Position = [885 47 197 50];
            app.CheckAbaqusButton.Text = {'Check Abaqus - only necessary if '; 'thermal expansion is used later! '; 'OTHERWISE IGNORE!'};

            % Create AbaqusStatusLamp
            app.AbaqusStatusLamp = uilamp(app.GeneralSettingsTab);
            app.AbaqusStatusLamp.Position = [1058 18 20 20];
            app.AbaqusStatusLamp.Color = [0.9294 0.6941 0.1255];

            % Create AbaqusStatusLampLabel
            app.AbaqusStatusLampLabel = uilabel(app.GeneralSettingsTab);
            app.AbaqusStatusLampLabel.HorizontalAlignment = 'right';
            app.AbaqusStatusLampLabel.Position = [959 18 84 22];
            app.AbaqusStatusLampLabel.Text = 'Abaqus Status';

            % Create ParticipantsTab
            app.ParticipantsTab = uitab(app.TabGroup);
            app.ParticipantsTab.Title = 'Participants';
            app.ParticipantsTab.ButtonDownFcn = createCallbackFcn(app, @ParticipantsTabButtonDown, true);

            % Create AvailableParticipantsinthisdatafolderListBoxLabel
            app.AvailableParticipantsinthisdatafolderListBoxLabel = uilabel(app.ParticipantsTab);
            app.AvailableParticipantsinthisdatafolderListBoxLabel.HorizontalAlignment = 'right';
            app.AvailableParticipantsinthisdatafolderListBoxLabel.WordWrap = 'on';
            app.AvailableParticipantsinthisdatafolderListBoxLabel.Position = [18 458 113 61];
            app.AvailableParticipantsinthisdatafolderListBoxLabel.Text = 'Available Participants in this data folder:';

            % Create AvailableParticipantsinthisdatafolderListBox
            app.AvailableParticipantsinthisdatafolderListBox = uilistbox(app.ParticipantsTab);
            app.AvailableParticipantsinthisdatafolderListBox.Items = {};
            app.AvailableParticipantsinthisdatafolderListBox.ValueChangedFcn = createCallbackFcn(app, @AvailableParticipantsinthisdatafolderListBoxValueChanged, true);
            app.AvailableParticipantsinthisdatafolderListBox.Position = [158 68 254 453];
            app.AvailableParticipantsinthisdatafolderListBox.Value = {};

            % Create ParticipantSetupPanel
            app.ParticipantSetupPanel = uipanel(app.ParticipantsTab);
            app.ParticipantSetupPanel.Title = 'Participant Setup';
            app.ParticipantSetupPanel.Position = [438 172 627 347];

            % Create SelectfoldercontainingMRIdataSTLfilesButton
            app.SelectfoldercontainingMRIdataSTLfilesButton = uibutton(app.ParticipantSetupPanel, 'push');
            app.SelectfoldercontainingMRIdataSTLfilesButton.ButtonPushedFcn = createCallbackFcn(app, @SelectfoldercontainingMRIdataSTLfilesButtonPushed, true);
            app.SelectfoldercontainingMRIdataSTLfilesButton.Enable = 'off';
            app.SelectfoldercontainingMRIdataSTLfilesButton.Position = [14 220 252 22];
            app.SelectfoldercontainingMRIdataSTLfilesButton.Text = 'Select folder containing MRI data (STL files)';

            % Create ParticipantIdentifierEditFieldLabel
            app.ParticipantIdentifierEditFieldLabel = uilabel(app.ParticipantSetupPanel);
            app.ParticipantIdentifierEditFieldLabel.HorizontalAlignment = 'right';
            app.ParticipantIdentifierEditFieldLabel.Position = [19 297 112 22];
            app.ParticipantIdentifierEditFieldLabel.Text = 'Participant Identifier';

            % Create ParticipantIdentifierEditField
            app.ParticipantIdentifierEditField = uieditfield(app.ParticipantSetupPanel, 'text');
            app.ParticipantIdentifierEditField.Position = [146 297 99 22];
            app.ParticipantIdentifierEditField.Value = 'TDxx';

            % Create LeftRightFemurDropDownLabel
            app.LeftRightFemurDropDownLabel = uilabel(app.ParticipantSetupPanel);
            app.LeftRightFemurDropDownLabel.HorizontalAlignment = 'right';
            app.LeftRightFemurDropDownLabel.Position = [19 262 102 22];
            app.LeftRightFemurDropDownLabel.Text = 'Left / Right Femur';

            % Create LeftRightFemurDropDown
            app.LeftRightFemurDropDown = uidropdown(app.ParticipantSetupPanel);
            app.LeftRightFemurDropDown.Items = {'select', 'L', 'R'};
            app.LeftRightFemurDropDown.ValueChangedFcn = createCallbackFcn(app, @LeftRightFemurDropDownValueChanged, true);
            app.LeftRightFemurDropDown.Position = [136 262 100 22];
            app.LeftRightFemurDropDown.Value = 'select';

            % Create SegmentationPath
            app.SegmentationPath = uilabel(app.ParticipantSetupPanel);
            app.SegmentationPath.WordWrap = 'on';
            app.SegmentationPath.Position = [19 179 571 36];
            app.SegmentationPath.Text = 'select folder containing MRI data';

            % Create CheckthegeometryButton
            app.CheckthegeometryButton = uibutton(app.ParticipantSetupPanel, 'push');
            app.CheckthegeometryButton.ButtonPushedFcn = createCallbackFcn(app, @CheckthegeometryButtonPushed, true);
            app.CheckthegeometryButton.Position = [484 153 123 22];
            app.CheckthegeometryButton.Text = 'Check the geometry';

            % Create Meshesforthisparticipant0Label
            app.Meshesforthisparticipant0Label = uilabel(app.ParticipantSetupPanel);
            app.Meshesforthisparticipant0Label.Position = [19 108 211 22];
            app.Meshesforthisparticipant0Label.Text = '# Meshes for this participant: 0';

            % Create Analysisforthisparticipant0Label
            app.Analysisforthisparticipant0Label = uilabel(app.ParticipantSetupPanel);
            app.Analysisforthisparticipant0Label.Position = [19 79 218 22];
            app.Analysisforthisparticipant0Label.Text = '# Analysis for this participant: 0';

            % Create includesdistalGPCheckBox
            app.includesdistalGPCheckBox = uicheckbox(app.ParticipantSetupPanel);
            app.includesdistalGPCheckBox.Text = 'includes distal GP';
            app.includesdistalGPCheckBox.Position = [304 260 118 22];

            % Create fitmethodtocondylesDropDownLabel
            app.fitmethodtocondylesDropDownLabel = uilabel(app.ParticipantSetupPanel);
            app.fitmethodtocondylesDropDownLabel.HorizontalAlignment = 'right';
            app.fitmethodtocondylesDropDownLabel.Position = [314 220 122 22];
            app.fitmethodtocondylesDropDownLabel.Text = 'fit method to condyles';

            % Create fitmethodtocondylesDropDown
            app.fitmethodtocondylesDropDown = uidropdown(app.ParticipantSetupPanel);
            app.fitmethodtocondylesDropDown.Items = {'GIBOC-ellipsoids', 'GIBOC-cylinder'};
            app.fitmethodtocondylesDropDown.Position = [451 220 154 22];
            app.fitmethodtocondylesDropDown.Value = 'GIBOC-ellipsoids';

            % Create OpendatafolderinWindowsExplorerButton
            app.OpendatafolderinWindowsExplorerButton = uibutton(app.ParticipantsTab, 'push');
            app.OpendatafolderinWindowsExplorerButton.ButtonPushedFcn = createCallbackFcn(app, @OpendatafolderinWindowsExplorerButtonPushed, true);
            app.OpendatafolderinWindowsExplorerButton.Position = [15 11 219 22];
            app.OpendatafolderinWindowsExplorerButton.Text = 'Open data folder in Windows Explorer';

            % Create MeshesTab
            app.MeshesTab = uitab(app.TabGroup);
            app.MeshesTab.Title = 'Meshes';
            app.MeshesTab.ButtonDownFcn = createCallbackFcn(app, @MeshesTabButtonDown, true);

            % Create ParticipantLabel
            app.ParticipantLabel = uilabel(app.MeshesTab);
            app.ParticipantLabel.Position = [25 509 372 22];
            app.ParticipantLabel.Text = 'Participant';

            % Create AvailableMeshesinthisdirectoryListBox
            app.AvailableMeshesinthisdirectoryListBox = uilistbox(app.MeshesTab);
            app.AvailableMeshesinthisdirectoryListBox.Items = {'Create new'};
            app.AvailableMeshesinthisdirectoryListBox.ValueChangedFcn = createCallbackFcn(app, @AvailableMeshesinthisdirectoryListBoxValueChanged, true);
            app.AvailableMeshesinthisdirectoryListBox.Position = [228 297 254 136];
            app.AvailableMeshesinthisdirectoryListBox.Value = {};

            % Create AvailableMeshesinthisdirectoryListBoxLabel
            app.AvailableMeshesinthisdirectoryListBoxLabel = uilabel(app.MeshesTab);
            app.AvailableMeshesinthisdirectoryListBoxLabel.HorizontalAlignment = 'right';
            app.AvailableMeshesinthisdirectoryListBoxLabel.Position = [27 409 186 22];
            app.AvailableMeshesinthisdirectoryListBoxLabel.Text = 'Available Meshes in this directory:';

            % Create SideLabel
            app.SideLabel = uilabel(app.MeshesTab);
            app.SideLabel.Position = [25 487 370 22];
            app.SideLabel.Text = 'Side';

            % Create MeshinformationPanel
            app.MeshinformationPanel = uipanel(app.MeshesTab);
            app.MeshinformationPanel.Title = 'Mesh information';
            app.MeshinformationPanel.Position = [533 18 472 499];

            % Create AnteversionAngleLabel
            app.AnteversionAngleLabel = uilabel(app.MeshinformationPanel);
            app.AnteversionAngleLabel.Position = [8 448 206 22];
            app.AnteversionAngleLabel.Text = 'Anteversion Angle';

            % Create NeckShaftAngleLabel
            app.NeckShaftAngleLabel = uilabel(app.MeshinformationPanel);
            app.NeckShaftAngleLabel.Position = [8 423 206 22];
            app.NeckShaftAngleLabel.Text = 'Neck-Shaft Angle';

            % Create MeshPropertiesTable
            app.MeshPropertiesTable = uitable(app.MeshinformationPanel);
            app.MeshPropertiesTable.ColumnName = {'Parameter'; 'Value'};
            app.MeshPropertiesTable.RowName = {};
            app.MeshPropertiesTable.ColumnEditable = [false false];
            app.MeshPropertiesTable.Position = [8 62 455 120];

            % Create CreatemeshButton
            app.CreatemeshButton = uibutton(app.MeshinformationPanel, 'push');
            app.CreatemeshButton.ButtonPushedFcn = createCallbackFcn(app, @CreatemeshButtonPushed, true);
            app.CreatemeshButton.Enable = 'off';
            app.CreatemeshButton.Position = [363 14 100 22];
            app.CreatemeshButton.Text = {'Create mesh'; ''};

            % Create SimplegeometryplotButton
            app.SimplegeometryplotButton = uibutton(app.MeshinformationPanel, 'push');
            app.SimplegeometryplotButton.ButtonPushedFcn = createCallbackFcn(app, @SimplegeometryplotButtonPushed, true);
            app.SimplegeometryplotButton.Enable = 'off';
            app.SimplegeometryplotButton.Position = [62 365 143 22];
            app.SimplegeometryplotButton.Text = 'Simple geometry plot';

            % Create GrowthplateorientationtoneckaxisLabel
            app.GrowthplateorientationtoneckaxisLabel = uilabel(app.MeshinformationPanel);
            app.GrowthplateorientationtoneckaxisLabel.Position = [9 395 297 22];
            app.GrowthplateorientationtoneckaxisLabel.Text = 'Growth plate orientation to neck axis';

            % Create MeshsizeApproximateelementsizeinmmLabel
            app.MeshsizeApproximateelementsizeinmmLabel = uilabel(app.MeshinformationPanel);
            app.MeshsizeApproximateelementsizeinmmLabel.WordWrap = 'on';
            app.MeshsizeApproximateelementsizeinmmLabel.FontWeight = 'bold';
            app.MeshsizeApproximateelementsizeinmmLabel.Position = [9 208 450 147];
            app.MeshsizeApproximateelementsizeinmmLabel.Text = {'Mesh size defines the approximate element size in mm; lower values than 1.5 will result in an extreme amount of nodes and elements'; ''; 'Rows in Growth Plate defines how many rows are created within the growth plate area. If the growth plate is 6mm thick and you specify 10 rows, each row will be 0.6mm thick.'; ''; 'Number of transition rows defines how many of the rows within the growth plate are used as tansition zone. Material properties will be interpolated between growth plate and proximal trabecular bone for these rows.'};

            % Create AdvancedproximalgeometryplotButton
            app.AdvancedproximalgeometryplotButton = uibutton(app.MeshinformationPanel, 'push');
            app.AdvancedproximalgeometryplotButton.ButtonPushedFcn = createCallbackFcn(app, @AdvancedproximalgeometryplotButtonPushed, true);
            app.AdvancedproximalgeometryplotButton.Enable = 'off';
            app.AdvancedproximalgeometryplotButton.Position = [237 365 195 22];
            app.AdvancedproximalgeometryplotButton.Text = 'Advanced proximal geometry plot';

            % Create OpenParticipantinWindowsExplorerButton
            app.OpenParticipantinWindowsExplorerButton = uibutton(app.MeshesTab, 'push');
            app.OpenParticipantinWindowsExplorerButton.ButtonPushedFcn = createCallbackFcn(app, @OpenParticipantinWindowsExplorerButtonPushed, true);
            app.OpenParticipantinWindowsExplorerButton.Position = [25 455 219 22];
            app.OpenParticipantinWindowsExplorerButton.Text = 'Open Participant in Windows Explorer';

            % Create Analysisforthismesh0Label
            app.Analysisforthismesh0Label = uilabel(app.MeshesTab);
            app.Analysisforthismesh0Label.Position = [243 260 237 22];
            app.Analysisforthismesh0Label.Text = '# Analysis for this mesh: 0';

            % Create LoadingTab
            app.LoadingTab = uitab(app.TabGroup);
            app.LoadingTab.Title = 'Loading';

            % Create Label
            app.Label = uilabel(app.LoadingTab);
            app.Label.FontWeight = 'bold';
            app.Label.Position = [15 425 1069 106];
            app.Label.Text = {'To run analysis with this program, you need to have the loading conditions on the femur. These are estimated by musculoskeletal (MSK) simulations using OpenSim.'; ''; 'It is necessary to run MSK simulations with the "MuscleForceDirections" - Plugin to derive the attachments of muscles on the femur and the directions to which the muscles pull. '; 'Joint Reaction Loads need to be expressed in child frame, i.e. hip_r_on_femur_r_in_femur_r_fx'; ''; 'Select the necessary output files of the MSK simulations, define the nine load instances (as previous studies suggest) and create a loading-file which can be used later for analysis.'};

            % Create JointReactionLoadFileButton
            app.JointReactionLoadFileButton = uibutton(app.LoadingTab, 'push');
            app.JointReactionLoadFileButton.ButtonPushedFcn = createCallbackFcn(app, @JointReactionLoadFileButtonPushed, true);
            app.JointReactionLoadFileButton.Position = [15 382 209 22];
            app.JointReactionLoadFileButton.Text = 'Joint Reaction Load File';

            % Create JointReactionLoadnotselectedLabel
            app.JointReactionLoadnotselectedLabel = uilabel(app.LoadingTab);
            app.JointReactionLoadnotselectedLabel.VerticalAlignment = 'top';
            app.JointReactionLoadnotselectedLabel.WordWrap = 'on';
            app.JointReactionLoadnotselectedLabel.Position = [240 367 835 33];
            app.JointReactionLoadnotselectedLabel.Text = 'Joint Reaction Load not selected';

            % Create MuscleForceDirectionAttachmentsButton
            app.MuscleForceDirectionAttachmentsButton = uibutton(app.LoadingTab, 'push');
            app.MuscleForceDirectionAttachmentsButton.ButtonPushedFcn = createCallbackFcn(app, @MuscleForceDirectionAttachmentsButtonPushed, true);
            app.MuscleForceDirectionAttachmentsButton.Position = [15 330 209 22];
            app.MuscleForceDirectionAttachmentsButton.Text = 'Muscle Force Direction Attachments';

            % Create MuscleForceDirectionAttachmentsnotselectedLabel
            app.MuscleForceDirectionAttachmentsnotselectedLabel = uilabel(app.LoadingTab);
            app.MuscleForceDirectionAttachmentsnotselectedLabel.VerticalAlignment = 'top';
            app.MuscleForceDirectionAttachmentsnotselectedLabel.WordWrap = 'on';
            app.MuscleForceDirectionAttachmentsnotselectedLabel.Position = [240 315 835 33];
            app.MuscleForceDirectionAttachmentsnotselectedLabel.Text = 'Muscle Force Direction Attachments not selected';

            % Create MuscleForceDirectionVectorsButton
            app.MuscleForceDirectionVectorsButton = uibutton(app.LoadingTab, 'push');
            app.MuscleForceDirectionVectorsButton.ButtonPushedFcn = createCallbackFcn(app, @MuscleForceDirectionVectorsButtonPushed, true);
            app.MuscleForceDirectionVectorsButton.Position = [15 288 209 22];
            app.MuscleForceDirectionVectorsButton.Text = 'Muscle Force Direction Vectors';

            % Create MuscleForceDirectionVectorsnotselectedLabel
            app.MuscleForceDirectionVectorsnotselectedLabel = uilabel(app.LoadingTab);
            app.MuscleForceDirectionVectorsnotselectedLabel.VerticalAlignment = 'top';
            app.MuscleForceDirectionVectorsnotselectedLabel.WordWrap = 'on';
            app.MuscleForceDirectionVectorsnotselectedLabel.Position = [240 273 835 33];
            app.MuscleForceDirectionVectorsnotselectedLabel.Text = 'Muscle Force Direction Vectors not selected';

            % Create MuscleForcesButton
            app.MuscleForcesButton = uibutton(app.LoadingTab, 'push');
            app.MuscleForcesButton.ButtonPushedFcn = createCallbackFcn(app, @MuscleForcesButtonPushed, true);
            app.MuscleForcesButton.Position = [15 246 209 22];
            app.MuscleForcesButton.Text = 'Muscle Forces';

            % Create MuscleForcesegfromStaticOptimizationnotselectedLabel
            app.MuscleForcesegfromStaticOptimizationnotselectedLabel = uilabel(app.LoadingTab);
            app.MuscleForcesegfromStaticOptimizationnotselectedLabel.VerticalAlignment = 'top';
            app.MuscleForcesegfromStaticOptimizationnotselectedLabel.WordWrap = 'on';
            app.MuscleForcesegfromStaticOptimizationnotselectedLabel.Position = [240 231 835 33];
            app.MuscleForcesegfromStaticOptimizationnotselectedLabel.Text = 'Muscle Forces (e.g. from Static Optimization) not selected';

            % Create DefineloadinstancesandcreateloadingfileButton
            app.DefineloadinstancesandcreateloadingfileButton = uibutton(app.LoadingTab, 'push');
            app.DefineloadinstancesandcreateloadingfileButton.ButtonPushedFcn = createCallbackFcn(app, @DefineloadinstancesandcreateloadingfileButtonPushed, true);
            app.DefineloadinstancesandcreateloadingfileButton.FontWeight = 'bold';
            app.DefineloadinstancesandcreateloadingfileButton.Position = [18 25 263 22];
            app.DefineloadinstancesandcreateloadingfileButton.Text = 'Define load instances and create loading file';

            % Create SelectsideButtonGroup
            app.SelectsideButtonGroup = uibuttongroup(app.LoadingTab);
            app.SelectsideButtonGroup.TitlePosition = 'centertop';
            app.SelectsideButtonGroup.Title = 'Select side';
            app.SelectsideButtonGroup.Position = [55 85 113 68];

            % Create leftButton
            app.leftButton = uiradiobutton(app.SelectsideButtonGroup);
            app.leftButton.Text = 'left';
            app.leftButton.Position = [11 22 58 22];
            app.leftButton.Value = true;

            % Create rightButton
            app.rightButton = uiradiobutton(app.SelectsideButtonGroup);
            app.rightButton.Text = 'right';
            app.rightButton.Position = [11 0 65 22];

            % Create SelectLoadinstancesdependingonButtonGroup
            app.SelectLoadinstancesdependingonButtonGroup = uibuttongroup(app.LoadingTab);
            app.SelectLoadinstancesdependingonButtonGroup.TitlePosition = 'centertop';
            app.SelectLoadinstancesdependingonButtonGroup.Title = 'Select Load instances depending on ...';
            app.SelectLoadinstancesdependingonButtonGroup.Position = [208 85 278 68];

            % Create HipContactForceButton
            app.HipContactForceButton = uiradiobutton(app.SelectLoadinstancesdependingonButtonGroup);
            app.HipContactForceButton.Text = 'Hip Contact Force';
            app.HipContactForceButton.Position = [11 22 119 22];
            app.HipContactForceButton.Value = true;

            % Create KneeContactForceButton
            app.KneeContactForceButton = uiradiobutton(app.SelectLoadinstancesdependingonButtonGroup);
            app.KneeContactForceButton.Text = 'Knee Contact Force';
            app.KneeContactForceButton.Position = [11 1 129 22];

            % Create AnalysisTab
            app.AnalysisTab = uitab(app.TabGroup);
            app.AnalysisTab.Title = 'Analysis';
            app.AnalysisTab.HandleVisibility = 'off';
            app.AnalysisTab.ButtonDownFcn = createCallbackFcn(app, @AnalysisTabButtonDown, true);

            % Create AvailableAnalysisinthisdirectoryListBoxLabel
            app.AvailableAnalysisinthisdirectoryListBoxLabel = uilabel(app.AnalysisTab);
            app.AvailableAnalysisinthisdirectoryListBoxLabel.HorizontalAlignment = 'right';
            app.AvailableAnalysisinthisdirectoryListBoxLabel.Position = [18 448 188 22];
            app.AvailableAnalysisinthisdirectoryListBoxLabel.Text = 'Available Analysis in this directory:';

            % Create AvailableAnalysisinthisdirectoryListBox
            app.AvailableAnalysisinthisdirectoryListBox = uilistbox(app.AnalysisTab);
            app.AvailableAnalysisinthisdirectoryListBox.Items = {'Create new'};
            app.AvailableAnalysisinthisdirectoryListBox.ValueChangedFcn = createCallbackFcn(app, @AvailableAnalysisinthisdirectoryListBoxValueChanged, true);
            app.AvailableAnalysisinthisdirectoryListBox.Position = [23 73 467 372];
            app.AvailableAnalysisinthisdirectoryListBox.Value = {};

            % Create SelectedMeshLabel
            app.SelectedMeshLabel = uilabel(app.AnalysisTab);
            app.SelectedMeshLabel.Position = [18 508 472 22];
            app.SelectedMeshLabel.Text = 'Selected Mesh:';

            % Create RunAnalysisButton
            app.RunAnalysisButton = uibutton(app.AnalysisTab, 'push');
            app.RunAnalysisButton.ButtonPushedFcn = createCallbackFcn(app, @RunAnalysisButtonPushed, true);
            app.RunAnalysisButton.Position = [120 11 370 22];
            app.RunAnalysisButton.Text = 'Run this analysis - just press if you are sure - this will take a while';

            % Create OpenMeshinWindowsExplorerButton
            app.OpenMeshinWindowsExplorerButton = uibutton(app.AnalysisTab, 'push');
            app.OpenMeshinWindowsExplorerButton.ButtonPushedFcn = createCallbackFcn(app, @OpenMeshinWindowsExplorerButtonPushed, true);
            app.OpenMeshinWindowsExplorerButton.Position = [18 481 191 22];
            app.OpenMeshinWindowsExplorerButton.Text = 'Open Mesh in Windows Explorer';

            % Create filterEditFieldLabel
            app.filterEditFieldLabel = uilabel(app.AnalysisTab);
            app.filterEditFieldLabel.HorizontalAlignment = 'right';
            app.filterEditFieldLabel.Position = [231 446 28 22];
            app.filterEditFieldLabel.Text = 'filter';

            % Create filterEditField
            app.filterEditField = uieditfield(app.AnalysisTab, 'text');
            app.filterEditField.ValueChangingFcn = createCallbackFcn(app, @filterEditFieldValueChanging, true);
            app.filterEditField.Position = [269 448 217 22];

            % Create StatusLampLabel
            app.StatusLampLabel = uilabel(app.AnalysisTab);
            app.StatusLampLabel.HorizontalAlignment = 'right';
            app.StatusLampLabel.Position = [30 45 425 22];
            app.StatusLampLabel.Text = 'Status';

            % Create StatusLamp
            app.StatusLamp = uilamp(app.AnalysisTab);
            app.StatusLamp.Position = [470 45 20 20];

            % Create skipstresscalculationinIteration1seetooltipCheckBox
            app.skipstresscalculationinIteration1seetooltipCheckBox = uicheckbox(app.AnalysisTab);
            app.skipstresscalculationinIteration1seetooltipCheckBox.Tooltip = {'you need to copy the Iteration1 folder of another analysis of this mesh to the analysis folder --> stresses are not calculated again, this saves time'};
            app.skipstresscalculationinIteration1seetooltipCheckBox.Text = 'skip stress calculation in Iteration 1 - see tooltip';
            app.skipstresscalculationinIteration1seetooltipCheckBox.Position = [26 39 277 22];

            % Create AnalysisSettingsPanel
            app.AnalysisSettingsPanel = uipanel(app.AnalysisTab);
            app.AnalysisSettingsPanel.Title = 'Analysis Settings';
            app.AnalysisSettingsPanel.Position = [508 10 577 528];

            % Create GrowthParametersPanel
            app.GrowthParametersPanel = uipanel(app.AnalysisSettingsPanel);
            app.GrowthParametersPanel.Title = 'Growth Parameters';
            app.GrowthParametersPanel.Position = [309 34 261 255];

            % Create GrowthParametersTable
            app.GrowthParametersTable = uitable(app.GrowthParametersPanel);
            app.GrowthParametersTable.ColumnName = {'Parameter'; 'Value'};
            app.GrowthParametersTable.RowName = {};
            app.GrowthParametersTable.ColumnEditable = [false false];
            app.GrowthParametersTable.Position = [11 52 238 150];

            % Create GrowthMethodDropDownLabel
            app.GrowthMethodDropDownLabel = uilabel(app.GrowthParametersPanel);
            app.GrowthMethodDropDownLabel.HorizontalAlignment = 'right';
            app.GrowthMethodDropDownLabel.Position = [8 208 87 22];
            app.GrowthMethodDropDownLabel.Text = 'Growth Method';

            % Create GrowthMethodDropDown
            app.GrowthMethodDropDown = uidropdown(app.GrowthParametersPanel);
            app.GrowthMethodDropDown.Items = {'FNDD', 'PSD', 'NORM', 'CELL'};
            app.GrowthMethodDropDown.Position = [110 208 100 22];
            app.GrowthMethodDropDown.Value = 'CELL';

            % Create avoidnegativegrowthCheckBox
            app.avoidnegativegrowthCheckBox = uicheckbox(app.GrowthParametersPanel);
            app.avoidnegativegrowthCheckBox.Text = 'avoid negative growth';
            app.avoidnegativegrowthCheckBox.Position = [11 25 139 22];

            % Create biologicalgrowth2mechanicalgrowthCheckBox
            app.biologicalgrowth2mechanicalgrowthCheckBox = uicheckbox(app.GrowthParametersPanel);
            app.biologicalgrowth2mechanicalgrowthCheckBox.ValueChangedFcn = createCallbackFcn(app, @biologicalgrowth2mechanicalgrowthCheckBoxValueChanged, true);
            app.biologicalgrowth2mechanicalgrowthCheckBox.Text = 'biological growth = 2 * mechanical growth';
            app.biologicalgrowth2mechanicalgrowthCheckBox.Position = [11 2 245 22];
            app.biologicalgrowth2mechanicalgrowthCheckBox.Value = true;

            % Create CreatethisanalysisButton
            app.CreatethisanalysisButton = uibutton(app.AnalysisSettingsPanel, 'push');
            app.CreatethisanalysisButton.ButtonPushedFcn = createCallbackFcn(app, @CreatethisanalysisButtonPushed, true);
            app.CreatethisanalysisButton.Position = [448 5 120 22];
            app.CreatethisanalysisButton.Text = 'Create this analysis';

            % Create LoadingConditionsPanel
            app.LoadingConditionsPanel = uipanel(app.AnalysisSettingsPanel);
            app.LoadingConditionsPanel.Title = 'Loading Conditions';
            app.LoadingConditionsPanel.Position = [12 295 561 181];

            % Create SelectmatwithLoadingMuscleForcesandDirectionsButton
            app.SelectmatwithLoadingMuscleForcesandDirectionsButton = uibutton(app.LoadingConditionsPanel, 'push');
            app.SelectmatwithLoadingMuscleForcesandDirectionsButton.ButtonPushedFcn = createCallbackFcn(app, @SelectmatwithLoadingMuscleForcesandDirectionsButtonPushed, true);
            app.SelectmatwithLoadingMuscleForcesandDirectionsButton.Position = [7 96 320 22];
            app.SelectmatwithLoadingMuscleForcesandDirectionsButton.Text = 'Select *.mat with Loading, Muscle Forces and Directions';

            % Create NameEditField_2Label
            app.NameEditField_2Label = uilabel(app.LoadingConditionsPanel);
            app.NameEditField_2Label.HorizontalAlignment = 'right';
            app.NameEditField_2Label.Position = [9 129 38 22];
            app.NameEditField_2Label.Text = 'Name';

            % Create LoadingNameEditField
            app.LoadingNameEditField = uieditfield(app.LoadingConditionsPanel, 'text');
            app.LoadingNameEditField.ValueChangedFcn = createCallbackFcn(app, @LoadingNameEditFieldValueChanged, true);
            app.LoadingNameEditField.Position = [62 129 191 22];

            % Create selectloadingfileLabel
            app.selectloadingfileLabel = uilabel(app.LoadingConditionsPanel);
            app.selectloadingfileLabel.Position = [11 66 527 22];
            app.selectloadingfileLabel.Text = 'select loading file';

            % Create xantpostCheckBox
            app.xantpostCheckBox = uicheckbox(app.LoadingConditionsPanel);
            app.xantpostCheckBox.ValueChangedFcn = createCallbackFcn(app, @xantpostCheckBoxValueChanged, true);
            app.xantpostCheckBox.Text = 'x (ant/post)';
            app.xantpostCheckBox.Position = [253 38 82 22];

            % Create ysupinfCheckBox
            app.ysupinfCheckBox = uicheckbox(app.LoadingConditionsPanel);
            app.ysupinfCheckBox.ValueChangedFcn = createCallbackFcn(app, @ysupinfCheckBoxValueChanged, true);
            app.ysupinfCheckBox.Text = 'y (sup/inf)';
            app.ysupinfCheckBox.Position = [358 38 75 22];

            % Create zlatmedCheckBox
            app.zlatmedCheckBox = uicheckbox(app.LoadingConditionsPanel);
            app.zlatmedCheckBox.ValueChangedFcn = createCallbackFcn(app, @zlatmedCheckBoxValueChanged, true);
            app.zlatmedCheckBox.Text = 'z (lat/med)';
            app.zlatmedCheckBox.Position = [460 38 79 22];

            % Create CheckLoadingButton
            app.CheckLoadingButton = uibutton(app.LoadingConditionsPanel, 'push');
            app.CheckLoadingButton.ButtonPushedFcn = createCallbackFcn(app, @CheckLoadingButtonPushed, true);
            app.CheckLoadingButton.Enable = 'off';
            app.CheckLoadingButton.Position = [447 129 100 22];
            app.CheckLoadingButton.Text = 'Check';

            % Create ApplyJRLinonlyinthisdirectionLabel
            app.ApplyJRLinonlyinthisdirectionLabel = uilabel(app.LoadingConditionsPanel);
            app.ApplyJRLinonlyinthisdirectionLabel.WordWrap = 'on';
            app.ApplyJRLinonlyinthisdirectionLabel.Position = [12 39 229 21];
            app.ApplyJRLinonlyinthisdirectionLabel.Text = 'Apply JRL in only in this direction';

            % Create LoadingFactorSpinnerLabel
            app.LoadingFactorSpinnerLabel = uilabel(app.LoadingConditionsPanel);
            app.LoadingFactorSpinnerLabel.HorizontalAlignment = 'right';
            app.LoadingFactorSpinnerLabel.Position = [350 8 86 22];
            app.LoadingFactorSpinnerLabel.Text = 'Loading Factor';

            % Create LoadingFactorSpinner
            app.LoadingFactorSpinner = uispinner(app.LoadingConditionsPanel);
            app.LoadingFactorSpinner.Step = 0.1;
            app.LoadingFactorSpinner.Limits = [0.1 2];
            app.LoadingFactorSpinner.Position = [446 7 100 25];
            app.LoadingFactorSpinner.Value = 1;

            % Create DistalorProximalDropDownLabel
            app.DistalorProximalDropDownLabel = uilabel(app.LoadingConditionsPanel);
            app.DistalorProximalDropDownLabel.HorizontalAlignment = 'right';
            app.DistalorProximalDropDownLabel.Position = [6 8 100 22];
            app.DistalorProximalDropDownLabel.Text = 'Distal or Proximal';

            % Create DistalorProximalDropDown
            app.DistalorProximalDropDown = uidropdown(app.LoadingConditionsPanel);
            app.DistalorProximalDropDown.Items = {'Proximal', 'Distal'};
            app.DistalorProximalDropDown.Position = [121 8 100 22];
            app.DistalorProximalDropDown.Value = 'Proximal';

            % Create ClampingDropDownLabel
            app.ClampingDropDownLabel = uilabel(app.LoadingConditionsPanel);
            app.ClampingDropDownLabel.HorizontalAlignment = 'right';
            app.ClampingDropDownLabel.Position = [374 99 56 22];
            app.ClampingDropDownLabel.Text = 'Clamping';

            % Create ClampingDropDown
            app.ClampingDropDown = uidropdown(app.LoadingConditionsPanel);
            app.ClampingDropDown.Items = {'default', 'belowShaft', 'aboveShaft', ''};
            app.ClampingDropDown.Position = [445 99 100 22];
            app.ClampingDropDown.Value = 'default';

            % Create MaterialPropertiesPanel
            app.MaterialPropertiesPanel = uipanel(app.AnalysisSettingsPanel);
            app.MaterialPropertiesPanel.Title = 'Material Properties';
            app.MaterialPropertiesPanel.Position = [12 68 288 221];

            % Create NameEditField_3Label
            app.NameEditField_3Label = uilabel(app.MaterialPropertiesPanel);
            app.NameEditField_3Label.HorizontalAlignment = 'right';
            app.NameEditField_3Label.Position = [8 170 38 22];
            app.NameEditField_3Label.Text = 'Name';

            % Create MaterialNameEditField
            app.MaterialNameEditField = uieditfield(app.MaterialPropertiesPanel, 'text');
            app.MaterialNameEditField.ValueChangedFcn = createCallbackFcn(app, @MaterialNameEditFieldValueChanged, true);
            app.MaterialNameEditField.Position = [61 170 181 22];

            % Create MaterialsParametersTable
            app.MaterialsParametersTable = uitable(app.MaterialPropertiesPanel);
            app.MaterialsParametersTable.ColumnName = {'Material'; 'E [MPa]'; 'v'};
            app.MaterialsParametersTable.RowName = {};
            app.MaterialsParametersTable.ColumnEditable = [false false];
            app.MaterialsParametersTable.Position = [9 10 268 150];

            % Create useThermalExpansionwithAbaqusforgrowthCheckBox
            app.useThermalExpansionwithAbaqusforgrowthCheckBox = uicheckbox(app.AnalysisSettingsPanel);
            app.useThermalExpansionwithAbaqusforgrowthCheckBox.Enable = 'off';
            app.useThermalExpansionwithAbaqusforgrowthCheckBox.Text = 'use Thermal Expansion with Abaqus for growth ';
            app.useThermalExpansionwithAbaqusforgrowthCheckBox.Position = [21 39 279 22];

            % Create ReadsomeinformationaboutthesesettingsButton
            app.ReadsomeinformationaboutthesesettingsButton = uibutton(app.AnalysisSettingsPanel, 'push');
            app.ReadsomeinformationaboutthesesettingsButton.ButtonPushedFcn = createCallbackFcn(app, @ReadsomeinformationaboutthesesettingsButtonPushed, true);
            app.ReadsomeinformationaboutthesesettingsButton.FontWeight = 'bold';
            app.ReadsomeinformationaboutthesesettingsButton.Position = [162 480 262 22];
            app.ReadsomeinformationaboutthesesettingsButton.Text = 'Read some information about these settings';

            % Create ResultsofselectedAnalysisTab
            app.ResultsofselectedAnalysisTab = uitab(app.TabGroup);
            app.ResultsofselectedAnalysisTab.Title = 'Results of selected Analysis';
            app.ResultsofselectedAnalysisTab.ButtonDownFcn = createCallbackFcn(app, @ResultsofselectedAnalysisTabButtonDown, true);

            % Create ChangeOfGeometryAxes
            app.ChangeOfGeometryAxes = uiaxes(app.ResultsofselectedAnalysisTab);
            title(app.ChangeOfGeometryAxes, 'Change of Geometry Features')
            xlabel(app.ChangeOfGeometryAxes, 'Time')
            ylabel(app.ChangeOfGeometryAxes, 'Angle [*]')
            zlabel(app.ChangeOfGeometryAxes, 'Z')
            app.ChangeOfGeometryAxes.Position = [557 355 514 131];

            % Create ChangeofGeometryFeaturesPanel
            app.ChangeofGeometryFeaturesPanel = uipanel(app.ResultsofselectedAnalysisTab);
            app.ChangeofGeometryFeaturesPanel.Title = 'Change of Geometry Features';
            app.ChangeofGeometryFeaturesPanel.Position = [9 125 533 322];

            % Create ChangeOfGeometryTable
            app.ChangeOfGeometryTable = uitable(app.ChangeofGeometryFeaturesPanel);
            app.ChangeOfGeometryTable.ColumnName = {'Iteration'; 'AVA'; 'change'; 'NSA'; 'change'; '+ Varus / - Valgus'; 'max deformation'};
            app.ChangeOfGeometryTable.RowName = {};
            app.ChangeOfGeometryTable.Position = [0 0 533 300];

            % Create SelectedAnalysisLabel
            app.SelectedAnalysisLabel = uilabel(app.ResultsofselectedAnalysisTab);
            app.SelectedAnalysisLabel.Position = [18 508 1047 22];
            app.SelectedAnalysisLabel.Text = 'Selected Analysis:';

            % Create PlotOsteogenicIndexPanel
            app.PlotOsteogenicIndexPanel = uipanel(app.ResultsofselectedAnalysisTab);
            app.PlotOsteogenicIndexPanel.Title = 'Plot Osteogenic Index';
            app.PlotOsteogenicIndexPanel.Position = [758 14 154 322];

            % Create SelectIterations
            app.SelectIterations = uilistbox(app.PlotOsteogenicIndexPanel);
            app.SelectIterations.Items = {''};
            app.SelectIterations.Multiselect = 'on';
            app.SelectIterations.Position = [8 45 137 223];
            app.SelectIterations.Value = {};

            % Create SelectMultiplewithSTRGLabel
            app.SelectMultiplewithSTRGLabel = uilabel(app.PlotOsteogenicIndexPanel);
            app.SelectMultiplewithSTRGLabel.Position = [8 272 145 22];
            app.SelectMultiplewithSTRGLabel.Text = 'Select Multiple with STRG';

            % Create PlotSelectedButton
            app.PlotSelectedButton = uibutton(app.PlotOsteogenicIndexPanel, 'push');
            app.PlotSelectedButton.ButtonPushedFcn = createCallbackFcn(app, @PlotSelectedButtonPushed, true);
            app.PlotSelectedButton.Position = [23 12 100 22];
            app.PlotSelectedButton.Text = 'Plot Selected';

            % Create OpenAnalysisinWindowsExplorerButton
            app.OpenAnalysisinWindowsExplorerButton = uibutton(app.ResultsofselectedAnalysisTab, 'push');
            app.OpenAnalysisinWindowsExplorerButton.ButtonPushedFcn = createCallbackFcn(app, @OpenAnalysisinWindowsExplorerButtonPushed, true);
            app.OpenAnalysisinWindowsExplorerButton.Position = [23 468 206 22];
            app.OpenAnalysisinWindowsExplorerButton.Text = 'Open Analysis in Windows Explorer';

            % Create CopyFiguretoClipboardButton
            app.CopyFiguretoClipboardButton = uibutton(app.ResultsofselectedAnalysisTab, 'push');
            app.CopyFiguretoClipboardButton.ButtonPushedFcn = createCallbackFcn(app, @CopyFiguretoClipboardButtonPushed, true);
            app.CopyFiguretoClipboardButton.Position = [922 330 149 22];
            app.CopyFiguretoClipboardButton.Text = 'Copy Figure to Clipboard';

            % Create VisualizeFEModelPanel
            app.VisualizeFEModelPanel = uipanel(app.ResultsofselectedAnalysisTab);
            app.VisualizeFEModelPanel.Title = 'Visualize FE Model';
            app.VisualizeFEModelPanel.Position = [557 14 190 322];

            % Create SelectIterations_2
            app.SelectIterations_2 = uilistbox(app.VisualizeFEModelPanel);
            app.SelectIterations_2.Items = {''};
            app.SelectIterations_2.Position = [10 70 91 202];
            app.SelectIterations_2.Value = {};

            % Create StressButton
            app.StressButton = uibutton(app.VisualizeFEModelPanel, 'push');
            app.StressButton.ButtonPushedFcn = createCallbackFcn(app, @StressButtonPushed, true);
            app.StressButton.Position = [111 12 60 22];
            app.StressButton.Text = 'Stress';

            % Create GrowthButton
            app.GrowthButton = uibutton(app.VisualizeFEModelPanel, 'push');
            app.GrowthButton.ButtonPushedFcn = createCallbackFcn(app, @GrowthButtonPushed, true);
            app.GrowthButton.Position = [25 12 61 22];
            app.GrowthButton.Text = 'Growth';

            % Create SelectLoadInstance
            app.SelectLoadInstance = uilistbox(app.VisualizeFEModelPanel);
            app.SelectLoadInstance.Items = {'1', '2', '3', '4', '5', '6', '7', '8', '9'};
            app.SelectLoadInstance.Position = [100 70 81 202];
            app.SelectLoadInstance.Value = '7';

            % Create IterationLabel
            app.IterationLabel = uilabel(app.VisualizeFEModelPanel);
            app.IterationLabel.Position = [11 272 49 22];
            app.IterationLabel.Text = 'Iteration';

            % Create LoadInstanceLabel
            app.LoadInstanceLabel = uilabel(app.VisualizeFEModelPanel);
            app.LoadInstanceLabel.Position = [100 272 81 22];
            app.LoadInstanceLabel.Text = 'Load Instance';

            % Create CopyTableButton
            app.CopyTableButton = uibutton(app.ResultsofselectedAnalysisTab, 'push');
            app.CopyTableButton.ButtonPushedFcn = createCallbackFcn(app, @CopyTableButtonPushed, true);
            app.CopyTableButton.Position = [226 94 100 22];
            app.CopyTableButton.Text = 'Copy Table';

            % Create OpenMuscleAttachmentSummaryButton
            app.OpenMuscleAttachmentSummaryButton = uibutton(app.ResultsofselectedAnalysisTab, 'push');
            app.OpenMuscleAttachmentSummaryButton.ButtonPushedFcn = createCallbackFcn(app, @OpenMuscleAttachmentSummaryButtonPushed, true);
            app.OpenMuscleAttachmentSummaryButton.Position = [174 52 205 22];
            app.OpenMuscleAttachmentSummaryButton.Text = 'Open Muscle Attachment Summary';

            % Create OpenMuscleAttachmentDetailedTableButton
            app.OpenMuscleAttachmentDetailedTableButton = uibutton(app.ResultsofselectedAnalysisTab, 'push');
            app.OpenMuscleAttachmentDetailedTableButton.ButtonPushedFcn = createCallbackFcn(app, @OpenMuscleAttachmentDetailedTableButtonPushed, true);
            app.OpenMuscleAttachmentDetailedTableButton.Position = [161 18 230 22];
            app.OpenMuscleAttachmentDetailedTableButton.Text = 'Open Muscle Attachment Detailed Table';

            % Create ComparemultipleAnalysisTab
            app.ComparemultipleAnalysisTab = uitab(app.TabGroup);
            app.ComparemultipleAnalysisTab.Title = 'Compare multiple Analysis';
            app.ComparemultipleAnalysisTab.ButtonDownFcn = createCallbackFcn(app, @ComparemultipleAnalysisTabButtonDown, true);

            % Create ChangeOfAVA
            app.ChangeOfAVA = uiaxes(app.ComparemultipleAnalysisTab);
            title(app.ChangeOfAVA, 'Change of Anteversion Angle (AVA)')
            xlabel(app.ChangeOfAVA, 'Time')
            ylabel(app.ChangeOfAVA, 'Angle [*]')
            zlabel(app.ChangeOfAVA, 'Z')
            app.ChangeOfAVA.Position = [506 314 579 221];

            % Create ChangeOfNSA
            app.ChangeOfNSA = uiaxes(app.ComparemultipleAnalysisTab);
            title(app.ChangeOfNSA, 'Change of Neck-Shaft-Angle (NSA)')
            xlabel(app.ChangeOfNSA, 'Time')
            ylabel(app.ChangeOfNSA, 'Angle [*]')
            zlabel(app.ChangeOfNSA, 'Z')
            app.ChangeOfNSA.Position = [506 52 579 221];

            % Create AvailableAnalysisinthisdirectoryListBoxLabel_2
            app.AvailableAnalysisinthisdirectoryListBoxLabel_2 = uilabel(app.ComparemultipleAnalysisTab);
            app.AvailableAnalysisinthisdirectoryListBoxLabel_2.HorizontalAlignment = 'right';
            app.AvailableAnalysisinthisdirectoryListBoxLabel_2.Position = [10 515 188 22];
            app.AvailableAnalysisinthisdirectoryListBoxLabel_2.Text = 'Available Analysis in this directory:';

            % Create AvailableAnalysisinthisdirectoryListBox_2
            app.AvailableAnalysisinthisdirectoryListBox_2 = uilistbox(app.ComparemultipleAnalysisTab);
            app.AvailableAnalysisinthisdirectoryListBox_2.Items = {};
            app.AvailableAnalysisinthisdirectoryListBox_2.Multiselect = 'on';
            app.AvailableAnalysisinthisdirectoryListBox_2.ValueChangedFcn = createCallbackFcn(app, @AvailableAnalysisinthisdirectoryListBox_2ValueChanged, true);
            app.AvailableAnalysisinthisdirectoryListBox_2.Position = [15 14 467 498];
            app.AvailableAnalysisinthisdirectoryListBox_2.Value = {};

            % Create filterEditFieldLabel_2
            app.filterEditFieldLabel_2 = uilabel(app.ComparemultipleAnalysisTab);
            app.filterEditFieldLabel_2.HorizontalAlignment = 'right';
            app.filterEditFieldLabel_2.Position = [227 514 28 22];
            app.filterEditFieldLabel_2.Text = 'filter';

            % Create filterEditField_2
            app.filterEditField_2 = uieditfield(app.ComparemultipleAnalysisTab, 'text');
            app.filterEditField_2.Position = [265 516 217 22];

            % Create WilliKollerUniversityofViennaLabel
            app.WilliKollerUniversityofViennaLabel = uilabel(app.GPToolAtoolboxUIFigure);
            app.WilliKollerUniversityofViennaLabel.Position = [902 14 194 22];
            app.WilliKollerUniversityofViennaLabel.Text = '© Willi Koller, University of Vienna';

            % Show the figure after all components are created
            app.GPToolAtoolboxUIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = GPTool_exported

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.GPToolAtoolboxUIFigure)

            % Execute the startup function
            runStartupFcn(app, @startupFcn)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.GPToolAtoolboxUIFigure)
        end
    end
end