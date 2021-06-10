function result=funRozNorv3(x)
mu=4.8713; sigma=2.7310;
result=exp(-((x-mu).^2)/(2*sigma^2))/(sigma*sqrt(2*pi));
end