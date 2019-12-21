t=0:2000;pi=3.14159;
%y=A.*sin((2.*pi./T).*t);
%T=95;e1=y;
e1=3*sin((2*pi/95)*t);
e2=5*sin((2*pi/100)*t);
e3=3*sin((2*pi/131)*t);
e4=0.5*sin((2*pi/413)*t);    %离心率四大周期，省略了一些小周期
sinew1=3*sin((2*pi/23)*t);   %岁差两大周期，也省略了一些
sinew2=0.5*sin((2*pi/19)*t);
e=e1+e2+e3+e4;
sinew=sinew1+sinew2;
y=e.*sinew;  %modulated sine curve