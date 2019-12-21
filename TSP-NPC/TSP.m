clear;
% 货郎担问题！NPC！
Coord = ...     % 城市的坐标Coordinates
[0.6683 0.6195 0.4    0.2439 0.1707 0.2293 0.5171 0.8732 0.6878 0.8488; ...
  0.2536 0.2634 0.4439 0.1463 0.2293 0.761  0.9414 0.6536 0.5219 0.3609];
t0 = 1;         % 初温t0
iLk = 20; oLk = 50; % 内,外循环最大迭代次数iLk,oLk
lam = 0.95;     % lambda
istd = 0.001;       % 若内循环函数值方差小于istd则停止
ostd = 0.001;       % 若外循环函数值方差小于ostd则停止
ilen = 5; olen = 5; % 内外循环保存的目标函数值个数

% 程序主体
m = length(Coord);      % 城市个数m
fare = distance(Coord); % 路径费用fare
path = 1:m;             % 初始路径path
pathfar = pathfare(fare , path); % 路径费用path fare
ores = zeros(1 , olen); % 外循环保存的目标函数值
e0 = pathfar;           % 能量初值e0
t = t0;     % 温度t
for out = 1:oLk         % 外循环模拟退火过程
    ires = zeros(1 , ilen); % 内循环保存的目标函数值
    for in = 1:iLk      % 内循环模拟热平衡过程
        [newpath , v] = swap(path , 1);  % 产生新状态
        e1 = pathfare(fare , newpath);   % 新状态能量
        % Metropolis抽样稳定准则
        r = min(1 , exp(-(e1-e0)/t));
        if rand < r
            path = newpath;  % 更新最佳状态
            e0 = e1;
        end
        ires = [ires(2:end) e0]; % 保存新状态能量
        % 内循环终止准则：连续ilen个状态能量波动小于istd
        if std(ires , 1) < istd
            break;
        end
    end
    ores = [ores(2:end) e0];     % 保存新状态能量
    % 外循环终止准则：连续olen个状态能量波动小于ostd
    if std(ores , 1) < ostd
        break;
    end
    t = lam * t;
end

pathfar = e0;
fprintf('近似最优路径为：\n ')
%disp(char([path , path(1)] + 64));
disp(path)
fprintf('近似最优路径路程\tpathfare=');
disp(pathfar);
myplot(path , Coord , pathfar);