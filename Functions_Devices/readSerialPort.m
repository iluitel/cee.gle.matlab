function msg = readSerialPort(myPort)

    waitUntilDataAvailable(myPort);
    
    toReturn = [];

    while 1
        
        if myPort.BytesAvailable
            
            toAdd = fread(myPort, 1);
            toReturn(end+1) = toAdd;
            
            if length(toReturn) > 2
            
                if toReturn(end-1) == 13 & toReturn(end) == 10
                    break;
                end
                
            end
            
        end 
        
    end
    
    msg = char(toReturn(1:end-2));

end