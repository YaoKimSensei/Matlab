function fx= trapInt(fun,a,b,n)
h=(b-a)/n;
sum=0;
for i=a:h:(b-h)
    sum=sum+feval(fun,i)+feval(fun,i+h);
%     area([i,i+h],[feval(fun,i),feval(fun,i+h)]);
end
 fx=(h/2)*sum;
end