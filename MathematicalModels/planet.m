classdef planet
    % 星球类,由此生成Earth,moon,sun
    % 此处显示详细说明
    properties
        mass;
        position;
        velocity;
    end
    methods
        function obj = planet(m_, P_, V_)
            obj.mass = m_;
            obj.velocity = V_;
            obj.position = P_;
        end
    end
end

