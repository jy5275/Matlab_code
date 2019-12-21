%终极Boss
clear;t=-180:0.1:180; %时角 
q=zeros(1,90); tq=zeros(1,90); k=input('k='); %dd=input('huangjing=');
for v=0:359   %v是true anomaly（从夏至开始算）。如果考虑椭圆，它对时间将发生非线性变化
%    if d~=dd  
%        continue;
%    end
    del=asind(sind(k).*sind(v-90)); % del(δ)是太阳赤纬
    for fi=0:89   %fi是地理纬度-1°
        if abs(-tand(del)*tand(fi))<=1  %如果有日出日落
            t2=acosd(-tand(del)*tand(fi));  t1=-t2;  %t1日出，t2日落（时角）
            t=t1:0.1:t2;
            P=100*abs(sind(del)*sind(fi)+cosd(del).*cosd(fi).*cosd(t));%瞬时辐射值
            q(fi+1)=trapz(t,P);  %求P函数在t区间上的积分，得该纬度当日累计辐射量
            tq(fi+1)=tq(fi+1)+q(fi+1); %该纬度当前年累计辐射量
        else  %没有日出
            P=100*abs(sind(del)*sind(fi)+cosd(del).*cosd(fi).*cosd(t));
            q(fi+1)=trapz(t,P);
            if del*fi<0  %极夜
                q(fi+1)=0;
            end
            tq(fi+1)=tq(fi+1)+q(fi+1);
        end
    end
end
%subplot(2,2,4);
plot(0:89,tq,'.');xlabel('Latitude(°)');ylabel('Annual solar radiation (unit)');
grid on; hold on; title('Annual solar radiation vs. latitude');