%btss([x y],z)
classdef user < handle
    properties
        x=0;
        y=0;
        z=1.68;%¸ß¶È
    end
    methods
        function this=user(varargin)
            narginchk(1,3);
                this.x=varargin{1}(1);
                this.y=varargin{1}(2);
            if nargin>=2
                this.z=varargin{2};
            end
        end
        show(this,varargin);
    end
end

