%光栅衍射500nm
clear;pi=3.1415927; 
a=input('a=?μm')*10^(-6); %狭缝宽度
d=input('d=?μm')*10^(-6); %相邻狭缝间距离
b=d-a; %不透明部分宽度
N=input('N='); %狭缝数目
lam=500;  lam=lam*10^(-9); %波长
sita=-pi/2:pi/10000:pi/2;  %变量：角度
sinsita=sin(sita);
alf=pi.*b.*sinsita./lam; %引入宗量alf，相当于照射到sita点首位相位差的一半
beta=d.*pi.*sinsita./lam;
I=((sin(alf)).^2)./(alf.^2).*( (sin(N.*beta)).^2./(sin(beta)).^2 );
subplot(2,2,2);  plot(sinsita,((sin(alf)).^2)./(alf.^2)); %画衍射因子图gs
ylabel('衍射因子');  xlabel('sinθ,sinθ=k*λ/b取得极大值');  grid on; %sinθ=k*λ/b取得极大值
subplot(2,2,1);  plot(sinsita,(sin(N.*beta)).^2./(sin(beta)).^2);%画干涉因子图
ylabel('干涉因子');  grid on;  xlabel('sinθ,sinθ=k*λ/d取得极大值'); %sinθ=k*λ/d取得极大值
subplot(2,2,3);  plot(sinsita,I);  grid on;  hold on;  xlabel('sinθ');  ylabel('I');
%subplot(2,2,3);  plot(sita,I,'r');  hold on;  grid on;  %以sita为变量以对比deviation