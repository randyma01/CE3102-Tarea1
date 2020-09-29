ter=5;
x=0:0.1:3*pi;
y=0;
for k=0:(ter-1)
 y=y+((-1)^k)*x.^(k+1)/factorial(2*k);
end
plot(x,x.*cos(sqrt(x)),x,y)