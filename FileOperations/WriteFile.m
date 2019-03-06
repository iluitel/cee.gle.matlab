% Once fopen is called, a connection to a file is returned. The connection
% made ahead (because of 'w') makes it possible to write data to the file.
filePath = 'Report01.csv';
fileConn = fopen(filePath, 'w');

% This for loop is used to generate 10 iterations in order to produce data
% that can be written to the file. In a real application, you would
% probably iterate through a list of results or a subset of data.
for i = 1:10
   
    % One of the uses possible for the fprintf function is to write
    % character arrays to a file. Notice that, just like when displaying
    % messages on the screen, a string template can be used. As seen, when
    % used to write character arrays to a file, the first value passed to
    % the function is the file connection identifier.
    fprintf(fileConn, 'Number = %03d\n', i);
    
end

% Remember to close the file after you are done with these operations.
fclose(fileConn);