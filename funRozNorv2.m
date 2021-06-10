function result=funRozNorv2(x)
mu=5; sigma=3;
result=exp(-((x-mu).^2)/(2*sigma^2))/(sigma*sqrt(2*pi));
end