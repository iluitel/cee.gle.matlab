function res = getFileNames(dPath)

    % items is a structure array from which we will extrac the desired
    % information, i.e., the file names. As a first step in doing this, we
    % identify the number of items in the structure array, subtract 2, and store
    % that value as fCount.
    items = dir(dPath);
    fCount = length(items) - 2;
    
    % We expect that there will be fCount items in a cell array that contains
    % all the file names found in the directory. Assumption: only files are in
    % the directory passed.
    fNames = cell(fCount, 1);

    for i = 1:fCount

        % Populate each empty cell with the full path of the file name created
        % using the concatenation operation shown ahead. Notice that the use of
        % the variable name concatenatedFullPath pretty much makes this comment
        % redundant because the variable name already provides an explanation of
        % what is happening in the line of code.
        concatenatedFullPath = [items(i+2).folder, '\', items(i+2).name];
        fNames{i} = concatenatedFullPath;

    end

    res = fNames;

end