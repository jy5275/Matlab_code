% Ek as a function of v under special relativity
clear; range=input('range\=')*3*10^8; v=0:1000:range; c=3*10^8;
beta=v./c;
m=(1-beta.^2).^(-1/2);
Ek=m.*(c^2)-c^2;
subplot(1,2,1);plot(v,Ek);grid on;hold on;
xlabel('velocity');ylabel('Kinetic Energe');
Ek0=1/2*v.^2;
plot(v,Ek0);grid on; hold on;
legend('Special Relativity','Newtonian');
delta=abs(Ek0-Ek)./Ek;
subplot(1,2,2); plot(v,delta);grid on; hold on;
axis([0,range,0,1]); title('Relative Error');