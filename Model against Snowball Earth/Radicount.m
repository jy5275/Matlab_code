% Obliquity & cele long. -> Radiation vs. lat. on this day
clear;k=input('k=');pi=3.1415927;
d=mod((input('d=')+90),360);%�ƾ����Ӵ��ֿ�ʼ��
del=asind(sind(k).*sind(d-90)); % del(��)��̫����γ

for phi = 0:89   %fi�ǵ���γ��-1��
    if abs(-tand(del)*tand(phi)) <= 1  %������ճ�����
        H0 = acos(-tand(del)*tand(phi));  %t2���䣨ʱ�ǣ�
    elseif tand(del)*tand(phi)>1
        H0 = pi;
    elseif tand(del)*tand(phi)<-1
        H0 = 0;
    end
    W(phi+1) = 100*abs(H0*sind(del)*sind(phi) + ...
        sin(H0).*cosd(del).*cosd(phi));  %˲ʱ����ֵ
end
plot(0:89,W,'.'); grid minor; hold on;