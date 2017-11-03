function show(this,varargin)
            hold on;
            argin=varargin;
            col='r';
            sty='-';
            wid=1;
            while length(argin)>=1
                prop=argin{1};
                val=argin{2};
                argin=argin(3:end);
                switch prop
                    case 'Color'
                        col=val;
                    case 'LineStyle'
                        sty=val;
                    case 'LineWidth'
                        wid=val;
                    otherwise
                        error('Asset properties:x,y');
                end
            end
            stem3(this.x,this.y,this.z,'Color',col,'LineStyle',sty,'LineWidth',wid);
            clear argin varargin
            clear col sty
            hold off;
        end