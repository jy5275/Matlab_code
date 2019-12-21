%ÂåÂ××È±ä»»
t=input('t='); 
for v=-0.8:0.01:0.8
 %subplot(3,3,v/(0.1));
 %v=input('v=')*3*10^8; 
 v=v*3*10^8;c=3*10^8;
 x=0;
 beta=v./c;alf=(1-beta.^2).^(-1/2);
 A=((alf)*[1 -v;-v/(c^2) 1]);
 fin=A*([x,t]'); x1=fin(1); t1=fin(2);
 plot([0,t],[0,x],'b');hold on;
 plot([0,t1],[0,x1],'r');
 grid on;hold on;
end