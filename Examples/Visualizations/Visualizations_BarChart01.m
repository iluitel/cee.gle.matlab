% Bar Chart Example
% Crashes by Type
% In the KABCO scale: K = Fatal, A = Suspected Serious Injury
% B = Suspected Minor Injury, C = Possible Injury, O = No Apparent Injury

dataCategories  = [1, 2, 3];
dataPlotValues  = [9,5; 77,90; 577,700];
dataCatLabels   = {'Fatal', 'Serious Injury', 'Minor Injury'};
saveParams      = {'MyBarChart', '-dpng', '-r300'};
titleParams     = {'Type of Crash', 'Number of Crashes', 'Crashes by Type'};
paperDimensions = [10, 5];

% Get the figure and bar objects from here
[myFig, myBar] = getBaseBar(dataCategories, dataPlotValues);

setTextProperties(myFig.Children(1).XLabel, titleParams{1}, 11, 'bold');
setTextProperties(myFig.Children(1).YLabel, titleParams{2}, 11, 'bold');
setTextProperties(myFig.Children(1).Title, titleParams{3}, 16, 'bold');

% Set the labels of the categories
myFig.Children(1).XAxis.TickLabels = dataCatLabels;
myBar(1).Parent.YLim = [0, max(max(dataPlotValues)) + 25];

% Change the color of the individual bars
myBar(1).FaceColor = [71, 255, 206] / 255;
myBar(2).FaceColor = [187, 135, 255] / 255;

% Set the dimensions of the plot and hide the figure
myFig.PaperUnits    = 'inches';
myFig.PaperPosition = [0, 0, paperDimensions(1), paperDimensions(2)];
myFig.Visible       = 'on';

% Saves the plot image to a file
print(myFig, saveParams{1}, saveParams{2}, saveParams{3}); 