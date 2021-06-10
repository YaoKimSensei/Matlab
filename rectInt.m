function fx=rectInt(fun,a,b,n)
h=(b-a)/n;
sum=0;

for i=a:h:(b-h) 
height=feval(fun,(i+i+h)/2);
sum = sum + height;
area([i i+h],[height height]);
end
fx=h*sum;
end
