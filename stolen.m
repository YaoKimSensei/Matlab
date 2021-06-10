x1=[90; 87; 93; 96; 94; 88; 90; 84; 101; 96; 90; 82; 93; 90; 96; 87; 99; 101; 79; 98];
x2=[88; 90; 97; 87; 90; 96; 90; 90; 100; 93; 95; 86; 89; 92; 98; 95; 102; 105; 85; 97];
x3=[95; 95; 89; 98; 96; 81; 92; 79; 105; 98; 92; 85; 97; 90; 87; 90; 101; 100; 84; 102];
X=[x1 x2 x3];
% figure
% boxplot(X)
k=4;
[N1,edges1]=histcounts(x3,k)
figure
h=histogram(x3,k)
l=h.BinWidth
xi1=[edges1(1)-l/2 edges1+l/2];
ni1=[0 N1 0];
hold on
plot(xi1,ni1,'rx-')

figure
[N2,edges2]=histcounts(x3,k,'Normalization','cumcount');
h1=histogram(x3,k,'Normalization','cumcount')
l=h1.BinWidth
xi2=edges2
ni2=[0 N2];
hold on
plot(xi2,ni2,'mx-')
boxplot(x3,'orientation','horizontal')
ylim([0 20]);

figure
[N3,edges3]=histcounts(x3,k,'Normalization','probability');
h2=histogram(x3,k,'Normalization','probability')
l=h2.BinWidth
xi2=[edges3(1)-l/2 edges3+l/2];
ni3=[0 N3 0];
hold on
plot(xi2,ni3,'gx-')

figure
[N4,edges4]=histcounts(x3,k,'Normalization','cdf');
h3=histogram(x3,k,'Normalization','cdf')
l=h3.BinWidth
xi4=edges4
ni4=[0 N4];
hold on
plot(xi4,ni4,'bx-')