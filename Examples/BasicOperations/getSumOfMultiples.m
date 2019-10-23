function myRes = getSumOfMultiples(nums, mult)
    
    remVals = mod(nums, mult);
    
    areMultiples = ~logical(remVals);
    
    toSum = nums .* areMultiples;
    
    myRes = sum(toSum, 'all');

end