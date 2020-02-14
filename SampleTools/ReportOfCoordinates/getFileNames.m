function res = getFileNames(dPath)

    items = dir(dPath);
    fCount = length(items) - 2;
    fNames = cell(fCount, 1);

    for i = 1:fCount

        fNames{i} = items(i+2).name;

    end

    res = fNames;

end