function out = getCategorySum(fPath, catVal, delim, colNo)

    % Since the file contains a header, go ahead and read it so that it is not
    % in the way of the analysis procedures which attempt to convert a cell to
    % an actual number.
    fConn = fopen(fPath, 'r');
    fHead = fgetl(fConn);
    
    % Initialize the counter variable that keeps track of the sum of values
    % associated with the category of interest.
    catValSum = 0;
    
    % Since the colNo must be an array containing two index values, grab the 
    % first index value and use it to determine the index of the category column
    % and use the second value to determine the index of the number column.
    catStrIndx = colNo(1);
    catNumIndx = colNo(2);
    
    while true
        
        if feof(fConn)
            break;
        end
        
        % Once a line is read, split the line based on the value of delim and
        % create a cell array named cellsInRow.
        cLineStr = fgetl(fConn);
        cellsInRow = split(cLineStr, delim);
        
        % Since the number-of-interest is read as a string, use the str2double
        % function to create an actual number (catNoDbl) that can be added to
        % the cumulative sum stored in catValSum.
        catNoStr = cellsInRow{catNumIndx};
        catNoDbl = str2double(catNoStr);
        
        if cellsInRow{catStrIndx} == catVal
            catValSum = catValSum + catNoDbl;
        end
        
    end
    
    fclose(fConn);
    
    out = catValSum;
    
end