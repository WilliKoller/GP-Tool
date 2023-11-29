app = GPTool_exported;

temp = fileparts(pwd);
% loadingFolder_generic = fullfile(temp, 'Loading_generic');
% loadingFolder_subspec = fullfile(temp, 'Loading_subjSpecModelsAnglesOfFemGrowth');

loadingFolder = 'C:\Users\Willi\ucloud\PhD\Study_OI_DIST\SimulationOutput';
filesInLoadingFolder = dir(fullfile(loadingFolder, '*.mat'));
loadingFilenames = {filesInLoadingFolder.name};
pause(5);

probands = app.AvailableParticipantsinthisdatafolderListBox.Items;
probands = probands(contains(probands, '_'));
% probands = probands(contains(probands, 'W'));
% probands = {'CP05W_L', 'CP07W_R', 'TD09W_L'};

problems = [];
%%
for proband = 10% 1%1 : size(probands, 2)
    app.TabGroup.SelectedTab = app.ParticipantsTab;
%     pIndex = find(contains(app.AvailableProbandsinthisworkingdirectoryListBox.Items, probands{proband}));
%     app.AvailableProbandsinthisworkingdirectoryListBox.Value = app.AvailableProbandsinthisworkingdirectoryListBox.Items(pIndex);
    app.AvailableParticipantsinthisdatafolderListBox.Value = probands{proband};
    app.AvailableParticipantsinthisdatafolderListBox();
    
    app.TabGroup.SelectedTab = app.MeshesTab;
    app.MeshesTabButtonDown();
    
    app.AvailableMeshesinthisdirectoryListBox.Value = app.AvailableMeshesinthisdirectoryListBox.Items(1);
    app.AvailableMeshesinthisdirectoryListBoxValueChanged();
    
    app.TabGroup.SelectedTab = app.AnalysisTab;
    app.AnalysisTabButtonDown();
   
    for analysis =  1:4%1%[1 4]%:3%4%2 : 4 % run 4 different analysis
        
        app.AvailableAnalysisinthisdirectoryListBox.Value = 'Create new';
        app.AvailableAnalysisinthisdirectoryListBoxValueChanged();
        app.MaterialNameEditField.Value = 'mat1';
        app.LoadingNameEditField.Value = 'lern';

        % define material properties
        app.MaterialsParametersTable.Data = {'GROWTHPLATE' 1000 0.49; ...
            'TRAB_PROX' 10000 0.3; ...
            'CORTICAL' 20000 0.3; ...
            'MARROW' 100 0.3; ...
            'TRAB_DIST' 10000 0.3};

        % define growth parameters
        app.GrowthParametersTable.Data = {'a', 0.02; ...
            'b', 0.01;...
            'biological growth', nan; ...
            'growth factor', 1; ...
            'nr of growth iterations', 1};
        app.avoidnegativegrowthCheckBox.Value = 0;
        app.biologicalgrowth2mechanicalgrowthCheckBox.Value = 1;
        app.biologicalgrowth2mechanicalgrowthCheckBoxValueChanged();
        app.GrowthMethodDropDown.Value = app.GrowthMethodDropDown.Items(4);

        if analysis ~= 4
            app.DistalorProximalDropDown.Value = 'Distal';
        else
            app.DistalorProximalDropDown.Value = 'Proximal';
        end
        
        switch analysis
            case 1
                app.ClampingDropDown.Value = 'default';
            case 2
                app.ClampingDropDown.Value = 'belowShaft';
            case 3
                app.ClampingDropDown.Value = 'aboveShaft';
            case 4
                app.ClampingDropDown.Value = 'default';
        end

        
        load(fullfile(app.probandFolder, 'settings.mat'), 'p_id', 'side');
       
        % disp(app.AvailableParticipantsinthisdatafolderListBox.Value);
        % i1 = strfind(app.AvailableProbandsinthisworkingdirectoryListBox.Value, '_');
        % probandIdentifier = app.AvailableProbandsinthisworkingdirectoryListBox.Value(1:i1-1);
        % probandIdentifier = strrep(probandIdentifier, 'W', '');
        % side = app.AvailableProbandsinthisworkingdirectoryListBox.Value(i1+1);
        % if strcmp(side, 'L')
        %     side = 'left';
        % else
        %     side = 'right';
        % end
        
%         define loading parameters
        filesInLoadingFolder = dir(fullfile(loadingFolder, '*.mat'));
        filenames = {filesInLoadingFolder.name};

        if length(p_id) == 4
            p_id = [p_id '_'];
        end

        if strcmp(side, 'L')
            side = 'left';
        else
            side = 'right';
        end

        app.selectloadingfileLabel.Text = '';
        for f = 1 : numel(loadingFilenames)
            if strcmp(loadingFilenames{f}(1:5), p_id)
                if contains(loadingFilenames{f}, side)
                    disp(loadingFilenames{f})
                    app.selectloadingfileLabel.Text = fullfile(loadingFolder, loadingFilenames{f});
                    break;
                end
            end
        end
        
        if ~strcmp(app.selectloadingfileLabel.Text, '')
            app.CreatethisanalysisButtonPushed();
            
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
            end
            
            app.AvailableAnalysisinthisdirectoryListBox.Value = analysisName;
            app.AvailableAnalysisinthisdirectoryListBoxValueChanged();
            
%             if analysis == 1
                app.skipstresscalculationinIteration1seetooltipCheckBox.Value = 0;
                firstAnalysisFolder = fullfile(app.meshFolder, analysisName, 'Iteration_1');
%             else
%                 app.skipstresscalculationinIteration1seetooltipCheckBox.Value = 1;
%                 
%                 % copy Iteration folder from first analysis
%                 newAnalysisFolder = fullfile(app.meshFolder, analysisName, 'Iteration_1');
%                 mkdir(newAnalysisFolder);
%                 filesToCopy = {'element_stresses.txt', 'nodal_displacement.txt', 'FE_stresses.log', 'FE_stresses.xplt', 'FE_stresses.feb', 'FE_stresses.mat'};
%                 
%                 try
%                     for i = 1 : numel(filesToCopy)
%                         copyfile(fullfile(firstAnalysisFolder, filesToCopy{i}), fullfile(newAnalysisFolder, filesToCopy{i}));
%                     end
%                 catch
%                     disp(['It seems like the finite element model for calculating stresses with this material did not terminate successfully. Skipping ' analysisName ' from ' app.AvailableProbandsinthisworkingdirectoryListBox.Value]);
%                     break;
%                 end
%             end
            
            pause(1);
            try
                app.RunAnalysisButtonPushed();
            catch
                problems(end+1, 1) = proband;
                problems(end, 2) = analysis;
            end
        else
            disp(['no loading found for ' app.AvailableProbandsinthisworkingdirectoryListBox.Value]);
        end
    end
end