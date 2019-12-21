% �Ŷ�ģ��-mms(�˿�-������)
s = 3;          % ��������Ŀ���ġ�
mu = 24;        % ÿСʱ����mu���ˡ��ġ�
lambda = 54;    % ƽ��ÿСʱ��lambda�ˡ��ġ�
ro=lambda/mu;   % ����ǿ��(����<1)
ros=ro/s;
sum1=0;

for i=0:(s-1)
    sum1=sum1+ro.^i/factorial(i);
end

sum2=ro.^s/factorial(s)/(1-ros);
p0=1/(sum1+sum2);
p=ro.^s.*p0/factorial(s)/(1-ros);
Lq=p.*ros/(1-ros);
L=Lq+ro;
W=L/lambda;
Wq=Lq/lambda;

fprintf('�Ŷӵȴ���ƽ������LqueueΪ%5.2f��\n',Lq)
fprintf('ϵͳ�ڵ�ƽ������LserviceΪ%5.2f��\n',L)
fprintf('ƽ������ʱ��WserviceΪ%5.2f����\n',W*60)
fprintf('ƽ���ȴ�ʱ��WqueueΪ%5.2f����\n',Wq*60)