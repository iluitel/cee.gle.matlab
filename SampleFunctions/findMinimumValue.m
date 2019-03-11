function res = findMinimumValue(listOfNumbers)

    minValue = listOfNumbers(1);
    noItems = length(listOfNumbers);
    
    if noItems > 1
        
        for i = 2:noItems
            
            cValue = listOfNumbers(i);
            
            if cValue < minValue
                
                minValue = cValue;
                
            end
            
        end
        
    end
    
    res = minValue;

end