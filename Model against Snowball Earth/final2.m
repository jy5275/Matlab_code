%���������ϵ���
clear;t=-180:0.1:180; q=zeros(1,90); tq=zeros(1,90); k=input('k=');
for d=0:359   %d��̫���ƾ�����������ʼ�㣩
    del=asind(sind(k).*sind(d-90)); % del(��)��̫����γ
    for fi=0:89   %fi�ǵ���γ��-1��
        if abs(-tand(del)*tand(fi))<=1  %������ճ�����
            t2=acosd(-tand(del)*tand(fi));  t1=-t2;  %t1�ճ���t2���䣨ʱ�ǣ�
            t=t1:0.1:t2;
            W=100*abs(t.*sind(del).*sind(fi)+sind(t).*cosd(del).*cosd(fi));%˲ʱ����ֵ
            q(fi+1)=trapz(t,W);  %��W������t�����ϵĻ��֣��ø�γ�ȵ����ۼƷ�����
            tq(fi+1)=tq(fi+1)+q(fi+1); %��γ�ȵ�ǰ���ۼƷ�����
        else  %û���ճ�
            W=100*abs(t.*sind(del).*sind(fi)+sind(t).*cosd(del).*cosd(fi));
            q(fi+1)=trapz(t,W);
            if del*fi<0  %��ҹ
                q(fi+1)=0;
            end
            tq(fi+1)=tq(fi+1)+q(fi+1);
        end
    end
end
plot(0:89,tq,'.');  %axis([0,90,0,14000]);
grid on; hold on;