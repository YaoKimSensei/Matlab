function fx = simpInt(fun,a,b,n)
if mod(n,2)==0
    h=(b-a)/n;
    sum=0;
    for i=1:n/2
        x_2i=a+2*i*h-h;
        f1= feval(fun,(x_2i-h));
        f2= feval(fun,(x_2i));
        f3= feval(fun,(x_2i+h));
        sum=sum+f1+4*f2+f3;
    end
    fx=(h/3)*sum;   
else
    disp('Nie mozna simpsonem')
    fx=0;
end
end