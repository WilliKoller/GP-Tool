function [varargout]=spmin(varargin)

% function [minVal,minInd]=spmin(A,B,vecdim,nanflag,logicRelevant)
% ------------------------------------------------------------------------
%
%
% Kevin Moerman
% ------------------------------------------------------------------------

%%

A=varargin{1};

switch nargin
    case 5
        logicRelevant=varargin{5};
        varargin=varargin(1:4);
        if isempty(varargin{4})
            varargin=varargin(1:3);
        end
    otherwise
        logicRelevant=A~=0;
end

%%

maxOffset=max(A(logicRelevant));

A(logicRelevant)=A(logicRelevant)-maxOffset;
varargin{1}=A;
[minVal,minInd]=min(varargin{:});
minVal=minVal+maxOffset;

%% Collect output
varargout{1}=minVal;
varargout{2}=minInd;

%% 
% _*GIBBON footer text*_ 
% 
% License: <https://github.com/gibbonCode/GIBBON/blob/master/LICENSE>
% 
% GIBBON: The Geometry and Image-based Bioengineering add-On. A toolbox for
% image segmentation, image-based modeling, meshing, and finite element
% analysis.
% 
% Copyright (C) 2006-2020 Kevin Mattheus Moerman
% 
% This program is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
% 
% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
% 
% You should have received a copy of the GNU General Public License
% along with this program.  If not, see <http://www.gnu.org/licenses/>.
