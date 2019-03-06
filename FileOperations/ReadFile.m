% Once fopen is called, a connection to a file is returned. The connection
% made ahead makes it possible to read a file line by line.
filePath = 'Dataset01.csv';
fileConn = fopen(filePath, 'r');

while true
   
    % Before attempting an iteration we need to make sure that there is
    % something to read from the file. In other word, we need to make sure
    % that we are not at the end of the file.
    
    if feof(fileConn)
        break;
    end
    
    % The function allows us to get a line from the file. The reason I call
    % the value returned by fgetl cLine is because in my head it stands for
    % current line. As with other variables, it can be any valid name.
    
    cLine = fgetl(fileConn);
    
    % Once you have the content of a line, you can proceed to analyze it
    % and compute the necessary statistics. For demonstration purposes, we
    % are going to just display it. In the lab, we will work in analyzing a
    % data file.
    
    fprintf([cLine,'\n']);
    
end

% It's a good idea to getting use to always 'closing' the connection to a
% file. It's basically good coding hygiene.
fclose(fileConn);