function writeCoordinatesToFile(srcDir, resultsFileName)

    myHeading = 'Latitude,Longitude,PhotoName,Timestamp,FullPath\n';

    % Get the file names in a directory. Expectation is that these files are
    % photos with metadata containing GPS coordinates. Also created, the path
    % of the file where a resulting CSV file is stored.
    myFiles = getFileNames(srcDir);
    outName = [srcDir, '\', resultsFileName];
    
    % Establish a connection (write) to a file and write the desired heading.
    % The sprintf function is used to effectively turn \n into a new line
    % character.
    fConn = fopen(outName, 'w');
    hdrStr = sprintf(myHeading);
    fwrite(fConn, hdrStr);
    
    % Iterate through every name in the myFiles cell array.
    for i = 1:length(myFiles)

        % Use the loop variable to access a specific full path from the
        % myFiles cell array containing the name of each photo in srcDir.
        fPath = myFiles{i};
        
        % Since myFiles contains the full path, use the strsplit function to
        % extract only the file name (without the directory).
        fPathParts = strsplit(fPath, '\');
        photoName = fPathParts{end};
        
        % Get the latitude and longitude value for the photo available via the
        % full path (fPath). The try-catch block is used to prevent situations
        % in which the directory contains items that are not valid photos.
        try
            
            [lat, lon, tVal] = getPhotoPositionAndTime(fPath);
            
            % Generate a CSV 'row of data' and writes it to the desire file.
            rowTemplate = '%.8f,%.8f,%s,%s,%s\n';
            toWrite = sprintf(rowTemplate, lat, lon, photoName, tVal, fPath);
            fwrite(fConn, toWrite);
        
        catch
        
            fprintf('Skipping %s since not likely a valid photo\n', fPath);
            
        end
        
    end
    
    fclose(fConn);

end