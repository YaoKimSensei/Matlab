function [minmax_a, minmax_b]=minmax(x0,x1,delta)
M= max(abs(dxbis([x0 x1])));
m= min(abs(dx([x0 x1])));

xe=x0 - podana(x0)./dx(x0);
while (M/2*m) * (xe-x0).^2 >= delta
    x0=xe;
    xe=x0 - podana(x0)./dx(x0);
end
minmax_a = xe

xf=x1 - podana(x1)./dx(x1);
while (M/2*m) * (xf-x1).^2 >= delta
    x1=xf;
    xf=x1 - podana(x1)./dx(x1);
end
minmax_b = xf
end