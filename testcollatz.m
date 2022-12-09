graphics_toolkit("qt")
x = 1:1000
for i=1:1000
	y(i)=collatz(i)
endfor
scatter(x,y,'.')
