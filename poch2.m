function dp = poch2(fun,x,h)
dp =(feval(fun,x+h)-2*feval(fun,x)+feval(fun,x-h))/(h^2);
end