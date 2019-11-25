% Prepares a figure to be saved using a letter-sized paper
myFig = figure('PaperPosition', [0, 0, 11, 8.5]);

% Since the figure was already created, axes can be added programmatically
myAx01 = axes('Parent', myFig);
myAx02 = axes('Parent', myFig);
myAx03 = axes('Parent', myFig);

% Position set as [left, bottom, width, height]
myAx01.Position = [0.10, 0.10, 0.80, 0.35];
myAx02.Position = [0.10, 0.55, 0.35, 0.35];
myAx03.Position = [0.55, 0.55, 0.35, 0.35];

% Add data to myAx01
xData01     = 0:360;
yData01     = sind(xData01);
myPlot01    = plot(myAx01, xData01, yData01);
myAx01.XLim = [0, 360];

% Add data to myAx02
xData02     = 120:210;
yData02     = cosd(xData02);
myPlot02    = plot(myAx02, xData02, yData02);
myAx02.XLim = [120, 210];

% Add data to myAx03
xData03     = 0:150;
yData03     = tand(xData03);
myPlot03    = plot(myAx03, xData03, yData03);
myAx03.XLim = [0, 150];

% Saves the figure as a PNG file
print('MyVisualization.png', '-dpng', '-r300');