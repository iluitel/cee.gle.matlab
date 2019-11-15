function [latVals, lonVals] = extractCoordinates(srcDir, resultsFileName)

    myFiles = dir(srcDir);
    myFiles = myFiles(3:end);
    
    itemCount = length(myFiles);
    
    myLats = zeros(itemCount, 1);
    myLons = zeros(itemCount, 1);
    
    outName = [srcDir, '\', resultsFileName];
    
    fConn = fopen(outName, 'w');
    hdrStr = ['Latitude,Longitude,PhotoName,FullPath', newline];
    fwrite(fConn, hdrStr);
    
    for i = 1:itemCount

        photoName = myFiles(i).name;
        fPath = [srcDir, '\', photoName];

        [lat, lon] = getCoordsGPS(fPath);

        toWrite = sprintf('%.8f,%.8f,"%s","%s"\n', lat, lon, photoName, fPath);
        fwrite(fConn, toWrite);
        
        myLats(i) = lat;
        myLons(i) = lon;

    end
    
    fclose(fConn);
    
    latVals = myLats;
    lonVals = myLons;

end