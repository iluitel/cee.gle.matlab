function out = getCategorySumSkipEmpty(fPath, catVal, delim, colNo)

    fConn = fopen(fPath, 'r');
    fHead = fgetl(fConn);

    catValSum = 0;

    catStrIndx = colNo(1);
    catNumIndx = colNo(2);
    
    while true
        
        if feof(fConn)
            break;
        end
        
        % The strtrim function removes leading and trailing whitespace from the
        % string thus making it possible to test if the line is empty by using
        % the strlength function ahead.
        cLineStr = strtrim(fgetl(fConn));
        
        if strlength(cLineStr) > 0

            % The lines of code in this block are only executed if the 'trimmed'
            % line of text read from the file is not empty.
            cellsInRow = split(cLineStr, delim);
            catNoStr = cellsInRow{catNumIndx};
            catNoDbl = str2double(catNoStr);

            if cellsInRow{catStrIndx} == catVal
                catValSum = catValSum + catNoDbl;
            end
            
        end

    end
    
    fclose(fConn);
    
    out = catValSum;
    
end