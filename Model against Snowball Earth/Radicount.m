% Obliquity & cele long. -> Radiation vs. lat. on this day
clear;k=input('k=');pi=3.1415927;
d=mod((input('d=')+90),360);%黄经，从春分开始算
del=asind(sind(k).*sind(d-90)); % del(δ)是太阳赤纬

for phi = 0:89   %fi是地理纬度-1°
    if abs(-tand(del)*tand(phi)) <= 1  %如果有日出日落
        H0 = acos(-tand(del)*tand(phi));  %t2日落（时角）
    elseif tand(del)*tand(phi)>1
        H0 = pi;
    elseif tand(del)*tand(phi)<-1
        H0 = 0;
    end
    W(phi+1) = 100*abs(H0*sind(del)*sind(phi) + ...
        sin(H0).*cosd(del).*cosd(phi));  %瞬时辐射值
end
plot(0:89,W,'.'); grid minor; hold on;