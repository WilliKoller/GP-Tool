workingDir = 'C:\Users\Willi\Documents\UniDataLokal\FG_Dist\';

participants = GetSubDirsFirstLevelOnly(workingDir);

addpath(genpath('functions'));

for p = 4 %: numel(participants)
    clearvars -except participants p workingDir;
    load(fullfile(workingDir, participants{p}, 'settings.mat'));
    load(fullfile(workingDir, participants{p}, 's_1.5_r_10_t_3', 'meshSettings.mat'));
    side = participants{p}(end);

    % if contains(participants{p}, 'CP')
    triGeom_set = createTriGeomSet({[side '_femur']}, fullfile(workingDir, participants{p}, 'Segmentation'));
    triGeom_set.(['femur_' lower(side)]) = triGeom_set.([side '_femur']);
    triGeom_set = rmfield(triGeom_set, [side '_femur']);
    % else
    %     triGeom_set = createTriGeomSet({[side '_femur']}, ['C:\Users\Willi\ucloud\PhD\DEMAND\Daten\MRT\Segmentations\' participants{p}(1:end-2) '\' participants{p}(1:end-2) '_all_with_distal\export\'])
    %     triGeom_set.(['femur_' lower(side)]) = triGeom_set.([side '_femur']);
    %     triGeom_set = rmfield(triGeom_set, [side '_femur']);
    % end

    [JCS, ~, ~] = processTriGeomBoneSet(triGeom_set, lower(side), '', giboc_method, '', 1);

    [~, ~, ~, ~, AuxCSInfo] = GIBOC_femur(triGeom_set.(['femur_' lower(side)]), lower(side), giboc_method(7:end), 0);
    if contains(giboc_method, 'cyl')
        disp(AuxCSInfo.Cyl_Radius);
    end
    % [JCS, ~, ~] = processTriGeomBoneSet(triGeom_set, lower(side), '', 'GIBOC-ellipsoids', '', 1);
    kneeOrigin = (JCS.(['femur_' lower(side)]).(['knee_' lower(side)]).Origin - JCS.(['femur_' lower(side)]).(['hip_' lower(side)]).Origin)' * JCS.(['femur_' lower(side)]).(['hip_' lower(side)]).V;

    if strcmpi(side, 'l')
        kneeOutsideMed = kneeOrigin + [0 0 50];
        kneeOutsideLat = kneeOrigin - [0 0 50];
    else
        kneeOutsideMed = kneeOrigin - [0 0 50];
        kneeOutsideLat = kneeOrigin + [0 0 50];
    end
    % renumbered_nodes.N(and( and(renumbered_nodes.N(:, 1) < 2, renumbered_nodes.N(:, 1) > -2), and(renumbered_nodes.N(:, 2) < 2, renumbered_nodes.N(:, 2) > -2)), :)
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

    kneeMed = renumbered_nodes.N(kneeMedInd, [2 3]);  % ignore x axis --> anterior posterior --> ignored for varus / valgus
    kneeLat = renumbered_nodes.N(kneeLatInd, [2 3]);
    u = kneeMed - kneeLat;
    if strcmpi(side, 'l')
        v = [0, 1];
    else
        v = [0, -1];
    end

    CosTheta = max(min(dot(u,v)/(norm(u)*norm(v)),1),-1);
    kneeAxisAngle = real(acosd(CosTheta));
    figure; hold on;
    plot3(0, kneeLat(1), kneeLat(2), 'x', 'MarkerSize', 10, 'LineWidth',3);
    plot3(0, kneeMed(1), kneeMed(2), 'x', 'MarkerSize', 10, 'LineWidth',3);
    legend;
    plotNodes(renumbered_nodes.N);
    daspect([1 1 1]);
    if kneeLat(1) > kneeMed(1)
        kneeAxisAngle = kneeAxisAngle *-1;
    end
    % positive kneeAxisAngle means lateral point is more distal which leads to a varus angle
    
    % kneeAxisAngle
    % kneeLat
    % kneeMed
    % save(fullfile(workingDir, participants{p}, 's_1.5_r_10_t_3', 'meshSettings.mat'), "kneeLat", 'kneeLatInd', "kneeMed", 'kneeMedInd', 'kneeAxisAngle', '-append');
end