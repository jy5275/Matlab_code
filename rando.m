%ÕýÌ¬·Ö²¼²âÊÔ
for i=0:32
    x = normrnd(65, 4);
    y = mod(rand(),0.1);
    plot(x, y, 'b.'); grid on; hold on
end