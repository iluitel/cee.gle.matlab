function [returnLat, returnLon] = getCoordsGPS(cPhoto)

    cInfo = imfinfo(cPhoto);

    latVal = sum(cInfo.GPSInfo.GPSLatitude .* [1, 1/60, 1/3600]);
    lonVal = sum(cInfo.GPSInfo.GPSLongitude .* [1, 1/60, 1/3600]);

    if cInfo.GPSInfo.GPSLatitudeRef == 'S'
        latVal = -1 * latVal;
    end

    if cInfo.GPSInfo.GPSLongitudeRef == 'W'
        lonVal = -1 * lonVal;
    end
    
    returnLat = latVal;
    returnLon = lonVal;

end