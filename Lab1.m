clear all;
close all;
clc;

value = 125.25;
mtplOfTwo = 1;
power = 0;
i = 1;
number = floor(value);
decimal = value - number;

while (number ~= 0)
    while(mtplOfTwo<=number)
        if (number==1)
        mtplOfTwo = 1;
        power = 0;
        break
        end
    mtplOfTwo = mtplOfTwo *2;
    power = power + 1;
    if(mtplOfTwo>number)
        mtplOfTwo = mtplOfTwo/2;
        power = power-1;
        break;
    end
    end
        number = number - mtplOfTwo;
        if(i==1)
        binary = zeros(1, power+1);
        end
        binary(power+1)=1;
        power = 0;
        mtplOfTwo = 1;
        i = i + 1;
end
binary = flip(binary);
binresult = string(binary);
finalevo = str2double(binresult);
% if (decimal~=0)
%     binresult = binresult +".";
% end
% decvec = [];
% while (decimal ~=0 || decimal ~= 1)
%     decimal = decimal * 2;
%     if(decimal>1)
%         decvec(end+1) = 1;
%         decimal = decimal - 1;
%     else
%         decvec(end+1) = 0;
%     end
% end
% flip(decvec);


input = load("arguments_of_sine.txt");
fsin = load("sine.txt");
noise = load("sine_with_noise.txt");

%%%%%%%%%% ZADANIE 3 %%%%%%%%%%%
absError=abs(fsin-noise);
figure 
plot (absError)

er=abs(absError./fsin);
figure
plot (er)

avgAbsError = ((abs(fsin-noise))/length(input));
figure;
plot(avgAbsError)

avgEr = (((abs(fsin-noise)./noise))/length(input));
%sredniBladWzgledny = (1/length(wejscie))*(abs(odp-zaszum)./zaszum);
figure 
plot(avgEr)

effectV = sqrt((fsin.^2)/length(input));
figure
plot(effectV)

effectNoise = sqrt((noise.^2)/length(input));
figure
plot(effectNoise)

%%%%%%%%%%%% WYKRESY %%%%%%%%%%%
%Bezwzgl?dny
absError=abs(fsin-noise);
figure 
plot (absError,"c")

hold on
plot(input,fsin,'g','linewidth',2)

xL = xlim;
yL = ylim;
line([0 0], yL);  %x-axis
line(xL, [0 0]);  %y-axis

xlabel('x')
ylabel('f(x)')

title('Blad  Bezwzgledny','Interpreter','latex','FontSize', 14)

leg1 = legend('Blad Bezwzgledny','f(x)=sin(x)','Location','best');
set(leg1,'Interpreter','latex');

%Wzgl?dny
i=1;
wzgl=[];
wzgl(1) = 1;
while(i<360)
    if(abs(fsin(i))>0.0001)
        wzgl(i)=abs(fsin(i)-noise(i))/abs(fsin(i));
    else
        wzgl(i)=0;
    end
    i=i+1;
end

figure 
plot (wzgl,"b")

hold on
plot(input,fsin,'g','linewidth',2)

xL = xlim;
yL = ylim;
line([0 0], yL);  %x-axis
line(xL, [0 0]);  %y-axis


title('Blad Wzgledny','Interpreter','latex','FontSize', 14)

xlabel('x')
ylabel('f(x)')

leg1 = legend('Blad Wzgledny', 'f(x)=sin(x)','Location','best');
set(leg1,'Interpreter','latex');

%Zaszumiony sin
 avgAbsError = (1/length(input))*sum(abs(fsin-noise));

 corrected_values=[];
 
 for i=1 : size(noise)
     if noise(i) >= fsin(i)
         corrected_values(i) = noise(i) - avgAbsError;
     else 
         corrected_values(i) = noise(i) + avgAbsError;
     end
 end

 figure 
 plot (noise,"g");
 hold on
 plot (fsin,"k",'linewidth',2);
 hold on
 plot (corrected_values,"m");

 xL = xlim;
yL = ylim;
line([0 0], yL);  %x-axis
line(xL, [0 0]);  %y-axis


title('Korekta sygnalu','Interpreter','latex','FontSize', 14)

xlabel('x')
ylabel('f(x)')

leg1 = legend('Zaszumiony sin', 'f(x)=sin(x)','Korekta sin','Location','best');
set(leg1,'Interpreter','latex');
%%%%%%%%KONIEC%%%%%%%%


