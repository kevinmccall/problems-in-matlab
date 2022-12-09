clear; clc; close all; format long;

x = 1:2000;

for i = 1:length(x)
  winners(i) = lastmanstanding(i);
endfor

plot(x,winners,'.')
title('Josephus problem Visualization');
xlabel('Number of Men Standing');
ylabel('Position of the last man standing');
% I could not get accessing with a dot to work, so I found this workaround in Octave
set(gca, 'FontSize', 14);


