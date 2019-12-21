clear;%x1=39.8;%al=input('alpha=');x1=input('x1=');
S=1;u=4;x2=input('sigma2=');f=0;
for x1=x2:0.01:x2+200
    F1=x1*S;
    for al=45:0.02:88
        %In fact, alpha=pi/2-1/2*atan(u),由此也可推出alpha>45°
        F2=x2*S*tand(al);
        F_shear=F1*sind(al)-F2*cosd(al);
        f_max=u*(F1*cosd(al)+F2*sind(al));
        if F_shear>f_max
            disp(al);f=1;break;end
    end
    if f==1
        break;end
    if x1==2000
        disp('Reach σ1 Up Limit！');end
end
circle((x1-x2)/2,(x1+x2)/2,0);hold on;