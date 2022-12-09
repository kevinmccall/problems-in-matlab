function iter = collatz(N)
	current = N;
	iter = 0;
	while (current ~= 1)
		if (mod(current, 2) == 0)
			current = current / 2;
		else
			current = current * 3 + 1;
		endif
		iter = iter + 1;
	endwhile
endfunction
