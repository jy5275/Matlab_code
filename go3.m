g = 9.8; n = 8; L = 2; e = 0.9; a1 = 2.4354; a2 = 1.4071;
dt = 0.001; dxf = 0.0005; dx = dxf;tt = 0;
drum = ball(3.6, -0.11, -0.0514, 0);
vb = ball(0.27, 0, 2.8, -0.27*g);
close;
for t = 0:dt:2
    if (vb.h - drum.h < 0.11 && vb.v < 0 && drum.v > 0) 
        % ÐèÒª·´µ¯
        v1p = drum.v; v2p = vb.v;
        M = drum.m; m = vb.m;
        drum.v = (M*v1p + m*v2p - e*m*(v1p-v2p))/(M+m);
        vb.v = e*(v1p-v2p) + drum.v;
        %v1p, drum.v
    end
    h1 = vb.h; h2 = drum.h;
    vb.h = vb.h + dt * vb.v;
    drum.h = drum.h + dt * drum.v;
    dx = max(abs(h1 - vb.h), abs(h2 - drum.h));
    dx = max(dx, dxf);
    
    vb.v = vb.v + dt * vb.F/vb.m;
    drum.v = drum.v + dt * drum.F/drum.m;
    
    tt = mod(t, 4/7);
    if tt < 0.1
        F_norm = -(drum.m*L/(n*drum.h)) * (g - a1);
    else
        F_norm = -(drum.m*L/(n*drum.h)) * (g + a2);
    end
    F = 0;
    for i=1:n
        F = F + normrnd(F_norm, 10);
    end
    drum.F = -g*drum.m - F*drum.h/L;
    
    subplot(1,2,1);
    plot(t, drum.h, 'b.');grid on; hold on
    plot(t, vb.h, 'g.');grid on; hold on
    subplot(1,2,2);plot(t, drum.v, 'r*');grid on; hold on
end