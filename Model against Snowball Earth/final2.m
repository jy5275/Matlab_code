%按照论文上的来
clear;t=-180:0.1:180; q=zeros(1,90); tq=zeros(1,90); k=input('k=');
for d=0:359   %d是太阳黄经（从夏至开始算）
    del=asind(sind(k).*sind(d-90)); % del(δ)是太阳赤纬
    for fi=0:89   %fi是地理纬度-1°
        if abs(-tand(del)*tand(fi))<=1  %如果有日出日落
            t2=acosd(-tand(del)*tand(fi));  t1=-t2;  %t1日出，t2日落（时角）
            t=t1:0.1:t2;
            W=100*abs(t.*sind(del).*sind(fi)+sind(t).*cosd(del).*cosd(fi));%瞬时辐射值
            q(fi+1)=trapz(t,W);  %求W函数在t区间上的积分，得该纬度当日累计辐射量
            tq(fi+1)=tq(fi+1)+q(fi+1); %该纬度当前年累计辐射量
        else  %没有日出
            W=100*abs(t.*sind(del).*sind(fi)+sind(t).*cosd(del).*cosd(fi));
            q(fi+1)=trapz(t,W);
            if del*fi<0  %极夜
                q(fi+1)=0;
            end
            tq(fi+1)=tq(fi+1)+q(fi+1);
        end
    end
end
plot(0:89,tq,'.');  %axis([0,90,0,14000]);
grid on; hold on;