function result = funPoiss3(xi)
lambda = 1.8;
    result = (lambda.^xi.*exp(-lambda))./factorial(xi);
end