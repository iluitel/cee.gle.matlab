function res = getCountInFiles(dPath, catVal, extension)

    % The dir function returns the names of all files in a directory
    fNames = dir(dPath);
    catCount = 0;
    
    for i = 1:length(fNames)
    
        % Since the fNames is a structure, we use dot notation to refer to the
        % name of the file by using the index controlled by the for loop.
        fName = fNames(i).name;
        
        % The strfind function is used to return the index where a specific
        % substring happens within a string such as that specified by fName. A
        % logical value is then created out of the condition shown.
        isCsv = strfind(fName, extension) > 1;
        
        if isCsv
            
            % Use the path of the directory (dPath) and the file name (fName) to
            % generate the full path of the file (fPath) that needs to be read.
            % Use the fPath value to establish a connection to the file.
            fPath = [dPath, '/' ,fName];
            fConn = fopen(fPath, 'r');

            while true

                if feof(fConn)
                    break;
                end

                cLineStr = fgetl(fConn);

                if cLineStr == catVal
                    catCount = catCount + 1;
                end

            end

            fclose(fConn);
            
        end
        
    end

    res = catCount;
    
end