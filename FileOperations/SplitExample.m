% This snippet of code represents how to extract a particular value from a
% column during the reading/processing of a CSV file. myStr can be treated
% as the content of a line read from the file.
myStr  = 'K,179,0.31,0.86,0.41,0.32';

% By using the strsplit function, it is possible to create a 1x6 cell
% array containing the different elements of the strings based on using a
% comma as the delimiter. IMPORTANT: All the items of the cell array are to
% be treated as character arrays. In other words, they have no numerical
% meaning until another opperation (shown ahead) is applied.
myCols = strsplit(myStr, ',');

% To obtain a double/numerical representation of the content of the of the
% items in the cell array, the content needs to be converted into a numeric
% representation. The str2double function can be used for that purpose.
asNum  = str2double(myCols{3});