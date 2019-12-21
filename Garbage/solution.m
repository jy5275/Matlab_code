%令∠DBC=xita1,∠DBA=xita2,∠BDC=alpha1,∠BDA=alpha2
%令CD=AD=x=1,BC=BD=y,把一切未知角度、长度用y表示
%最后得到∠A关于y的两个方程(在11行&&12行),联立求解∠A
x=1;
for y=0:0.000001:1.65 
    alpha1=acosd((x^2+y^2-y^2)/(2*x*y));
    xita1=acosd((y^2+y^2-x^2)/(2*y*y));
    alpha2=168-alpha1;
    xita2=66-xita1;
    AB=sqrt(x*x+y*y-2*x*y*cosd(alpha2));
    A1=180-xita2-alpha2;
    A2=acosd((AB*AB+x*x-y*y)/(2*AB*x));
    if abs(A1-A2)<0.00001
        break;
    end 
end
display(A1);
display(A2);