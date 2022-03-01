%Sinle Oscillator Exploration
clear all;
close all;
clc;

alpha = 1.37;
x_n = .5;

for i = 1:100
    
   f_x = 1 - ( alpha * x_n ^ 2 );
   y(i) = f_x;
   x_n = f_x;
    
    
end

plot(y)
ylabel('x(n)');
xlabel('# of iterations (n)');
title('x(n) VERSUS (n)')



