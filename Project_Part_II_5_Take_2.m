%Couples System Oscillator x_1(n) values
clear all;
close all;
clc;

p = 32;
a = 1;
b = .2;
alpha_vector = [.5; .75 ];
number_of_alphas = length(alpha_vector);
 for t = 1:number_of_alphas

alpha = alpha_vector(t);
x_n = rand(p, 1);

a_diag = a*eye(p);
b_1 = b * diag(ones(1,p-1),1);
b_2 = b * diag(ones(1,p-1),-1);
A = a_diag + b_1 + b_2;
A(1,p) = b;
A(p,1) = b;

n = 10^7;

for m = 1:n+1
    
for i = 1:p
    f_x = 1 - ( alpha * x_n(i)^2 );
    
    g_x(i) = f_x;
            
end

x_n_plus_m = A * g_x';

x_n_plus_m_matrix(:, m) = x_n_plus_m;

x_n = x_n_plus_m;


end

y = x_n_plus_m_matrix;

figure(t)
plot(y(1,:),'.')
ylabel('x_1(n)');
xlabel('n');
title('x_1(n) VERSUS (n)')
hold on
 end
