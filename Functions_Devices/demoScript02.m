function demoScript02(pName, bRate)

    % Establishes a connection with the device and reads initial message
    myPort = getSerialPortObject(pName, bRate);
    initialResp = readSerialPort(myPort);

    if strcmp(initialResp, 'OK')   
        
        % Tell the device to start reporting measurements
        sendCommandToSerialPort(myPort, 'MU');
        
    end

    i = 0;

    % Read 10 measurements from the device
    while i < 10

        dataStr = readSerialPort(myPort);
        fprintf('Response: %s\n', dataStr);
        
        i = i + 1;

    end

    closeSerialPort(myPort);

end