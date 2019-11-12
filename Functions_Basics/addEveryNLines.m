function toReturn = addEveryNLines(fPath, n)

    % After establishing a connection to the file, the header is read because
    % the function will read every N value after reading the first line that
    % follows the header.
    fConn = fopen(fPath, 'r');
    fHead = fgetl(fConn);
    
    totalSum = 0;
    lineNo = 1;

    while true
        
        if feof(fConn)
            break;
        end
        
        cLineStr = fgetl(fConn);
        
        % The rem function is used to determine if the lineNo value is a
        % multiple of n. If it is a multiple, or if we are dealing with the
        % first line, then the number stored in the line is added to the value
        % of totalSum.
        isEveryNLine = (rem(lineNo, n) == 0) || (lineNo == 1);
        
        if isEveryNLine
        
            toAdd = str2double(cLineStr);
            totalSum = totalSum + toAdd;
            
        end
        
        % We need to increase the lineNo value to keep track of the current line
        % that are reading.
        lineNo = lineNo + 1;
        
    end

    fclose(fConn);
    
    toReturn = totalSum;
    
end