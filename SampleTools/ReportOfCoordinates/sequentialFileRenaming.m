function sequentialFileRenaming(srcDir, nameTemplate, offset)

    myFiles = dir(srcDir);

    % Start at 3 because the first 2 items in the myFiles structure array are
    % not actual files.
  
    for i = 3:length(myFiles)

        % Generate character arrays containing the original version of the
        % original file names and destination file names that include the
        % directory (i.e. create full paths).
        
        originalName = [srcDir, '\', myFiles(i).name];
        newName = [srcDir, '\', sprintf(nameTemplate, i + offset)];
        
        movefile(originalName, newName);

    end

end