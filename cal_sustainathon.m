% -------------------------------
% Problem constant
% -------------------------------
length = 100;
width = 40;
height = 10;
%constant for heating 
c = 1005.4;  
% Number of windows = 6
numWindows = 6;
% Height of windows = 1 m
htWindows = 2;
% Width of windows = 1 m
widWindows = 50;
windowArea = numWindows*htWindows*widWindows;
wallArea = 2*length*height + 2*width*height + ...
           - windowArea;
% -------------------------------
% Define the type of insulation used
% -------------------------------
% Glass wool in the walls, 0.2 m thick
% k is in units of J/sec/m/C
kWall = 0.038;
LWall = .2;
RWall = LWall/(kWall*wallArea);
% Glass windows, 0.01 m thick
kWindow = 0.78; 
LWindow = .01;
RWindow = LWindow/(kWindow*windowArea);
% -------------------------------
% Determine the equivalent thermal resistance for the whole building
% -------------------------------
Req = RWall*RWindow*10/(RWall + RWindow);
% -------------------------------
% Enter the temperature of the heated air
% -------------------------------
% The air exiting the heater has a constant temperature which is a heater
% property. THeater = 50 deg C
THeater = 50;
% Air flow rate from HVAC device Mdot = 10 kg/sec
Mdot = 10;
% -------------------------------
% Determine total internal air mass = M
% -------------------------------
% Density of air at sea level = 1.2250 kg/m^3
densAir = 1.2250;
M = (length*width*height)*densAir;
% 1 kW-hr = 3.6e6 J
% cost = $0.09 per 3.6e6 J
cost = 0.09/3.6e6;
% -------------------------------
% User inputs for mil
% -------------------------------
a = [1 1 -1 1 1 1 1 1 1 1 1 -1 -1 -1 -1 -1 -1 -1 1 -1 1 1 -1 1 1 1 -1 1 1 1 1 1 1 -1 1 1 -1 1 1 1 -1 1 1 1 1 1 1 -1 1 1 -1 1 1 1 -1 1 1 1 1 1 1 -1 1 1 -1 1 1 1 -1 1 1 1 1];

count_to_load = [ 0 0 0 0 ; 0 0.1 0.2 0.3; 0 0.2 0.4 0.6; 0 0.33 0.66 1; 0 0.5 1 1];