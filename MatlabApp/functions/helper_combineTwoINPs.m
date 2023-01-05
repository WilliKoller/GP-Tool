function [combinedElementStruct, combinedNodeStruct] = helper_combineTwoINPs(fileName1, fileName2)
%COMBINETWOINPS Summary of this function goes here
%   Detailed explanation goes here


    logicRenumberOption = 0;
    numberNodesElement = 8; % because its a hex mesh
    [part1_elementStruct, part1_nodeStruct] = import_INP(fileName1, numberNodesElement, logicRenumberOption);
    [part2_elementStruct, part2_nodeStruct] = import_INP(fileName2, numberNodesElement, logicRenumberOption);
    
    [intersect_node_ind, ~] = intersect(part1_nodeStruct.N_ind, part2_nodeStruct.N_ind);
    
    for i = size(part1_nodeStruct.N_ind, 1) : -1 : 1
        if ismember(part1_nodeStruct.N_ind(i), intersect_node_ind)
            part1_nodeStruct.N_ind(i) = [];
            part1_nodeStruct.N(i, :) = [];
        end
    end

    combinedNodeStruct = struct;
    combinedElementStruct = struct;

    combinedNodeStruct.N = cat(1, part1_nodeStruct.N, part2_nodeStruct.N);
    combinedNodeStruct.N_ind = cat(1, part1_nodeStruct.N_ind,  part2_nodeStruct.N_ind);
    combinedElementStruct.E = cat(1, part1_elementStruct.E, part2_elementStruct.E);
    combinedElementStruct.E_ind = cat(1, part1_elementStruct.E_ind, part2_elementStruct.E_ind);
    combinedElementStruct.E_type = part1_elementStruct.E_type;
end

