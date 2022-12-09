function [m, b, r_squared] = least_squares(x, y)

  if length(x) ~= length(y)
    fprintf('Vectors x and y must be the same length\n');
    return
  endif
  N = length(x);
  m = (N * dot(x, y) - sum(x) * sum(y)) / (N * sum(x.^2) - sum(x)^2);
  b = sum(y)/N - m/N*sum(x);
  y_bar = mean(y);
  y_bar_diff = sum(((x * m + b) - y_bar).^2) % the "." operator makes a binary operation act component-wize on a vector
  y_diff = sum(((x * m + b) - y).^2)
  if (y_bar_diff == 0 && y_diff == 0)
    r_squared = 1;
  else
    r_squared = y_bar_diff/(y_bar_diff + y_diff);
  endif

endfunction
