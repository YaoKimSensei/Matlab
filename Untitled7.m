clear all
close all
clc

a=5;
b=10;

x = a:0.001:b;
delta = 0.00001;

y=zad7(x);
r_centralna = centralna('zad7',x);
dr_centralna = druga_centralna('zad7',x);

figure 
hold on
grid on

plot(x,y);
plot(x,r_centralna);
plot(x,dr_centralna);

yline(0);
xlim([a,b]);

% bisekcja 
bfa = zad7(a);
ba=a;
bfb = zad7(b);
bb=b;
bisekcja=0;

if bfa*bfb<0
    figure
    hold on
    yline(0);
    xlim([a b]);
    
    bx=(bb-ba)/2;
    bfx=zad7(bx);
    plot(x,y,'b','linewidth',2)
    plot(bx,0,'+','markersize',4)
    while abs(bfx)>delta
        if bfa*bfx<0
            bb=bx;
            fbb=zad7(bb);
        elseif bfx*bfb<0
            ba=bx;
            fba=zad7(ba);
        end
        bx=(bb+ba)/2;
        bfx=zad7(bx);
        bisekcja= bisekcja+1;
        plot(bx,0,'+','markersize',bisekcja+8)
    end
    bx
    bfx
    plot(bx,0,'+','markersize',bisekcja+8)
else
    disp('cannot compile');
end

% newton 






