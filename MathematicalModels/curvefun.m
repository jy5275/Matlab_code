function f = curvefun(x, t)
    % 曲线拟合函数
    % Usage: x = lsqcurvefit('curvefun', x0, t, c)
    % x0是初始解向量
    f = x(1) + x(2) * exp(-0.02 * x(3) * t);
end

