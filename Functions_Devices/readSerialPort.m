function msg = readSerialPort(sPort)

    while 1
        if sPort.BytesAvailable
            break;
        end
    end

    msg = fscanf(sPort, '%c', sPort.BytesAvailable);

end