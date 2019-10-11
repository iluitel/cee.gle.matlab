function result = doubleEvenNumbers(myList)

    % Using the == operator, a list of 1s and 0s which indicate if the number is
    % even is created. The number is then increased by 1 since 1s will be
    % converted to 2s and 0s will be converted to 1s which is perfect for
    % multiplying the matching numbers in another list by 2.
    binaryList = rem(myList, 2) == 0;
    binaryList = binaryList + 1;
    
    % The .* operator is used to multiply the corresponding number in the
    % original list of numbers by the matching value in binaryList (1 or 2).
    % 
    result = myList .* binaryList;
    
end