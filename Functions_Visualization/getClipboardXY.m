function [xData, yData] = getClipboardXY()

    clipStr = strtrim(clipboard('paste'));
    rows = strsplit(clipStr, '\n');

    noRows = length(rows);

    fullData = zeros(noRows, 2);

    for i = 1:noRows

        parts = strsplit(rows{i}, '\t');
        xVal = str2double(parts{1});
        yVal = str2double(parts{2});

        fullData(i, 1) = xVal;
        fullData(i, 2) = yVal;

    end

    xData = fullData(:, 1);
    yData = fullData(:, 2);

end