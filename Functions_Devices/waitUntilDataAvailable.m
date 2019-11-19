function waitUntilDataAvailable(myPort)

    while 1
        if myPort.BytesAvailable
            break;
        end
    end

end