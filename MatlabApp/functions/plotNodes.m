function plotHandle = plotNodes(X, color)
    if nargin < 2
        plotHandle = plot3(X(:,1),X(:,2),X(:,3),'.');
    else
        plotHandle = plot3(X(:,1),X(:,2),X(:,3),'.', 'Color', color);
    end
end