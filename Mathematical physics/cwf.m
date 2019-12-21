function dy = cwf( t,x )
% D2y + 0.1*Dy + 12* = cos(t)
% y = x(1)  z = x(2)
dy=zeros(2,1);
dy(1)=x(2)
dy(2)=cos(t)-0.5*x(2)-50*x^2;

end

