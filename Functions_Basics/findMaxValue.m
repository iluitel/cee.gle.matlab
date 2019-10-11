function result = findMaxValue(listOfNumbers)

    % The listOfNumbers is an array that is meant to contain multiple numbers.
    % If at least one number is passed, i.e., if not empty, then go ahead and
    % start looking for a maximum value.
    noValues = length(listOfNumbers);
    
    if noValues >= 1
        
        % As a starting point we can assume that the maximum value is the first
        % item in the array.
        maxValue = listOfNumbers(1);
    
        for i = 2:noValues
            
            % After the initial assumption, we go ahead and iterate over all the
            % other values and compare it with the known maximum value. Whenever
            % a value during the iteration is found to be higher than the
            % maximum value then we call that value the maximum value.
            currValue = listOfNumbers(i);

            if currValue > maxValue

                maxValue = currValue;

            end

        end
    
    else
        
        % This part of the code is only reached if an empty array is passed to
        % the function thus assigning NaN to the maxValue.
        maxValue = nan;
        
    end
    
    % Once the code is executed, the maxValue is assigned to result in order to
    % have the function return the correct answer.
    result = maxValue;

end