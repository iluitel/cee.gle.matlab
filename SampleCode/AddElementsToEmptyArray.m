% The purpose of the following line of code is creating an empty array that
% we will be populated later in the code. FYI: This is not the most efficient
% approach if you know the number of items you will insert beforehand.

x = [];

% The goal of this loop is just to generate a sequence of numbers starting
% at 1 and then growing by 2 until a number less than or equal to 10
% is reached. Thus, the start:increment:max structure.

for i = 1:2:10
   
    % Whenever you have an array and decide to use end to represent the
    % position from which you are requesting the value, you will get the
    % last item on the array back. Now, the us of end + 1 in the context
    % ahead is used to represent a position after the last one that when
    % assigned a value it adds that value to the array.
    
    x(end+1) = i;
   
end

% This line of code just demonstrates that the result of the previous code
% makes x equal to [1,3,5,7,9]

y = sum(x);