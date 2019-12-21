%输入频率与阻尼系数，输出振动模式，不考虑边界条件
clear; w0=input('w0='); b=input('b=');
t=0:0.01:100; subplot(1,1,1);
if b==0
  w1=w0; y=cos(w1.*t); plot(t,y);grid on; hold on;axis([0 100 -1.4 1.4]);
  title('Simple harmonic vibration')
elseif w0>b
  w1=sqrt(w0^2-b^2); y=cos(w1.*t).*exp(-b.*t); plot(t,y);grid on; hold on;axis([0 100 -1.4 1.4]);
  title('Underdamping vibration')
elseif w0==b
  y=(1+2.*t).*exp(-b.*t); plot(t,y);grid on; hold on;axis([0 100 -1.4 1.4]);
  title('Damping vibration')
else
  w1=sqrt(b^2-w0^2); y=0.6*exp(-(b+w1).*t)+0.8*exp(-(b-w1).*t); plot(t,y);grid on; hold on;axis([0 100 -1.4 1.4]);
  title('Overdamping vibration')
end
xlabel('t/s'); ylabel('x/m');
legend('w0=? b=?'); text(40,0.1,'\downarrow 弱阻尼'); hold on;