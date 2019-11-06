function toReturn = removeOdd(listOfNumbers)

    % We determine the number of items in a list in order to facilitate the
    % iteration process.
    noValues = length(listOfNumbers);
    
    % The iteration takes place in reverse order (starting with the last item)
    % to avoid attempting to remove an item at an index that will no longer
    % exists due to the shrinking of the array.
    for i = noValues:-1:1
        
        currValue = listOfNumbers(i);
        
        % The rem function is used to determine if the remainder of dividing the
        % number by 2 is 1 which means that the number is odd.
        currNumberIsOdd = rem(currValue, 2) == 1;
        
        if currNumberIsOdd
        
            % You can remove an item from the array by referencing the item via
            % its index and then assigning it a value of [].
            listOfNumbers(i) = [];
            
        end
        
    end
    
    toReturn = listOfNumbers;

end