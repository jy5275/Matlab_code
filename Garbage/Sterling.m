for i=1:100
    y1(i)=log(prod(1:i));
    y2(i)=log((i/2.718)^i);
end
plot(i,y1);hold on;plot(i,y2);
