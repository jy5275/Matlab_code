% Movement of three planets
clear;
earth = planet(5.965e24, [1520977.01e5,0,0], [0,29291,0]);
sun = planet(1.99e30, [0 0 0], [0 0 0]);
moon = planet(7.35e22, [1520977.01e5+38e7,0,0], [0,30291,0]);

G = 6.67e-11; dt = 24*3600/3; N = 3;
M = [sun.mass,; earth.mass; moon.mass]; % 1*3
R = [sun.position; earth.position; moon.position];  %3*3
V = [sun.velocity; earth.velocity; moon.velocity];  %3*3

for t = 1:366*3
    F = zeros(N,3);     % F(1,:) = [fx, fy, fz]
    for i = 1:N
        mi = M(i); ri = R(i,:);     % 天体i的质量与位置
        for j = (i+1):N
            mj = M(j); rj = R(j,:); % 天体j的质量与位置 
            rij = rj - ri;          % 天体间位移矢量
            fij = G*mi*mj./norm(rij).^3.*rij;   % 引力
            F([i,j], :) = F([i,j], :) + [fij; -fij];dr
        end
    end
    V = V + F./M * dt;  % 更新每日速度 v = v + a·dt
    R = R + V*dt;       % 更新每日位置 x = x + v·dt
    plot(R(2,1),R(2,2), '.r');hold on;
    plot(R(3,1),R(3,2), '.b');hold on;
end
axis([-inf,inf,-inf,inf]);
% xlabel("Days");
% ylabel("Velocity");
grid minor;