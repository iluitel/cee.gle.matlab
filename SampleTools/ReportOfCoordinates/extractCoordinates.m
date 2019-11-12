function [latVals, lonVals] = extractCoordinates(srcDir, resultsFileName)

    myFiles = dir(srcDir);
    itemCount = length(myFiles);
    
    myLats = zeros(itemCount - 2, 1);
    myLons = zeros(itemCount - 2, 1);
    
    outName = [srcDir, '\', resultsFileName];
    
    fConn = fopen(outName, 'w');
    hdrStr = ['Latitude,Longitude,PhotoName,FullPath', newline];
    fwrite(fConn, hdrStr);
    
    for i = 3:itemCount

        photoName = myFiles(i).name;
        fPath = [srcDir, '\', photoName];

        [lat, lon] = getCoordsGPS(fPath);

        toWrite = sprintf('%.8f,%.8f,"%s","%s"\n', lat, lon, photoName, fPath);
        fwrite(fConn, toWrite);
        
        myLats(i - 2) = lat;
        myLons(i - 2) = lon;

    end
    
    fclose(fConn);
    
    latVals = myLats;
    lonVals = myLons;

end