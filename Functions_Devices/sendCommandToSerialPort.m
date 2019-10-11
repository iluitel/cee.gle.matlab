function resp = sendCommandToSerialPort(sPort, cmd)

    fprintf(sPort, cmd);

    while 1
        if sPort.BytesAvailable
            break;
        end
    end

    resp = readSerialPort(sPort);

end