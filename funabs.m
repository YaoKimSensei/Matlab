function [funabs_a, funabs_b] = funabs(x0,x1,delta)

while (abs(podana(x0))>=delta)
    xa=x0 - podana(x0)./dx(x0);
    x0=xa;
end
    funabs_a = xa
    
while (abs(podana(x1))>=delta)
    xb=x1 - podana(x1)./dx(x1);
    x1=xb;
end
    funabs_b = xb
end