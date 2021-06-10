function result = funPoiss(xi,lambda)
    result = (lambda.^xi.*exp(-lambda))./factorial(xi);
end