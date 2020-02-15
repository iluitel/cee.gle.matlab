function sequentialFileRenaming(srcDir, nameTemplate, offset)

    myFiles = getFileNames(srcDir);

    for i = 1:length(myFiles)

        originalFullPath = myFiles{i};
        
        % Isolates the extension of the file so that it can be added to the new
        % name based on the nameTemplate passed as input.
        extensionsStartsAt = max(strfind(originalFullPath, '.'));
        extension = originalFullPath(extensionsStartsAt:end);

        % A new file name is created using created using two methods
        % of concatenation. Notice that the offset is used to control the first
        % number used in a sequence.
        newName = sprintf(nameTemplate, i + offset);
        nName = [srcDir, '\', newName, extension];
        
        % Move file is a matlab function that makes it possible to move one file
        % from one location to another, which is effectively also a rename.
        movefile(originalFullPath, nName);

    end

end