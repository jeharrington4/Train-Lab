% 1.	Connect adruino
    


% 2.	Initialize all sensors and variables

% 3.	Start timer (tic)
% 4.	Set train speed (255= fast)
% 5.	Start while loop
    % a.	Read approach sensor 4 times
    % b.	Check If approach value is below threshold (~200)
    % c.	If approach sensor at time 4 is below a certain threshold (~200) 
        % i.	Slow train (~170)
        % ii.	Flash lights
        % iii.	Lower gate after a certain time (when train gets close)
        % iv.	Raise gate after a certain time
    % d.	If departure sensor is below a certain threshold (~200)
        % i.	Speed up train (255)
        % ii.	Stop flashing lights
% 6.	End
