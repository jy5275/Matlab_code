%Given latitude & 太阳赤纬, output 日出与日落的太阳时
del=input('太阳赤纬=');
fi=input('地理纬度=');
sita=-tand(del)*tand(fi);
t1=acosd(-tand(del)*tand(fi));
t2=360-t1;
Sunrise = 12-24*t1/360;
Sunset = 12+24*t1/360;