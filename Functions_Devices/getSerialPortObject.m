function serialObj = getSerialPortObject(pName, bRate)

    myPort = serial(pName, 'BaudRate', bRate, 'Terminator', '', 'Timeout', 1);
    fopen(myPort);

    serialObj = myPort;

end