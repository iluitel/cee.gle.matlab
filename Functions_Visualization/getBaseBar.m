function [f, b] = getBaseBar(xData, yData)

    myBar = bar(xData, yData);
    
    myAxes = myBar.Parent;
    myFig = myBar(1).Parent.Parent;
    
    myAxes.Box = 'on';
    myAxes.Position = [0.07 .1 .9 .82];
    
    f = myFig;
    b = myBar;
    
end