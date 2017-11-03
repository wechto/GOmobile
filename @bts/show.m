function show(this,varargin)
            hold on;
            argin=varargin;
            col='b';
            sty='-';
            wid=0.5;
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
            rr=this.r;
            xx=this.x;
            yy=this.y;
            locX=[xx+rr xx+rr/2 xx-rr/2 xx-rr xx-rr/2 xx+rr/2 xx+rr];
            locY=[yy yy+rr*sqrt(3)/2 yy+rr*sqrt(3)/2 yy yy-rr*sqrt(3)/2 yy-rr*sqrt(3)/2 yy];
            for temp = 1:6
                line([locX(temp) locX(temp+1)],[locY(temp) locY(temp+1)],'Color',col,'LineStyle',sty,'LineWidth',wid);
            end
            clear col sty
            clear rr xx yy locX locY temp ;
            hold off;
        end