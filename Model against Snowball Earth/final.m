%�ռ�Boss
clear;t=-180:0.1:180; %ʱ�� 
q=zeros(1,90); tq=zeros(1,90); k=input('k='); %dd=input('huangjing=');
for v=0:359   %v��true anomaly����������ʼ�㣩�����������Բ������ʱ�佫���������Ա仯
%    if d~=dd  
%        continue;
%    end
    del=asind(sind(k).*sind(v-90)); % del(��)��̫����γ
    for fi=0:89   %fi�ǵ���γ��-1��
        if abs(-tand(del)*tand(fi))<=1  %������ճ�����
            t2=acosd(-tand(del)*tand(fi));  t1=-t2;  %t1�ճ���t2���䣨ʱ�ǣ�
            t=t1:0.1:t2;
            P=100*abs(sind(del)*sind(fi)+cosd(del).*cosd(fi).*cosd(t));%˲ʱ����ֵ
            q(fi+1)=trapz(t,P);  %��P������t�����ϵĻ��֣��ø�γ�ȵ����ۼƷ�����
            tq(fi+1)=tq(fi+1)+q(fi+1); %��γ�ȵ�ǰ���ۼƷ�����
        else  %û���ճ�
            P=100*abs(sind(del)*sind(fi)+cosd(del).*cosd(fi).*cosd(t));
            q(fi+1)=trapz(t,P);
            if del*fi<0  %��ҹ
                q(fi+1)=0;
            end
            tq(fi+1)=tq(fi+1)+q(fi+1);
        end
    end
end
%subplot(2,2,4);
plot(0:89,tq,'.');xlabel('Latitude(��)');ylabel('Annual solar radiation (unit)');
grid on; hold on; title('Annual solar radiation vs. latitude');