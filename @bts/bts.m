%bts([x y z],r)
classdef bts < handle
    properties
        x=0;
        y=0;
        z=1;
        r=1;
        num=0;
    end
    methods
        function this=bts(varargin)
            narginchk(1,2);
            this.x=varargin{1}(1);
            this.y=varargin{1}(2);
            if size(varargin{1},2)==3
                this.z=varargin{1}(3);
            end
            if nargin>=2
                this.r=varargin{2};
            end
        end
        show(this,varargin);
    end
end

