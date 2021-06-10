clear all
close all
clc

x3=[95; 95 ;89; 98 ;96; 81 ;92 ;79 ;105 ;98; 92 ;85; 97 ;90; 87; 90 ;101; 100 ;84 ;102];
x2=[88; 90 ;97 ;87 ;90; 96; 90; 90; 100; 93; 95; 86 ;89; 92; 98 ;95; 102 ;105 ;85 ;97];
x1=[90; 87; 93 ;96; 94; 88 ;90; 84; 101 ;96; 90;82; 93 ;90 ;96 ;87 ;99; 101 ;79; 98];
k=4;
X=[x1 x2 x3];
n=length(x3);
[N1,edges1] = histcounts(x3,k)
h=histogram(x3,k)
l=h.BinWidth
xil=[edges1(1)-1/2 edges1+1/2];
nil=[0 N1 0];
figure
plot(xil,nil,'rx-')


[N2,edges2]=histcounts(x3,k,'Normalization','cumcount')
figure
hold on
h2=histogram(x3,k,'normalization','cumcount')
xi2=edges2;
ni2=[0 N2];
plot(xi2,ni2,'cx-')
boxplot(x3,'orientation','Horizontal');
plot(edges2, 0.25*n,'color','g');
ylim([0 20])


[N3,edges3] = histcounts(x3,k,'Normalization','probability')
figure
hold on
h3=histogram(x3,k,'normalization','probability')
xi3=[edges3(1)-1/2 edges3+1/2];
ni3=[0 N3 0];
plot(xi3,ni3,'gx-')


[N4,edges4] = histcounts(x3,k,'Normalization','cdf')
figure
hold on
h4=histogram(x3,k,'normalization','cdf')
xi4=edges4;
ni4=[0 N4];
plot(xi4,ni4,'bx-')

