%Given latitude & ̫����γ, output �ճ��������̫��ʱ
del=input('̫����γ=');
fi=input('����γ��=');
sita=-tand(del)*tand(fi);
t1=acosd(-tand(del)*tand(fi));
t2=360-t1;
Sunrise = 12-24*t1/360;
Sunset = 12+24*t1/360;