classdef planet
    % ������,�ɴ�����Earth,moon,sun
    % �˴���ʾ��ϸ˵��
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

