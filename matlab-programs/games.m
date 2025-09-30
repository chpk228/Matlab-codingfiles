number = randi([1, 100]);
guess = 0;
tries = 0;

disp('Guess a number between 1 and 100.');

while guess ~= number
    guess = input('Your guess: ');
    tries = tries + 1;
    
    if guess < number
        disp('Too low!');
    elseif guess > number
        disp('Too high!');
    else
        fprintf('Correct! You guessed it in %d tries.\n', tries);
    end
end

