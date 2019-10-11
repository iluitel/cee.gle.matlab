function response = getCategorySumValidPattern(fPath, catVal)

    % As opposed to the previous function, because we are doing pattern matching
    % there is no need to get rid of the header or to ask for the location of
    % the columns.
    fConn = fopen(fPath, 'r');

    catValSum = 0;
    
    while true
        
        if feof(fConn)
            break;
        end
        
        cLineStr = strtrim(fgetl(fConn));
        
        % Once leading and trailing whitespace is removed, the next line of code
        % finds the index where the specific pattern of data we are looking for
        % occurs. We use a regular expression to achieve this via the regexp
        % function.
        startOfPattern = regexp(cLineStr, '\D*\,[-+]?\d*\.?\d*');
        
        % We determine the line of data to be valid if the first occurrence of
        % the pattern we are looking for starts at index 1 and there are no
        % other occurrences of the pattern. The use of && instead of & makes it
        % possible to have the program continue even when reading and empty
        % line of data (otherwise it would fail).
        isValidLine = (length(startOfPattern) == 1) && (startOfPattern(1) == 1);
         
        if isValidLine

            cellsInRow = split(cLineStr, ',');
            catNoStr = cellsInRow{2};
            catNoDbl = str2double(catNoStr);

            if cellsInRow{1} == catVal
                catValSum = catValSum + catNoDbl;
            end
            
        end

    end
    
    fclose(fConn);
    
    response = catValSum;
    
end