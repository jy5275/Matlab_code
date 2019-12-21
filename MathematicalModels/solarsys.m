% Solar system
classdef solarsys
    properties
        planets;
    end
    
    methods
        function obj = solarsys(o1, o2, o3)
            planets(1) = o1;
            planets(2) = o2;
            planets(3) = o3;
        end
        
        function draw(a)
            G = 6.67e-11; dt = 24*3600/3; N = 3;
            M = [planets(1).mass,; planets(2).mass; planets(3).mass]; % 1*3
            R = [planets(1).position; planets(2).position; planets(3).position];  %3*3
            V = [planets(1).velocity; planets(2).velocity; planets(3).velocity];  %3*3

            for t = 1:366*3
                F = zeros(N,3);     % F(1,:) = [fx, fy, fz]
                for i = 1:N
                    mi = M(i); ri = R(i,:);     % 天体i的质量与位置
                    for j = (i+1):N
                        mj = M(j); rj = R(j,:); % 天体j的质量与位置 
                        rij = rj - ri;          % 天体间位移矢量
                        fij = G*mi*mj./norm(rij).^3.*rij;   % 引力
                        F([i,j], :) = F([i,j], :) + [fij; -fij];
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
        end
    end
end

