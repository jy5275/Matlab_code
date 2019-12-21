clear;
a=input('K^3,a=');
a(3,3)=0;
A=[1,4,6;-3,2,4;7,11,-9];
b=A*a; b(:,2:3)=[]; b=b'
startpoint=[0,0,0];%向量起点
endpoint1=a;%向量终点
point1=[startpoint;endpoint1];
%figure;
plot3(point1(:,1),point1(:,2),point1(:,3));%绘图
grid on;axis([-2,2,-2,2,-2,2]);hold on
endpoint2=b;%向量终点
point2=[startpoint;endpoint2];
plot3(point2(:,1),point2(:,2),point2(:,3));%绘图