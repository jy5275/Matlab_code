%Given obliquity£¬Ì«Ñô³àÎ³ vs.Ì«Ñô»Æ¾­
t=0:0.1:360;
k=input('k=');%»Æ³à½»½Ç
fi1=asind(cosd(t)./(sind(k)+cosd(k)/tand(k))); %Ì«Ñô³àÎ³
fi=asind(sind(k).*sind(t+90));
plot(t,fi);grid on;hold on;
plot(t,fi1);legend('fi','fi1');