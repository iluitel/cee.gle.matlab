% This code snippet demonstrates how to remove elements from an array. In
% particular, how we can programatically remove elements starting at the
% bottom of the array. First, we go ahead and define an array x that
% contains 7 numbers.
x = [5,3,8,1,4,2,7];
    
% The structure of the for loop is such that it will iterate through 4
% numbers. The reason it does that is becase the statement shown is the
% equivalent of   for i = 7:-1:4   which means that a list of numbers will
% be generated starting at 7 and then we will be decreased by 1, thanks to
% the -1, until it reaches 4.
for i = length(x):-1:4
    
    % Whenever you want to remove an item from an array, use the following
    % structure. Basically, type the name of the array (x in this case),
    % specify the subject, (i) in this case, and set that equal to [].
    % Therefore, inside this loop, and since the value of i changes with
    % every iteration, the last four elements of the array are removed.
    x(i) = [];
    
    % When you want to programatically eliminate elements from an array
    % that meet a certain condition, and you want to do it step by step, it
    % makes life simpler to delete them starting to check for a delete
    % condition (and delete if necessary) at the last item and then walk
    % your way to the first item.
    
end

% This is just to demonstrate that by removing the last four items in the
% array, the content of x is [5,3,8]
y = sum(x);