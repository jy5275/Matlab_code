%Given obliquity��̫����γ vs.̫���ƾ�
t=0:0.1:360;
k=input('k=');%�Ƴཻ��
fi1=asind(cosd(t)./(sind(k)+cosd(k)/tand(k))); %̫����γ
fi=asind(sind(k).*sind(t+90));
plot(t,fi);grid on;hold on;
plot(t,fi1);legend('fi','fi1');