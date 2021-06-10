clc
clear all
close all

a=0.5;
b=1;
x = a:0.01:b;
y = zad1(x);
h=0.001;
p1 = poch1('zad1',x,h);
p2 = poch2('zad1',x,h);

figure
plot(x,y,'b')
hold on
%plot(x,p1,'m')
%plot(x,p2,'g')

line(xlim, [0 0],'color','r')
line([0 0], ylim,'color','r')
xlim([a b])
ylim([-5 15])

delta=0.000001;
fa=zad1(a);
fb=zad1(b);
it=0;
% if fa*fb<0
%     x1=(a+b)/2;
%     fx1=zad1(x1);
%     while abs(fx1)>delta
%         plot(x1,0,'.','markersize',8+it)
%         it=it+1;
%         if fa*fx1<0
%            mid=(a+x1)/2;
%            b=x1;
%            fb=zad1(b);
%            x1=mid;
%            fx1=zad1(x1);
%         elseif fb*fx1<0
%             mid=(b+x1)/2;
%             a=x1;
%             fa=zad1(a);
%             x1=mid;
%             fx1=zad1(x1);
%         end
%     end
%     plot(x1,fx1,'.','markersize',8+it)
%     x1
%     fx1 = zad1(x1)
%     it
% else
%     disp('funkcja nie ma miejsc zerowych w przedziale [a,b]')
% end
x0=a;
if(zad1(x0)*zad1(b))>0
    disp('funkcja nie ma miejsca zerowego w tym przedziale')
else    
m=min(abs(p1));
M=max(abs(p2));
mnoznik=M/(2*m);
it=0;
while 1
fx0=zad1(x0); 
fprim = poch1('zad1',x0,h);
x1 = x0 - fx0/fprim;
fx1 = zad1(x1);
fs = fprim*x + fx0 - fprim*x0;
plot(x0,0,'x','Markersize',8+it)
plot(x,fs)
if mnoznik*(x1-x0)^2<=delta
    break;
end
x0=x1;
it=it+1;
end
x1
zad1(x1)
end

