function [xData, yData] = getRandomScatter(noObs, seedNo)

    % Given a number of observations and a seed, the function returns two
    % vectors which contain random x-y pairs.
    % The normrnd function returns random data vector (1-by-noObs) with a mean
    % of 0.5 and a standard deviation of 2; therefore, the randOffsets variable
    % contains random values that can be added to a perfectly-fitting linear
    % dataset to create what appears to be random x-y dataset. The rng function
    % sets the parameters of a seed number and the name of the seed generator.
    rng(seedNo, 'twister');
    randOffsets = normrnd(0.5, 2, 1, noObs);
    
    % By taking advantage of the normrnd function, random slope and intercept
    % values are calculated.
    m = normrnd(1, 0.25, 1, 1);
    b = normrnd(1, 0.25, 1, 1);
    x = 1:noObs;
    
    % The x vector (along with the random m and b values) can be used to
    % generate theoretical y values that follow the y = mx + b relationship. The
    % addition of the randOffsets is what makes it possible to return xData
    % and yData vectors that represent random x-y pairs that follow a linear
    % trend.
    y = m * x + randOffsets + b;
    
    xData = x;
    yData = y;
    
end