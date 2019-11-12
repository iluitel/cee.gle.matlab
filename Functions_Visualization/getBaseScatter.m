function [f, s, l] = getBaseScatter(xData, yData, showLinearFit)

    hold on
    
    myScatter = scatter(xData, yData);
    
    if showLinearFit
       
        [m, b] = getLinearRegressionParams(xData, yData);
        
        xLinePoints = myScatter.Parent.XLim;
        yLinePoints = xLinePoints * m + b;
        myLineFit = plot(xLinePoints, yLinePoints);
    
    else 
        
        myLineFit = [];
        
    end
    
    hold off
    
    myAxes = myScatter.Parent;
    myFig = myScatter.Parent.Parent;
    
    myAxes.Box = 'on';
    myAxes.Position = [0.07 .1 .9 .82];
    
    f = myFig;
    s = myScatter;
    l = myLineFit;
    
end