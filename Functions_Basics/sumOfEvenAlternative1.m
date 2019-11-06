function response = sumOfEvenAlternative1(listOfNumbers)

    % A list of 1s and 0s is created to indicate which values are even. Using
    % the list, the corresponding subset of items is passed to the sum function
    % for calculation purposes.
    ofInterestIndx = rem(listOfNumbers, 2) == 0;
    toSum = listOfNumbers(ofInterestIndx);
    
    response = sum(toSum);

end