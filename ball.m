classdef ball
    % ≈≈«Ú¿‡
    properties
        m;
        h;
        v;
        F;
    end
    methods
        function obj = ball(m_, h_, v_, F_)
            obj.m = m_;
            obj.v = v_;
            obj.h = h_;
            obj.F = F_;
        end
    end
end

