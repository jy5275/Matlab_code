% �����Թ滮linprog
% https://jingyan.baidu.com/album/8065f87fbc11682330249843.html?picindex=4
f = [-2,-3];     % f(X)=fX,ObjFuncϵ������
A = [1 2;];     %'<='Լ������ϵ������
b = [8;];   % '<='Լ��������ֵ
lb = zeros(2,1);    % �Ա���lower_boundԼ��
ub = [4 3];
Aeq = [];           % '='Լ������ϵ������
beq = [];           % '='Լ��������ֵ
[x,fval, exitflag, output, lambda] = linprog(f,A,b,Aeq,beq,lb,ub)
%disp(output);