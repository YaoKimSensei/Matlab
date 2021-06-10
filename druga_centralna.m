function result = druga_centralna(fun,x)
h=0.001;
result = (feval(fun,x+h)-2.*feval(fun, x)+feval(fun, x-h))./(h^2);
end