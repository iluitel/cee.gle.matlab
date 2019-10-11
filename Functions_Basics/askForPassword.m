function res = askForPassword()

    % The attempts variable will keep track of how many passwords were entered
    % by the user. This value will then be returned by the function.
    disp('Speak friend and enter: ');
    attempts =  0;

    % The fact that the keyword true follows while makes this an infinite loop
    % that will continue to execute unless at some point within the loop there
    % is a call to break the loop. IMPORTANT: Always make sure that a loop has
    % an EXIT strategy.
    while true

        % Since we are asking for a password, we need to handle numbers and
        % letters which means that we need to pass 's' to the input function in
        % order to make what is returned and stored as enteredPassword be a 
        % character array instead of a double. Every time a value is entered by
        % the user the attempts counter is increased.
        enteredPassword = input('', 's');
        attempts = attempts + 1;

        % The strcmpi function is used instead of the strcmp function (or simply
        % the == operator) since we are being flexible and we are not making our
        % password validator case sensitive (i.e. 'monkey' will be treated the
        % same way as 'MonKey'). The char keyword is used to convert a group of
        % numbers (ASCII values) into a character array.
        validPassword = char([109 101 108 108 111 110]);
        if strcmpi(validPassword, enteredPassword)

            % If this portion of the code is reached that means that the user
            % entered the expected password and that the execution of the loops
            % that keeps asking for a password is stopped.
            disp('You may continue...');
            break;

        end

    end
    
    res = attempts;

end