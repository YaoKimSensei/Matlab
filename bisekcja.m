clc
clear all
close all

a=0;
b=1;
delta = 0.000001;
fa=podana(a);
fb=podana(b);

fplot(@podana, [a b]);
line([0 0], ylim, "color", "k");
line(xlim, [0 0], "color", "k");
%ylim([-10 10]);  %%% Zoom na wykresie


if fa*fb<0
    x1=(a+b)/2;
    fx1=podana(x1);
    while abs(fx1)>delta
        if fa*fx1<0
            mid = (a+x1)/2;
            b=x1;
            fb=podana(b);
            x1 = mid;
            fx1=podana(x1);
        elseif fx1*fb<0
            mid=(x1+b)/2;
            a=x1;
            fa=podana(a);
            x1=mid;
            fx1=podana(x1);

        end
    end
    x1
    fx1=podana(x1)
else
    disp('funkcja nie ma miejsc zerowych w danym przedziale [a,b]')

end