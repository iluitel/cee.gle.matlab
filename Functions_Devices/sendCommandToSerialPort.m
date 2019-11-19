function resp = sendCommandToSerialPort(sPort, cmd)

    fprintf(sPort, cmd);
    
    waitUntilDataAvailable(sPort);

    resp = readSerialPort(sPort);

end