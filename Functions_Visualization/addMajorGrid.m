function addMajorGrid(myAxes, style, color)

    % The goal of the function is to add the major grid to the Axes object. 
    % IMPORTANT: myAxes is an Axes object that can be accessed after accesing
    % the Parent of objects created using functions such as scatter.

    % Since the goal of the function is to add the major grid to the Axes object
    % then go ahead and set the XGrid and YGrid to 'on' instead of 'off' which
    % is the default value. 
    myAxes.XGrid = 'on';
    myAxes.YGrid = 'on';
    
    % Use the values receoved by the function to set the style of the grid as
    % well as the color.
    myAxes.GridLineStyle = style;
    myAxes.GridColor = color;
    
    % The transparency of the grid lines is set using the value of GridAlpha for
    % an Axes object. Notice that in this example the value is hardcoded to 0.5
    % instead of making the value exposed to the user via the function.
    myAxes.GridAlpha = 0.5;
    
end