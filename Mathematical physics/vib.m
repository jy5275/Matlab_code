%两个振动的叠加
t=0:0.001:10;
A1=input('Amplitude_1=');
w1=input('Frequncy_1=');
A2=input('Amplitude_2=');
w2=input('Frequncy_2=');
y1=A1*cos(w1*t);y2=A1*cos(w2*t);y=y1+y2;
subplot(3,1,1),plot(t,y1),ylabel('y1');grid on;hold on;
subplot(3,1,2),plot(t,y2),ylabel('y2');grid on;hold on;
subplot(3,1,3),plot(t,y,'b'),ylabel('y');grid on;hold on;

