bal = 1000;
rolls = 0;
playing = true;
while (playing)
  rolls = rolls + 1;
  fprintf('Your balance is $%g.\n', bal);

  die_invalid = true;
  while (die_invalid)
    chosen_die = input('Pick a die face from 1 to 6 to bet on: ');
    if (isnumeric(chosen_die) && chosen_die >= 1 && chosen_die <= 6)
      die_invalid = false;
    endif
  endwhile

  bet_invalid = true;
  while (bet_invalid)

    bet_amount = input('Pick your bet: ');
    if (isnumeric(bet_amount) && bet_amount > 0 && bet_amount <= bal)
      bet_invalid = false;
    endif
  endwhile

  % Cool die rolling animation
  for i = 1:9
    clc
    fprintf('Rolling the dice');
    for j = 1:(mod(i,3) + 1)
      pause(0.1);
      fprintf('.');
    endfor
  endfor
  fprintf('\n');


  actual_die = randi([1,6], 1);
  fprintf('The die landed on %g.\n', actual_die);
  if (actual_die == chosen_die)
    fprintf('Round win of $%g.\n', bet_amount * chosen_die);
    bal = bal + chosen_die * bet_amount;
  else
    fprintf('Youch! -$%g.\n', bet_amount);
    bal = bal - bet_amount;
  endif

  if (bal > 2000)
    fprintf('You win! Your balance of $%g surpassed $2,000!\n', bal);
    playing = false;
  elseif (bal <= 0)
    fprintf('You lost! You should try again next paycheck! Ending balance: $%g.\n', bal);
    playing = false;
  endif
endwhile
fprintf('Number of die rolls: %g.\n', rolls);
