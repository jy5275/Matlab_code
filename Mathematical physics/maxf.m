%�����¶�(K)�������������������˹Τ�ٶ������ʷֲ�ģʽ
v=-1000:0.1:1000;
m=input('Mass(nulcear)=');
T=input('Temporature='); %����������������¶�
m=m*1.67442*10^(-27); k=8.314/(6.02*10^23); %m�Ƿ���ʵ��������k�ǲ�����������
f=((m./(2.*pi.*k.*T)).^(3/2)).*exp(-(m.*v.^2)./(2.*k.*T));
subplot(2,2,1),plot(v,f,'r');  %axis([-900 900 0 2*10^(-8)]);
title('Maxwell distribution of velocity');xlabel('velocity v/m*s^(-1)');ylabel('fm(v)');grid on;
F=4.*pi.*v.^2.*f;
subplot(2,2,2),plot(v,F);axis([0 900 0 3*10^(-3)]);
title('Maxwell distribution of speed');xlabel('speed v/m*s^(-1)');ylabel('Fm(v)');
grid on;hold on;
va=sqrt((8*k*T)/(pi*m)); %text(va,0,'\downarrow ƽ������'); 
vp=sqrt((2*k*T)/m);  %text(vp,0,'\downarrow ��ɼ�����'); 
Fb=(v./va).*F;
%plot(v,Fb,'g'); %axis([-900 900 0 4*10^(-3)]);
%legend('���ɷ���','С��й��������');