% This function returns two numbers instead of a single number/value which
% is achieved by declaring the function using the vector-like structure
% shown and then assigning a value to each variable name listed in the
% declaration of the function.

function [res1, res2] = addNumbersDynamically()

    % These two are the counter variables that will be modified inside the loop
    % and which will be returned by the function.
    sumResult = 0;
    valueCount = 0;

    disp('Keep entering numbers followed by ENTER to include in sum.');
    disp('Do not type a number and press ENTER to exit.');

    while true

        currVal = input('');

        % The moment that the input function returns a value, the first thing
        % that is done is check if the user actually entered something or if
        % nothing was entered. Using the isempty function, you can check if the
        % value entered by the user is the equivalent of []. If what was entered
        % is the equivalent of [] then isempty returns a true value which
        % triggers the code associated with the simple if to stop the execution
        % of the loop.
        if isempty(currVal)
            break;
        end
        
        % We could have included the next two lines of code inside an else but
        % there is no reason to do that because if this portion of the code is
        % reached then that means that currVal is something that we can handle.
        % Therefore, the sumResult value is increased by the corresponding
        % amount and the counter that keeps track of the values entered by the
        % user is also increased.
        sumResult = sumResult + currVal;
        valueCount = valueCount + 1;

    end

    myStr = sprintf('%d values that add up to %.2f', valueCount, sumResult);
    disp(myStr);
    
    res1 = valueCount;
    res2 = sumResult;
    
end