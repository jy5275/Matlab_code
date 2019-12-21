% 简单线性规划linprog
% https://jingyan.baidu.com/album/8065f87fbc11682330249843.html?picindex=4
f = [-2,-3];     % f(X)=fX,ObjFunc系数向量
A = [1 2;];     %'<='约束条件系数矩阵
b = [8;];   % '<='约束条件右值
lb = zeros(2,1);    % 自变量lower_bound约束
ub = [4 3];
Aeq = [];           % '='约束条件系数矩阵
beq = [];           % '='约束条件右值
[x,fval, exitflag, output, lambda] = linprog(f,A,b,Aeq,beq,lb,ub)
%disp(output);