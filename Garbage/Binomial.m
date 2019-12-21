clear;
p = input('p=');n=input('n=');
for k=1:n
    P(k) = nchoosek(n,k).*(p^k).*(1-p).^(n-k);
end
plot(1:n,P);grid on;hold on;
title('Binomial Distribution');xlabel('X');ylabel('P');
clear;
p=