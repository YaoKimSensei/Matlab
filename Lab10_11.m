clear all
close all
clc
%% Przyklad 2
v1=50; v2=60; v3=70;
V=3/(1/v1+1/v2+1/v3);
%% Przyklad 3
a1=15; a2=21; a3=33; a4=45;
A=sqrt((1/4)*(a1^2+a2^2+a3^2+a4^2));
%% Przyklad 1
%x=[90,87,93,96,94,88,90,84,101,96,90,82,93,90,96,87,99,101,79,98];
%x=[95,95,89,98,96,81,92,79,105,98,92,85,97,90,87,90,101,100,84,102];
% x=[88,90,97,87,90,96,90,90,100,93,95,86,89,92,98,95,102,105,85,97];
sx=sort(x);
Y=quantile(sx,[0.25 0.5, 0.75])
histogram(sx,'Normalization','probability')
figure
boxplot(sx,'whisker',0.5,'orientation','horizontal')

w=1.5;

%% Przyklad 4
xar=sum(x)/length(x)
g=prod(x)^(1/length(x))
h=length(x)/(sum(1./x))
p_r=(1/length(x)*(sum(x.^1)))^(1/1)

%% Przyklad 5
Var=((1/length(x)*(sum(x.^2)))^(1/2))^2-xar^2
s=sqrt(Var)
elementy= x>xar-s & x<xar+s;
Zakres_Elementow_Typowych=x(elementy)
V_s=(s/xar)*100
Rozstep=sx(length(sx))-sx(1)
IQR=Y(3)-Y(1)
Q=IQR/2
elementyTypowe= x>Y(2)-Q & x<Y(2)+Q;
Elementy_typowe=x(elementyTypowe)
V_Q=(Q/Y(2))*100
