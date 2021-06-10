close all
clear all
clc 

a=5;
b=10;
delta=0.00001; 
x=a:0.001:b;

y=podana(x);
cent1=centdx('podana',x);
cent2=centbis('podana',x);
%% Pochodne centralne
figure
hold on
plot(x,y);
yline(0);
xlim([a,b])

plot(x,cent1);
plot(x,cent2);

%% Bisekcja
figure
hold on
plot(x,y);
yline(0);
xlim([a,b])

xb=a;
xb1=b;
fxb=podana(xb);
fxb1=podana(xb1);
ile_bisekcja=0;

if fxb*fxb1<0
    mid=(fxb+fxb1)/2;
    fmid=podana(mid);

    while abs(fmid)>delta
        if fxb*fmid<0
            xb1=mid;
            fxb1=podana(xb1);
        elseif fmid*fxb1<0
            xb=mid;
            fxb=podana(xb);
        end
        mid=(xb+xb1)/2;
        fmid=podana(mid);
        ile_bisekcja=ile_bisekcja+1;
            plot(mid,0,'x','markersize',ile_bisekcja+8)
        
    end
    mid
    ile_bisekcja
        plot(mid,0,'o','markersize',ile_bisekcja+8)
else
    disp('NIE MOZNA BISEKCJA')
end

%% Newton 
figure
hold on
plot(x,y);
yline(0);
xlim([a,b])

minmax=max(abs(cent2))/(2*min(abs(cent1)));
ile_newton=0;
if podana(a)*podana(b)<0
    xn=b;
    xn1=xn-podana(xn)/dx('podana',xn);
    while minmax*(xn1-xn)^2>delta
    xn=xn1;
    pnew=dx('podana',xn);
    
    styczna=pnew*x+podana(xn)-pnew*xn;
    xn1=xn-podana(xn)/pnew;
    
    ile_newton=ile_newton+1;
        plot(xn,0,'x','markersize',ile_newton+8)
        plot(xn1,styczna,'LineWidth',ile_newton+8)
    end
    xn1
    ile_newton
else
    disp('NIE MOZNA NEWTONEM')
end