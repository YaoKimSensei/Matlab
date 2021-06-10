function result=funRozNor(x,mu,sigma)
result=exp(-((x-mu).^2)/(2*sigma^2))/(sigma*sqrt(2*pi));
end