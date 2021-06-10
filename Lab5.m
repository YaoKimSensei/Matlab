clear all 
close all 
clc

delta = 0.000001;   %%% precyzja

%%% a)[0 1], b)[0 pi/2], c)[1 3], d)[1 2] 2)[5 10]
x0=2;               
x1=3;

fplot(@podana, [x0 x1]);
line([0 0], ylim, "color", "k");
line(xlim, [0 0], "color", "k");
%ylim([-1 1]);  %%% Zoom na wykresie

%%% Kryteria metody Newtona
if podana(x0)*podana(x1) < 0
    
%%% 1. Przyblizenie |f(x)| <= delta
    funabs(x0,x1,delta);

%%% 2. Przyblizenie |x_k+1 - x_k| <= delta
    
    subAbs(x0,x1,delta);
    
%%% 3. Przyblizenie Max/min <= delta

    minmax(x0,x1,delta);
else
disp ('Nie mozna wyliczyc metoda Newtona')
end