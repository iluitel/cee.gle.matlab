function demoScript01(pName, bRate)

    myPort = getSerialPortObject(pName, bRate);
    initialResp = readSerialPort(myPort);

    % Turn LEDs On Programatically
    for i = 1:5

        if i == 1; resp = sendCommandToSerialPort(myPort, 'BU'); end
        if i == 2; resp = sendCommandToSerialPort(myPort, 'GU'); end
        if i == 3; resp = sendCommandToSerialPort(myPort, 'YU'); end
        if i == 4; resp = sendCommandToSerialPort(myPort, 'RU'); end
        if i == 5; resp = sendCommandToSerialPort(myPort, 'WU'); end

    end

    % Turn LEDs Off Programatically
    for i = 5:-1:1

        if i == 1; resp = sendCommandToSerialPort(myPort, 'BD'); end
        if i == 2; resp = sendCommandToSerialPort(myPort, 'GD'); end
        if i == 3; resp = sendCommandToSerialPort(myPort, 'YD'); end
        if i == 4; resp = sendCommandToSerialPort(myPort, 'RD'); end
        if i == 5; resp = sendCommandToSerialPort(myPort, 'WD'); end

    end

    % Flash All LEDs
    cStatus = 0;
    iterations = 1;

    while true

        % The loop alternates the value of cStatus thus making it possible to turn
        % the LEDs on and off.
        if cStatus

            resp = sendCommandToSerialPort(myPort, 'AD');
            cStatus = 0;

        else

            resp = sendCommandToSerialPort(myPort, 'AU');
            cStatus = 1;

        end

        % Stop the execution of the loop after 6 iterations or after 3 up-down
        % cycles. Increase the iterations count at the end of the loop.
        if iterations == 6; break; end

        iterations = iterations + 1;

    end

    closeSerialPort(myPort);

end