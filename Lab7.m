clear all
close all
clc

 %narysowac wykres funkcji, pochodnej i drugiej pochodnej

%%% WYKRES
h=0.001;
delta = 0.000001;
x = (0.5:0.01:1);
y=podana(x);
pochp=poch1('podana',x,h);
pochd=poch2('podana',x,h);

figure
plot(x,y);
hold on
plot(x,pochp,'m');
plot(x,pochd,'g');

xL=xlim;
yL=ylim;
line([0 0],yL)
line(xL,[0 0])
xlim([0.5 1])
ylim([-5 15])
a=1/2;
b=1;
fa = podana(a);
fb = podana(b);

if fa*fb<0
    x1=(a+b)/2;
    
        figure;
        
        hold on;
        plot(x, x.^0-1,'k')
        plot(x.^0-1,x,'k')
        xlabel('x')
        ylabel('f(x)')
        xlim([0.5 1]);
        ylim([-1 1]);
        ILE = 0;
        plot(x,y,'b','linewidth',2)
        plot(x1,0, "+", 'markersize', 8+ILE)
        
    fx1=podana(x1);
    
      while abs(fx1)>delta
        if fa*fx1<0
          sr=(a+x1)/2 ;
          b=x1;
          fb=podana(b);
          x1=sr;
          fx1=podana(x1);
          ILE = ILE + 1;
        elseif fx1*fb<0
          sr=(x1+b)/2;
          a=x1;
          fa=podana(a);
          x1=sr;
          fx1=podana(x1);
          ILE = ILE + 1;
        end
        plot(x1,0, "+", 'markersize', 8+ILE)
        
      end
    x1
    fx1=podana(x1)
    ILE
else
  disp('funkcja nie ma miejsc zerowych w [a b]')
end

