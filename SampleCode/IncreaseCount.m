% The purpose of this exercise is to demonstrate that inside a for loop,
% you don't always need to use the loop variable. Sometimes, a for loop is
% only used to repeat the same code a pre-defined number of times.
x = 0;

% This will cause the statements in the for loop to execute 10 times.
for i = 1:10
    
    % This demonstrates that we can keep track of the number of iterations
    % completed by using a counter variable, x in this case. Sometimes we
    % want to keep track of the number of iterations completed because
    % often some of the iterations are skipped if certain conditions are
    % met in the code meaning that we can assume that the last value
    % assigned to the loop variable always represents the number of
    % iterations completed.
    
    x = x + 1;
    
end

% This just demonstrates that at the end of the execution the value of x
% is equal to 10.
y = x / 2;
