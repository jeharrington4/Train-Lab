clc, clear
simState = input('Do you want to run the simulator or physical train?\n type 1 for simulator, 2 for physical: ');

if simState == 1%this is for the sim
    a=arduino_sim();
else %connect the Arduino to MATLAB
    COM = input('\n Please type the COM # as COM#  ' , 's' )
    a=arduino(COM)
end

servoNum=1;
a.servoAttach(servoNum)
    %needed only once per session. Establish a connection to the gate servo

%set servo up and down angles
%a.servoWrite(servo# , up/down)
up = 10;%sets up state as the angle 10
down = 170;


rLED = 14;%right LED
lLED = 15;
a.pinMode(rLED,'output')%0@  right light
a.pinMode(lLED,'output')%@0  left light
    %set up a connection to the LED crossing
    %Issued once perindividual LED.

%set variables for departure and arrival
approach = 2;%anologue port 2
departure = 3;%port 3
    
   
a.motorRun(1,'forward')%train will go forward when powered
%The train will only go one way   
%Set train speed variables 
fast=255; 
slow=175;

a.motorSpeed(1,fast);
    %control the speed of the train
    %X=0 will stop the train

tic;
yyy=0;
while 2>1
    a.analogRead(approach);
    a.analogRead(approach);
    readThree=a.analogRead(approach);
    while yyy<150
        if a.analogRead(approach)>200;
            
            disp(readThree)
            disp(toc)
            disp('------------')
            yyy=yyy+1;
        end
    end
    

end
