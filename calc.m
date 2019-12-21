% 计算问题二
i=0; h=0.11; l=1.7; L=0;  % h是初始质心高度, l是绳长, L是角动量
I=0.0253595;   % 转动惯量
t=acosd(h/l);  % 绳方向与竖直线夹角
A=zeros(8,3); r=zeros(8,3); Fs=zeros(1,3);
% A(i)是i号力向量，r(i)是i号发力点位移向量
f90 = [1 4]; % 【修改】90N力的编号
f80 = [];    % 【修改】80N力的编号
% L =[0.0108, -0.0045, 0];  % 【修改】继承上一阶段角动量,在误差类型2中用到
for deg = 0:45:359
    i = i+1;
    if ismember(i, f90) 
        F = 90;
    elseif ismember(i, f80)
        F = 80;
    else        % 【修改】正常发力大小,第一阶段是68.1545,第二阶段是80
        F = 80;
    end
    A(i,:) = [F*sind(t)*cosd(deg), F*sind(t)*sind(deg), F*cosd(t)];
    r(i,:) = [0.2*cosd(deg), 0.2*sind(deg), 0];
    L = L + cross(A(i,:), r(i,:))*0.1;  % 每个力矩都对角动量L有贡献，累加起来
    Fs = Fs + A(i,:);
end
w = L/I     % 角速度向量
w_abs = norm(L)/I   % 角速度模长