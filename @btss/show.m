function show(this)
            % i j x y r a b（左上角） xx yy (当下) tempi tempj
            hold on
            a=this.xo-1.5*this.r*this.n/2;
            b=this.yo-sqrt(3)*this.r*this.m/2;
            for j=1:this.n
                tempj = mod(j,2);
                xx=a+j*1.5*this.r+this.r/2;
                for i=1:this.m
                    %                 tempi = mod(i,2);(没用)
                    yy=b+i*sqrt(3)*this.r+sqrt(3)/2*this.r;
                    if tempj==0
                        yy=yy+sqrt(3)/2*this.r;
                    end
                    %                     [xx yy this.r]
                    obj_bts=bts([xx yy],this.r);
                    obj_bts.show;
                    %tempg
                    tempg=cell(1,3);
                    tempg{1,1}=i;
                    tempg{1,2}=j;
                    tempg{1,3}=obj_bts;
                    this.gbts=tempg;
                    %                     pause(0.05);
                end
            end
            clear i j x y r a b xx yy tempi tempj obj_bts tempg
            hold off
        end