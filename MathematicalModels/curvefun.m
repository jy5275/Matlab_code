function f = curvefun(x, t)
    % ������Ϻ���
    % Usage: x = lsqcurvefit('curvefun', x0, t, c)
    % x0�ǳ�ʼ������
    f = x(1) + x(2) * exp(-0.02 * x(3) * t);
end

