function [x,y] = circle(R,cx,cy)
%%%%%%%%%%%%%%%%%%%
% ��Բ����
%%%%%%%%%%%%%%%%%%%
alpha=0:pi/1000:2*pi;%�Ƕ�[0,2*pi](��������:����)
%R=2;%�뾶
x=R*cos(alpha)+cx;
y=R*sin(alpha)+cy;
plot(cx,cy,'r+',x,y);
grid on;axis equal;

end
