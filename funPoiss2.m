function result = funPoiss2(xi)
lambda = 2;
    result = (lambda.^xi.*exp(-lambda))./factorial(xi);
end