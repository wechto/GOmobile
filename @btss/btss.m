%btss([m n],[xo yo],r)
classdef btss < handle
    properties
        m=0;%行
        n=0;%列
        xo=0;%中心x坐标
        yo=0;%中心y坐标
        r=10;%单个基站半径
        gbts=cell(15,15);
    end
    methods
        function this=btss(varargin)
            narginchk(1,3);
            this.m=varargin{1}(1);
            this.n=varargin{1}(2);
            if nargin>=2
                this.xo=varargin{2}(1);
                this.yo=varargin{2}(2);
            end
            if nargin>=3
                this.r=varargin{3};
            end
            if this.m>15 || this.n>15 || this.m<=0 || this.n<=0
                error('0<m<=15 0<n<=15');
            end
        end
        show(this);
        function set.gbts(this,tempg)
            this.gbts{tempg{1,1},tempg{1,2}}=tempg{1,3};
        end
    end
end

