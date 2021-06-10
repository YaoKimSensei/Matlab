function fx = centbis(fun,x)
fx= (feval(fun,(x+0.001))-2*feval(fun,x)+feval(fun,(x-0.001)))/0.001^2;
end