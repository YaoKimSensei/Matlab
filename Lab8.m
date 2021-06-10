clear all
close all
clc

a=0;
b=10;
n=10;
x=[a b];

%%
fplot(@podana,x)
grid on
line(xlim,[0 0]);
line([0 0],ylim);
xlim([a b]);

check=integral(@podana,a,b)
%%
figure
hold on
grid on
line(xlim,[0 0]);
line([0 0],ylim);
xlim([a b]);

rect=rectInt('podana',a,b,n)
fplot(@podana,x)
%%
figure
hold on
grid on
line(xlim,[0 0]);
line([0 0],ylim);
xlim([a b]);

trap=trapInt('podana',a,b,n)
fplot(@podana,x)
%%
simp=simpInt('podana',a,b,n)
%%
MONTE=monteInt('podana',a,b,n)
