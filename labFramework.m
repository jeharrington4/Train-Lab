clc, clear
a=arduino_sim();
%a=arduino(‘COM#’)
    %connect the Arduino to MATLAB
    %replace the # with a digit such as 3. The port will never be 1

a.servoAttach(1)
    %needed only once per session. Establish a connection to the gate servo

%a.servoWrite(x,Y)
    %Move gate
        % x =servo(should be 1)
        % Y =angle(10-170)
            %170--> down
            %10-->up
            
rLED = 14;
lLED = 15;
a.pinMode(rLED,'output')%0@  right light
a.pinMode(lLED,'output')%@0  left light
    %set up a connection to the LED crossing lights
    %Issued once perindividual LED.

a.motorRun(1,'forward')%train will go forward when powered

%a.motorSpeed(1,X)
    %control the speed of the train
