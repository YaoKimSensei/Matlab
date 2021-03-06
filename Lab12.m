close all
clear all
clc
    %% Przyklad 7 | Rozklad Normalny
% j=25;
% s=rng(j);
% mu=5;
% sigma=3;
% n=100;
% 
% R1=normrnd(mu,sigma,1,n);
% x=mu-3*sigma:0.001:mu+3*sigma;
% 
% xar=sum(R1)/n
% 
% StarVar=1/(n-1)*sum((R1-xar).^2)
% StarS=sqrt(StarVar)*sqrt(n/(n-1))
% 
% k=8;
% % [N5,edges5] = histcounts(x,k,'Normalization','pdf');
% 
% figure
% hold on
% grid on
% 
% histogram(R1,k,'Normalization','pdf');
% 
% fodiks=funRozNor(x,mu,sigma);
% plot(x,fodiks)
% 
% fodiks1=funRozNor(x,xar,StarS);
% plot(x,fodiks1,"Linewidth",2)
% 
% figure 
% hold on 
% grid on
% 
% histogram(R1,k,'Normalization','cdf')
% 
% for i=1:length(x)
%     F1(i)= trapInt('funRozNorv2',mu-3*sigma,x(i),10);
% end
% plot(x,F1)
% 
% for i=1:length(x)
%     F2(i)= trapInt('funRozNorv3',mu-3*sigma,x(i),10);
% end
% plot(x,F2,"Linewidth",2)

%% Przyklad 8 |
j=25;
n=100;
k=8;
s=rng(j);
%% Wykladniczy
% mu=2;
% x=0:0.001:10;
% R2=exprnd(mu,1,n);
% xarWyk=sum(R2)/n;
% 
% WykStarVar=1/(n-1)*sum((R2-xarWyk).^2)
% WykStarS=sqrt(WykStarVar)*sqrt(n/(n-1))
% 
% fExp=funRozWyk(x,mu);
% fExp1=funRozWyk(x,xarWyk);
% 
% figure('Name','Exponential')
% hold on 
% grid on
% 
% histogram(R2,k,'Normalization','pdf')
% plot(x,fExp)
% plot(x,fExp1,"Linewidth",2)
% legend('histogram pdf','pdf teoretyczne','pdf estymowane')
% 
% figure 
% hold on
% grid on 
% x=0:0.001:10;
% histogram(R2,k,'Normalization','cdf')
% for i=1:length(x)
%     Fwyk1(i)=trapInt('funRozWyk2',0,x(i),10);
% end
% plot(x,Fwyk1);
% 
% for i=1:length(x)
%     Fwyk2(i)=trapInt('funRozWyk3',0,x(i),10);
% end
% plot(x,Fwyk2,"Linewidth",2);
% 
% legend('histogram cdf','cdf teoretyczne','cdf estymowane')
 

 %% Bino
% N=15;
% p=0.75;
% x=0:N;
% 
% R3=binornd(N,p,1,n);
% xarBino=sum(R3)/n;
% 
% BinoStarVar=1/(n-1)*sum((R3-xarBino).^2)
% BinoStarS=sqrt(BinoStarVar)*sqrt(n/(n-1))
% 
% figure('Name','Binomial') 
% hold on 
% grid on 
% 
% histogram(R3,k,'Normalization','pdf');
% 
% fBino1=funBino(x,N,p);
% plot(x,fBino1,'x')
% 
% fBino2=funBino(x,N,xarBino/N);
% plot(x,fBino2,'+')
% 
% figure 
% hold on
% grid on 
% 
% Fbin1(1)=fBino1(1);
% histogram(R3,k,'Normalization','cdf')
% for i=1:length(x)
%     Fbin1(i)=sum(fBino1(1:i));
% end
% 
% % plot(x,Fbin1);
% stairs(x,Fbin1);
% 
% Fbin2(1)=fBino2(1);
% for i=1:length(x)
%     Fbin2(i)=sum(fBino2(1:i));
% end
% % plot(x,Fbin2,"Linewidth",2);
% stairs(x,Fbin2,"Linewidth",2);
% legend('histogram cdf','cdf teoretyczne','cdf estymowane')


 %% Poisson
lambda=2;
x=0:50;

R4=poissrnd(lambda,1,n);
xarPoiss=sum(R4)/n;

PoissStarVar=1/(n-1)*sum((R4-xarPoiss).^2)
PoissStarS=sqrt(PoissStarVar)*sqrt(n/(n-1))

figure('Name','Poisson')
hold on 
grid on 

histogram(R4,k,'Normalization','pdf');

fPoiss1=funPoiss(x,lambda);
plot(x,fPoiss1)

fPoiss2=funPoiss(x,xarPoiss);
plot(x,fPoiss2,"Linewidth",2)

figure 
hold on
grid on 

histogram(R4,k,'Normalization','cdf')
Fpoiss2(1)=fPoiss1(1);
for i=1:length(x)
    Fpoiss2(i)=sum(fPoiss1(1:i));
end
plot(x,Fpoiss2);

Fpoiss3(1)=fPoiss2(1);
for i=1:length(x)
    Fpoiss3(i)=sum(fPoiss2(1:i));
end
plot(x,Fpoiss3,"Linewidth",2);

