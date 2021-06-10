function [subAbs_a, subAbs_b] = subAbs(x0,x1,delta)

xc=x0 - podana(x0)./dx(x0);
while (abs(xc-x0)>=delta)
    x0=xc;
    xc=x0 - podana(x0)./dx(x0);
end
    subAbs_a=xc
    
xd=x1 - podana(x1)./dx(x1);
while (abs(xd-x1)>=delta)
    x1=xd;
    xd=x1 - podana(x1)./dx(x1);
end
    subAbs_b=xd

end