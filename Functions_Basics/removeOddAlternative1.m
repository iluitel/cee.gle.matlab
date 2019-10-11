function response = removeOddAlternative1(listOfNumbers)

    % A list of 1s and 0s is created to indicate which values are odd. Using the
    % list, the corresponding subset of items in listOfNumbers is removed by
    % assigning these a [] value.
    ofInterestIndx = rem(listOfNumbers, 2) == 1;
    listOfNumbers(ofInterestIndx) = [];
    
    % The modified version of the list is then returned.
    response = listOfNumbers;

end