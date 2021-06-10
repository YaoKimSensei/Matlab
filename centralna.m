function result = centralna(fun,x)
h=0.001;
result = (feval(fun,(x+h))-feval(fun,(x-h)))./(2*h);
end
