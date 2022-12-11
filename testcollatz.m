x = 1:1000
for i=1:1000
	y(i)=collatz(i)
endfor
scatter(x,y, 5, 'b', "filled")
title('Collatz Conjecture Visualization for N=1000');
xlabel('Starting Number');
ylabel('Iterations until value 1');
set(gca, 'FontSize', 14);

