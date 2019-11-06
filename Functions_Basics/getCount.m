function res = getCount(fPath, catVal)

    % A connection to the file is established and a connection id is returned
    % which can then be used to programmatically read the content of the file.
    fConn = fopen(fPath, 'r');
    catCount = 0;
    
    % An infinite loop is used since we don't know the number lines in the file 
    % ahead of time. Therefore, we also need to have a way to exit the loop.
    while true
        
        % Prior to attempting the next line in the file, we have to check if
        % there is still content available to read. If the end of the file has 
        % been reached then the loop execution stops (due to the use of break.)
        if feof(fConn)
            break;
        end
        
        % The fgetl function reads the entire content of the line except for the
        % invisible character at the end. Therefore, fgetl returns the 'clean' 
        % version of the line.
        cLineStr = fgetl(fConn);
        
        % The == operator is used to check if the content of cLineStr is equal
        % to the catVal that is sent to the function. If these two are equal
        % then the value of catCount is increased by 1.
        if cLineStr == catVal
            catCount = catCount + 1;
        end
        
    end
    
    % While often it seems like not required, you should always get into the
    % habit of closing the connections made to a file.
    fclose(fConn);
    
    % The assignment statement makes it possible to return the count.
    res = catCount;
    
end