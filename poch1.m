function pp = poch1(fun,x,h)
pp=(feval(fun,x+h)-feval(fun,x-h))/(2*h);
end
