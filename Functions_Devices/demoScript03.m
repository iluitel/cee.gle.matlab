pName = 'COM5';  % You need to set this for your machine
bRate = 9600;
timeWindow = 5;
duration = 15;

timeData = [0];
measures = [0];

myPlot = plot(timeData, measures);
myPlot.Parent.Box = 'on';

myPlot.Parent.XLim = [0 timeWindow];
myPlot.Parent.YLim = [0 3000];

myPlot.Parent.Title.String = 'My Dynamic Plot';
myPlot.Parent.Title.FontSize = 20;

myPlot.Parent.XLabel.String = 'Time (in secs)';
myPlot.Parent.XLabel.FontSize = 16;

myPlot.Parent.YLabel.String = 'Signal Value';
myPlot.Parent.YLabel.FontSize = 16;

myPlot.XDataSource = 'timeData';
myPlot.YDataSource = 'measures';

% Establishes a connection with the device and reads initial message
myPort = getSerialPortObject(pName, bRate);
initialResp = readSerialPort(myPort);

% If the device is read go ahead and set the rate at which the measurements
% are reported back.
if strcmp(initialResp, 'OK') 

    fprintf('Device is ready for input.\n');

    if strcmp(sendCommandToSerialPort(myPort, 'SR'), 'OK')

        fprintf('The device is now listening for a new rate.\n');

        if strcmp(sendCommandToSerialPort(myPort, '100'), 'OK')

            fprintf('Device data collection rate is now set.\n');

        end

    end

end

% Tell the device to start reporting measurements
if strcmp(sendCommandToSerialPort(myPort, 'MU'), 'OK')
    fprintf('Connection to device initiated.\n');
end

% Read measurements from sensor and includes them in the corresponding data
% container (vector) for plotting purposes. Establishes a timer.
tic;

while true

    dataStr = readSerialPort(myPort);
    cTime = toc;

    timeData(end+1) = cTime;
    measures(end+1) = str2double(dataStr);

    if cTime > timeWindow

        timeData(1) = [];
        measures(1) = [];

        myPlot.Parent.XLim = [timeData(1) timeData(end)];

    end

    refreshdata;
    pause(0.01);

    if cTime > duration
       break; 
    end

end

% Disables the measurement mode on the device
if strcmp(sendCommandToSerialPort(myPort, 'MD'), 'OK')
    fprintf('Measurement functionality turned off.\n');
end

closeSerialPort(myPort);