function fx = dxbis(fun,x)
fx = (feval(fun,(x+0.001))-feval(fun,x))/0.001;
end
