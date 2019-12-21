pi=3.1415927; %夫琅禾费衍射
a=input('a=?μm'); %狭缝宽度
lam=input('lam=?nm');  %光波波长
lam=lam*10^(-9);  a=a*10^(-6);
sita=-pi/20:pi/10000:pi/20;  %变量：角度
sinsita=sin(sita);
alf=pi.*a.*sinsita./lam; %引入宗量alf，相当于照射到sita点首位相位差的一半
I=((sin(alf)).^2)./(alf.^2);  %光强随sita或sin(sita)的分布
plot(sinsita,I);grid on;hold on; 