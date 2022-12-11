function ind = lastmanstanding(N)
people = ones(1,N);
push_off = false;
ind = 1;
while (sum(people) > 1)
  if push_off
    people(ind) = 0;
  endif
  push_off = !push_off;
  ind = mod(ind, N) + 1;
  while (people(ind) == 0)
    ind = mod(ind, N) + 1;
  endwhile
endwhile
endfunction
