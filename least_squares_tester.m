clear; clc; close all; format long;

x = -25:50;
y = x.^2;
[m, b, r_squared] =least_squares(x,y)
y_hat = x * m + b

plot(x,y)
hold on;
plot(x,y_hat,'r');
hold off;

title('Line Plot of y(x) compared to y-hat(x) -- R^2 = 0.61893');
xlabel('-25 < x < 50');
legend({'y = x^2','y-hat = 25x + 325'},'Location','southwest');
set(gca, 'FontSize', 14)
