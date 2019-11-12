function toReturn = sumOfEven(listOfNumbers, useAbsoluteValue)

    % We determine the number of items on a list in order to facilitate the
    % iteration process. Assume that the initial sum of values is equal to zero.
    noValues = length(listOfNumbers);
    totalSum = 0;
    
    for i = 1:noValues
        
        currValue = listOfNumbers(i);
        
        % The remainder of dividing every number in the iteration by 2 is used
        % to determine if the number is even.
        currNumberIsEven = rem(currValue, 2) == 0;
        
        if currNumberIsEven
        
            % When the user sets the value of useAbsoluteValue to true then the
            % absolute value of the number is used. Setting useAbolsuteValue to
            % true prevents a negative value from offsetting a positive one in
            % the total sum that will be returned.
            if useAbsoluteValue
                
                totalSum = totalSum + abs(currValue);
                
            else
                
                totalSum = totalSum + currValue;
                
            end
            
        end
        
    end
    
    % By this point, totalSum contains the sum of all even numbers which is
    % returned to the user thanks using the assignment statement ahead.
    toReturn = totalSum;

end