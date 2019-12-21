%种群竞争模型：应用于产品销售角力
h = 0.1;%所取时间点间隔
ts = 0:h:30;    %时间区间
x0 = [0.1,0.1];     %种群初始数目【改】
opt = odeset('reltol',1e-6,'abstol',1e-9);%相对误差1e-6，绝对误差1e-9
[t,x] = ode45(@fun,ts,x0,opt);  %使用5级4阶龙格—库塔公式计算
plot(t,x(:,1),'r', t,x(:,2),'b','LineWidth',2),grid;
axis([-inf,inf,0,inf]);
pause;
plot(x( :,1),x(:,2),'LineWidth',2),grid  %作相轨线