function toReturn = sortAscending(listOfNumbers)

    % Determine the number of items in the list to facilitate the iteration.
    noValues = length(listOfNumbers);
    
    % The following iteration makes it possible to implement what in textbooks
    % is refered to as the 'Bubble Sort' algorithm. Need to do multiple passes
    % on the list of values thus the nested for loops ahead.
    for j = 1:noValues
        
        % We don't go until the end because the nature of the algorithm puts the
        % largest value at the end of the array in the first pass so there is no
        % need to keep testing if the last one is in order.
        endAt = noValues - j;
        
        for i = 1:endAt
        
            % Keep track of the current and previous values to enable switching
            % of the positions if needed.
            currValue = listOfNumbers(i + 0);
            nextValue = listOfNumbers(i + 1);

            if currValue > nextValue

                % This does the actual switching of the positions to create a
                % list that have the numbers in ascending order.
                listOfNumbers(i + 0) = nextValue;
                listOfNumbers(i + 1) = currValue;

            end
        
        end
        
    end
    
    % Returns a modified versionn of the list to the user.
    toReturn = listOfNumbers;

end