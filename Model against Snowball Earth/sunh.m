%Given obliquity & latitude, 正午太阳高度(sunh) vs. 太阳黄经
t=0:0.1:360;
k=input('k=');%黄赤交角
sigma=input('sigma=');%地理纬度
fi=asind(cosd(t)./(sind(k)+cosd(k)/tand(k))); %太阳赤纬
sita=90-abs(sigma-fi);
plot(t,sita);grid on;