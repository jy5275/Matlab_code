%��դ����500nm
clear;pi=3.1415927; 
a=input('a=?��m')*10^(-6); %������
d=input('d=?��m')*10^(-6); %������������
b=d-a; %��͸�����ֿ��
N=input('N='); %������Ŀ
lam=500;  lam=lam*10^(-9); %����
sita=-pi/2:pi/10000:pi/2;  %�������Ƕ�
sinsita=sin(sita);
alf=pi.*b.*sinsita./lam; %��������alf���൱�����䵽sita����λ��λ���һ��
beta=d.*pi.*sinsita./lam;
I=((sin(alf)).^2)./(alf.^2).*( (sin(N.*beta)).^2./(sin(beta)).^2 );
subplot(2,2,2);  plot(sinsita,((sin(alf)).^2)./(alf.^2)); %����������ͼgs
ylabel('��������');  xlabel('sin��,sin��=k*��/bȡ�ü���ֵ');  grid on; %sin��=k*��/bȡ�ü���ֵ
subplot(2,2,1);  plot(sinsita,(sin(N.*beta)).^2./(sin(beta)).^2);%����������ͼ
ylabel('��������');  grid on;  xlabel('sin��,sin��=k*��/dȡ�ü���ֵ'); %sin��=k*��/dȡ�ü���ֵ
subplot(2,2,3);  plot(sinsita,I);  grid on;  hold on;  xlabel('sin��');  ylabel('I');
%subplot(2,2,3);  plot(sita,I,'r');  hold on;  grid on;  %��sitaΪ�����ԶԱ�deviation