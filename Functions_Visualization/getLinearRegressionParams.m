function  [m, b] = getLinearRegressionParams(xData, yData)

    % By passing the xData, and yData vectors to the polyfit function, the
    % parameters of a linear regression can be obtained and returned as
    % individual values for the slope (m) and the intercept (b).
    linFit = polyfit(xData, yData, 1);

    m = linFit(1);
    b = linFit(2);

end