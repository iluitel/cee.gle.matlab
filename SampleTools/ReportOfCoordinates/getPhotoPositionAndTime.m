function [returnLat, returnLon, returnTime] = getPhotoPositionAndTime(cPhoto)

    cInfo = imfinfo(cPhoto);

    % Notice the use of an element-wise operation to convert the decomposed
    % position information (deg, min, secs) into a single decimal value.
    latVal = sum(cInfo.GPSInfo.GPSLatitude .* [1, 1/60, 1/3600]);
    lonVal = sum(cInfo.GPSInfo.GPSLongitude .* [1, 1/60, 1/3600]);

    % An assumption is made that the longitude and latitude values are positive
    % but if not, modify the value accordingly.
    if cInfo.GPSInfo.GPSLatitudeRef == 'S'
        latVal = -1 * latVal;
    end

    if cInfo.GPSInfo.GPSLongitudeRef == 'W'
        lonVal = -1 * lonVal;
    end
    
    % Replaces the first two colons with dashes to report a more useful
    % timestamp format.
    timeVal = cInfo.DateTime;
    timeVal(5) = '-';
    timeVal(8) = '-';
    
    returnTime = timeVal;
    returnLat = latVal;
    returnLon = lonVal;
    

end