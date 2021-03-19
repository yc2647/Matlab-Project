%myParabola.m

L = input('Enter L: ');
R = input('Enter R: ');
a = input('Enter a: ');
b = input('Enter b: ');
c = input('Enter c: ');

xc = -b/a;


if a>0
    if R < xc
        min = a*R^2+b*R+c
        max = a*L^2+b*L+c
        fprint('min value is %f \n',min);
        fprint('max value is %f \n', max);
    elseif R<xc  && xc<L
        min = a*xc^2+b*xc+c
        if abs(R-xc) > abs(L-xc)
            max = a*R^2+b*R+c
        else
            max = a*L^2+b*L+c
        end 
        fprint('min value is %f \n',min);
        fprint('max value is %f \n', max);
    else xc < L
        min = a*L^2+b*L+c
        max = a*R^2+b*R+c
        fprintf('min value is %f \n',min);
        fprintf('max value is %f \n', max);
    end  
else a<0
    if R < xc
        min = a*L^2+b*L+c
        max = a*R^2+b*R+c
        fprintf('min value is %f \n',min);
        fprintf('max value is %f \n', max);
    elseif R<xc  && xc<L
        max = a*xc^2+b*xc+c
        if abs(R-xc) > abs(L-xc)
            min = a*R^2+b*R+c
        else 
            min = a*L^2+b*L+c
        end
        fprintf('min value is %f \n',min);
        fprintf('max value is %f \n', max);
    else xc < L
        min = a*R^2+b*R+c
        max = a*L^2+b*L+c
        fprint('min value is %f \n',min);
        fprintf('max value is %f \n', max);
    end
end 
        
        
        
        