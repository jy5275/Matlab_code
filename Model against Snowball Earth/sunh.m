%Given obliquity & latitude, ����̫���߶�(sunh) vs. ̫���ƾ�
t=0:0.1:360;
k=input('k=');%�Ƴཻ��
sigma=input('sigma=');%����γ��
fi=asind(cosd(t)./(sind(k)+cosd(k)/tand(k))); %̫����γ
sita=90-abs(sigma-fi);
plot(t,sita);grid on;