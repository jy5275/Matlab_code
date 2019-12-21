%Ideal growth pattern of stromatolites driven by heliotropism
t=0:0.1:360; % Celestial longitude
k=input('k='); % Obliquity of ecliptic
sita=asind(sind(k).*sind(t+90)); % Sun declination
Df=tand(sita);
for i=1:length(t)-1 
    qj=0:0.1:i/10;
    bj=Df(1:length(qj));
    f(i)=trapz(qj,bj);
end
f(2:length(t))=f(1:length(t)-1);
plot(t,f); grid on; hold on;
y1=max(f)*sind(t); plot(t,y1); hold on;
delta=abs(y1-f); plot(t,10*delta); hold on;
xlabel('Celestial longitude');
legend('Growth Pattern','Sine','10*жд');