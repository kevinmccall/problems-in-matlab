function L = sqrt_matrix(A)
  [n,m] = size(A);
  % Check to see if it is actually a SPD
  valid = true;
  for i = 1:n
    for j = 1:j
      if A(i,j) ~= A(j,i)
        valid = false;
      endif
    endfor
  endfor
  % idk what the other condition means
  if !valid
    fprintf('Matrix is not a valid symmetric positive-definite matrix');
    return;
  endif

  for j = 1:m
    for i = j:n
      if (i == j)
        sm = 0;
        for k = 1:j-1
          sm = sm + L(j,k)^2;
        endfor
        L(i,j) = (A(i,j) - sm)^(1/2);
      else
        sm = 0;
        for k=1:j-1
          sm = sm + L(i,k) * L(j,k);
        endfor
        L(i,j) = (A(i,j) - sm)/ L(j,j);
      endif
    endfor
  endfor
endfunction
