% Using the getRandomScatter function, vectors containing x and y data are
% stored in the workspace thus avoiding the need to load a specific dataset.
[xData, yData] = getRandomScatter(100, 2);

% The following variables are used by the custom functions called below to
% toggle the display of a linear fit for the data, to set the titles of the x
% and y axis as well as to set title of figure.
showLinearFit = true;
xLab = 'This is the X Axis';
yLab = 'This is the Y Axis';
fLab = 'Figure Title';

% The getBaseScatter function is a custom function available to you within the
% code repository. IMPORTANT: This means that getBaseScatter is not a built-in
% function in MATLAB. The purpose of the function is to return objects that
% represent the figure component of a plot, the actual data plotted, and the
% line used to represent a linear fit of the data.
[myFig, myScatter, myFit] = getBaseScatter(xData, yData, showLinearFit);

% To set the title of the x and y axis, as well as the fiture, you can take
% advantage of the setTextProperties function available to you within the code
% repository. You need to pass the object representing the text object you want
% to set or change.
setTextProperties(myScatter.Parent.XLabel, xLab, 11, 'bold');
setTextProperties(myScatter.Parent.YLabel, yLab, 11, 'bold');
setTextProperties(myScatter.Parent.Title, fLab, 16, 'bold');

% The following miscellaneous functions that are also available to you in the
% code repository can be used to customize aspects of a plot. The details of
% each function is discussed in their corresponding section within the workbook.
setLineProperties(myFit, [0 0 0], '--',  2);
setMarkersProperties(myScatter, 'o', [.7 .7 .7], [0 0 0], 1);
addMajorGrid(myScatter.Parent, ':', [0 0 0]);