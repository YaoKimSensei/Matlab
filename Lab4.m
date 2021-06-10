clc
clear all
close all

%%%%%%% ZADANIE 1 (Twierdzenie Bolzano-Cauchy'ego) %%%%%

% x=(0:0.01:1);
% y=zad1(x);
% 
% figure
% plot(x,y);
% 
% hold on;
% xL = xlim;
% yL = ylim;
% line([0 0], yL, "color", "r", "linestyle", "-");
% line(xL, [0 0], "color", "r", "linestyle", "-");
% 
% xlim([0 1]);
% ylim([-2 5]);
% 
% a=0;
% b=1;
% delta = 0.000001;
% fa=zad1(a);
% fb=zad1(b);
% 
% if fa*fb<0
%     x1=(a+b)/2;
%     fx1=zad1(x1);
%     while abs(fx1)>delta
%         if fa*fx1<0
%             mid = (a+x1)/2;
%             b=x1;
%             fb=zad1(b);
%             x1 = mid;
%             fx1=zad1(x1);
%         elseif fx1*fb<0
%             mid=(x1+b)/2;
%             a=x1;
%             fa=zad1(a);
%             x1=mid;
%             fx1=zad1(x1);
% 
%         end
%     end
%     x1
%     fx1=zad1(x1)
% else
%     disp('funkcja nie ma miejsc zerowych w danym przedziale [a,b]')
% 
% end

%%%%%%%%%%%%%%% ZADANIE 2 (metoda bisekcji) %%%%%%%%%%%%%%%%%%%%%

% x=(5:0.01:10);
% y=zad2(x);
% figure
% plot(x,y);
% 
% hold on;
% xL = xlim;
% yL = ylim;
% line([0 0], yL, "color", "r", "linestyle", "-");
% line(xL, [0 0], "color", "r", "linestyle", "-");
% 
% xlim([5 7]);
% 
% a=5;
% b=10;
% delta = 0.000001;
% fa=zad2(a);
% fb=zad2(b);
% 
% if fa*fb<0
%     x1=(a+b)/2;
%     fx1=zad2(x1);
%     while abs(fx1)>delta
%         if fa*fx1<0
%             mid = (a+x1)/2;
%             b=x1;
%             fb=zad2(b);
%             x1 = mid;
%             fx1=zad2(x1);
%         elseif fx1*fb<0
%             mid=(x1+b)/2;
%             a=x1;
%             fa=zad2(a);
%             x1=mid;
%             fx1=zad2(x1);
%             
%         end
%     end
%     x1
%     fx1=zad2(x1)
% else
%     disp('funkcja nie ma miejsc zerowych w danym przedziale [a,b]')
%     
% end

%%%%%    ZADANIE DOMOWE  %%%%%%%%%%%%%%

%%% a)

% x=(0:0.001:pi/2);
% y=pkta(x);
% figure
% plot(x,y);
% 
% hold on;
% 
% line([0 0], ylim, "color", "r", "linestyle", "-");
% line(xlim, [0 0], "color", "r", "linestyle", "-");
% xlim([0 pi/2]);
% ylim([-15 15]);
% 
% a=0;
% b=pi/2;
% delta = 0.000001;
% fa=pkta(a);
% fb=pkta(b);
% 
% if fa*fb<0
%     x1=(a+b)/2;
%     fx1=pkta(x1);
%     while abs(fx1)>delta
%         if fa*fx1<0
%             mid = (a+x1)/2;
%             b=x1;
%             fb=pkta(b);
%             x1 = mid;
%             fx1=pkta(x1);
%         elseif fx1*fb<0
%             mid=(x1+b)/2;
%             a=x1;
%             fa=pkta(a);
%             x1=mid;
%             fx1=pkta(x1);
%             
%         end
%     end
%     x1
%     fx1=pkta(x1)
% else
%     disp('funkcja nie ma miejsc zerowych w danym przedziale [a,b]')
%     
% end

%%% c)

% x= (1:0.01:3);
% y= pktc(x);
% 
% figure
% plot (x,y);
% 
% line([0 0], ylim,"color", "r");
% line(xlim, [0 0],"color", "r");
% xlim([1 3]);
% 
% a= 1;
% b= 3;
% fa= pktc(a);
% fb= pktc(b);
% delta= 0.000001;
% 
% if fa*fb<0
%    x1=(a+b)/2;
%    fx1=pktc(x1);
%    while abs(fx1)>delta
%        if fa*fx1<0
%            mid = (a+x1)/2;
%            b=x1;
%            fb=pktc(b);
%            fx1=pktc(mid);
%            x1 = mid;
%        elseif fx1*fb<0
%            mid = (x1+b)/2;
%            a=x1;
%            fa=pktc(a);
%            fx1=pktc(mid);
%            x1 = mid;
%        end
%    end
%    x1
%    fx1=pktc(x1)
% else
%     disp('Funkcja nie ma miejsc zerowych na przedziale [a b]')
% end
   
%%% d)

% x = (1:0.001:2);
% y = pktd(x);
% fplot(@pktd,[1 2]);
% 
% line([0 0], ylim, "color", "r");
% line(xlim, [0 0], "color", "r");
% 
% xlim([1 2]);
% ylim([-10 10]);
% 
% a=1;
% b=2;
% delta = 0.000001;
% fa=pktd(a);
% fb=pktd(b);
% if fa*fb<0
%     x1=(a+b)/2;
%     fx1= pktd(x1);
%     while abs(fx1)>delta
%         if fa*fx1<0
%             mid = (a+x1)/2;
%             b=x1;
%             fb = pktd(b);
%             fx1 = pktd(mid);
%             x1 = mid;
%         elseif fx1*fb<0
%             mid = (x1+b)/2;
%             a=x1;
%             fa=pktd(a);
%             fx1=pktd(mid);
%             x1 = mid;
%         end 
%     end 
%     x1
%     fx1=pktd(x1)
% else
%     disp('Funkcja nie posiada miejsc zerowych na przedziale [a,b]')
% end