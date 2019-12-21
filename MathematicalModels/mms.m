% 排队模型-mms(顾客-服务者)
s = 3;          % 服务者数目【改】
mu = 24;        % 每小时服务mu个人【改】
lambda = 54;    % 平均每小时来lambda人【改】
ro=lambda/mu;   % 服务强度(必须<1)
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

fprintf('排队等待的平均人数Lqueue为%5.2f人\n',Lq)
fprintf('系统内的平均人数Lservice为%5.2f人\n',L)
fprintf('平均逗留时间Wservice为%5.2f分钟\n',W*60)
fprintf('平均等待时间Wqueue为%5.2f分种\n',Wq*60)