% Establishes a connection to a serial port and returns an object that
% represents the connection (a link to it). Once the connection is established,
% read and displays the message from the device.

sPort = getSerialPortObject('COM3', 9600);
msg = readSerialPort(sPort);
disp(msg);

% Used to reference a specific command using a number.
onMap = {'WU','RU','YU','GU','BU'};
offMap = {'WD','RD','YD','GD','BD'};

for i = 1:5
    sendCommandToSerialPort(sPort, onMap{i});
end

for i = 5:-1:1
    sendCommandToSerialPort(sPort, offMap{i});
end

closeSerialPort(sPort);