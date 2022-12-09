dealer_num = randi([16,21], 1);
our_num = randi([1,10],1);
drawing = true;
busted = false;

fprintf('The dealer has finished drawing.\n');

while (drawing && !busted)
  fprintf('Score of your current hand: %g\n', our_num);
  inp = input('Would you like to draw another card? (1=yes, 0=no) ');
  if (inp == 0)
    drawing = false;
  elseif (inp == 1)
    our_num = our_num + randi([1,10],1);
    if (our_num > 21)
      busted = true;
      break;
    endif
  else
    fprintf('Invalid input\n');
  endif

endwhile
if (busted)
  fprintf('You busted! ');
elseif (our_num > dealer_num)
  fprintf('You win the hand! ');
else
  fprintf('You lose :( ');
endif
fprintf('Your score was %g. The dealer had %g\n.', our_num, dealer_num);
