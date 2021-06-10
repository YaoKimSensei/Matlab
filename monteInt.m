function result = monteInt(fun,a,b,n)
x0=a+(b-a)*rand(1,n);
h=(b-a)/n;
result=h*sum(feval(fun,(x0)));
end