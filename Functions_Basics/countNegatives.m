function res = countNegatives(listOfNumbers)

    noItems = length(listOfNumbers);
    
    % currIndx and count are what we will call 'counter variables' since these
    % variables are initialized with a value but are constantly changed inside
    % the loop in order to keep track of a calculation or the number of
    % iterations completed/remaining.
    
    currIndx = 1;
    count = 0;
    
    % The lines of code between the while and the corresponding end will
    % continue to execute until the comparison operator that follows the while
    % returns a true value. Typically, the value of the leftmost variable used
    % in the condition is changed within the loop to prevent an infinite loop.
    
    while currIndx <= noItems
        
        % Remember: the next two lines of code can be written as one but, for 
        % clarity, the code is written in two lines to separate the individual
        % steps that are taking place inside the loop.
        
        currVal = listOfNumbers(currIndx);
        
        if currVal < 0
           
            count = count + 1;
            
        end
        
        % This line makes it possible to change the value of the comparison that
        % controls the execution of the while loop.
        
        currIndx = currIndx + 1;
        
    end
    
    res = count;

end