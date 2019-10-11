function result = multiplyEvenNumbersByN(myList, n)

    % Using the == operator, a list of 1s and 0s which indicate if the number is
    % even is created. The list is then multiplied by n which means that list
    % iteself will only contain 0s or Ns. Those numbers that are zero are then
    % converted to 1 which means that the list can now be used to multiply the
    % original list by the list itself to produce the desired result.
    binaryList = rem(myList, 2) == 0;
    multiplyBy = binaryList * n;
    multiplyBy(multiplyBy == 0) = 1;
    
    % The .* operator is used to multiply the corresponding number in the
    % original list of numbers by the matching value in multiplyBy (1 or n).
    result = myList .* multiplyBy;
    
end