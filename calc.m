% ���������
i=0; h=0.11; l=1.7; L=0;  % h�ǳ�ʼ���ĸ߶�, l������, L�ǽǶ���
I=0.0253595;   % ת������
t=acosd(h/l);  % ����������ֱ�߼н�
A=zeros(8,3); r=zeros(8,3); Fs=zeros(1,3);
% A(i)��i����������r(i)��i�ŷ�����λ������
f90 = [1 4]; % ���޸ġ�90N���ı��
f80 = [];    % ���޸ġ�80N���ı��
% L =[0.0108, -0.0045, 0];  % ���޸ġ��̳���һ�׶νǶ���,���������2���õ�
for deg = 0:45:359
    i = i+1;
    if ismember(i, f90) 
        F = 90;
    elseif ismember(i, f80)
        F = 80;
    else        % ���޸ġ�����������С,��һ�׶���68.1545,�ڶ��׶���80
        F = 80;
    end
    A(i,:) = [F*sind(t)*cosd(deg), F*sind(t)*sind(deg), F*cosd(t)];
    r(i,:) = [0.2*cosd(deg), 0.2*sind(deg), 0];
    L = L + cross(A(i,:), r(i,:))*0.1;  % ÿ�����ض��ԽǶ���L�й��ף��ۼ�����
    Fs = Fs + A(i,:);
end
w = L/I     % ���ٶ�����
w_abs = norm(L)/I   % ���ٶ�ģ��