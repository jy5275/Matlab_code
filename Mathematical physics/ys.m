pi=3.1415927; %���ź̷�����
a=input('a=?��m'); %������
lam=input('lam=?nm');  %�Ⲩ����
lam=lam*10^(-9);  a=a*10^(-6);
sita=-pi/20:pi/10000:pi/20;  %�������Ƕ�
sinsita=sin(sita);
alf=pi.*a.*sinsita./lam; %��������alf���൱�����䵽sita����λ��λ���һ��
I=((sin(alf)).^2)./(alf.^2);  %��ǿ��sita��sin(sita)�ķֲ�
plot(sinsita,I);grid on;hold on; 