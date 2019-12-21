function [x,y] = circle(R,cx,cy)
%%%%%%%%%%%%%%%%%%%
% 画圆函数
%%%%%%%%%%%%%%%%%%%
alpha=0:pi/1000:2*pi;%角度[0,2*pi](变量类型:向量)
%R=2;%半径
x=R*cos(alpha)+cx;
y=R*sin(alpha)+cy;
plot(cx,cy,'r+',x,y);
grid on;axis equal;

end
