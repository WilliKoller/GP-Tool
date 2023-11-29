app = GPTool_exported;

temp = fileparts(pwd);
% loadingFolder_generic = fullfile(temp, 'Loading_generic');
% loadingFolder_subspec = fullfile(temp, 'Loading_subjSpecModelsAnglesOfFemGrowth');

% loadingFolder = 'C:\Users\Willi\ucloud\PhD\Study_OI_DIST\SimulationOutput';
% filesInLoadingFolder = dir(fullfile(loadingFolder, '*.mat'));
% loadingFilenames = {filesInLoadingFolder.name};
pause(5);

probands = app.AvailableParticipantsinthisdatafolderListBox.Items;
probands = probands(contains(probands, '_'));
% probands = probands(contains(probands, 'W'));
% probands = {'CP05W_L', 'CP07W_R', 'TD09W_L'};

additionalAnalysis = {'NORM', 'PSD', 'FNDD'};

problems = [];
%%
for proband = 1 : size(probands, 2)

    app.TabGroup.SelectedTab = app.ParticipantsTab;

    app.AvailableParticipantsinthisdatafolderListBox.Value = probands{proband};
    app.AvailableParticipantsinthisdatafolderListBox();
    
    app.TabGroup.SelectedTab = app.MeshesTab;
    app.MeshesTabButtonDown();
    
    app.AvailableMeshesinthisdirectoryListBox.Value = app.AvailableMeshesinthisdirectoryListBox.Items(1);
    app.AvailableMeshesinthisdirectoryListBoxValueChanged();

    % proxAnalysisFolderName = fullfile(app.meshFolder, 'lern_mat1_a_0.02_b_0.01_bio_double_f_1_iter_1_CELL');

    for analysis = 1 : numel(additionalAnalysis)
        % copy base analysis and modify growth method and use Abaqus
        oldAnalysisName = ['lern_mat1_a_0.02_b_0.01_bio_double_f_1_iter_1_' additionalAnalysis{analysis} '_Abaqus'];
        newAnalysisName = ['lern_mat1_a_0.02_b_0.01_bio_double_f_1_iter_4_' additionalAnalysis{analysis} '_Abaqus'];
        movefile(fullfile(app.meshFolder, oldAnalysisName), fullfile(app.meshFolder, newAnalysisName));
        load(fullfile(app.meshFolder, newAnalysisName, 'analysisSettings.mat'), 'Growth');
        Growth.nr_of_iterations = 4;
        save(fullfile(app.meshFolder, newAnalysisName, 'analysisSettings.mat'), 'Growth', '-append');
       
        % run Growth Simulation
        app.TabGroup.SelectedTab = app.AnalysisTab;
        app.AnalysisTabButtonDown();

        app.AvailableAnalysisinthisdirectoryListBox.Value = newAnalysisName;
        app.AvailableAnalysisinthisdirectoryListBoxValueChanged();

        app.skipstresscalculationinIteration1seetooltipCheckBox.Value = 1;

        pause(1);
        try
            app.RunAnalysisButtonPushed();
        catch
            problems(end+1, 1) = proband;
            problems(end, 2) = analysis;
        end
    end
end