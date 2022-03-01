%Sinle Oscillator Bifurcation
clear all;
close all;
clc;

xvals = [];

for alpha = 0:.001:2
    x_n = .5;
    for i = 1:5000
        f_x = 1 - ( alpha * x_n ^ 2);
        x_n = f_x;
    end
    x = f_x;
    for i = 1:10000
        f_x = 1 - ( alpha * x_n ^ 2);
        x_n = f_x;
        xvals(1,length(xvals)+1) = alpha;
        xvals(2,length(xvals)) = f_x;
        if (abs(f_x-x)<.001)
            break;
        end
    end
end
plot(xvals(1,:),xvals(2,:),'.','LineWidth',.1,'MarkerSize',1.1,'Color',[.2,.2,1]);
ylabel('F_\alpha');
xlabel('\alpha');
title('Bifurcation Diagram of F_\alpha')

