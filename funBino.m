function result = funBino(x,N,p)
    result=(factorial(N)./(factorial(x).*factorial(N-x))).*p.^x.*(1-p).^(N-x);
end