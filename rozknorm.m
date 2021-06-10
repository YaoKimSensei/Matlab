x = [-3:0.1:3];
fx=1./sqrt(2*pi)*exp(-(x.^2).^2);
figure 
hold on
plot(x,fx)
line(xlim,[0 0])
line([0 0], ylim)

