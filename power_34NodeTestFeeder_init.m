% Simulation data for the IEEE 34 Node Test Feeder model

% miles/km
mi2km = 1.60934;

% feet to km
ft2km = 0.0003048;

% microsiemens to Farads
ms2F = 1/2/pi/60*1e-6;


%% Configuration 300 - series reactance - ohm/mile

R_300 = [1.3368 0.2101 0.2130;0.2101 1.3238 0.2066;0.2130 0.2066 1.3294];
X_300 = [1.3343 0.5779 0.5015;0.5779 1.3569 0.4591;0.5015 0.4591 1.3471];

% charging susceptance - microsiemens/mile

B_300 = [5.3350 -1.5313 -0.9943;-1.5313 5.0979 -0.6212;-0.9943 -0.6212 4.8880];

% convert for SPS

R_300 = R_300/mi2km;

L_300 = X_300/mi2km/2/pi/60;

C_300 = B_300/mi2km*ms2F;


%% Configuration 301 - series reactance - ohm/mile

R_301 = [1.9300 0.2327 0.2359;0.2327 1.9157 0.2288;0.2359 0.2288 1.9219];
X_301 = [1.4115 0.6442 0.5691;0.6442 1.4281 0.5238;0.5691 0.5238 1.4209];

% charging susceptance - microsiemens/mile

B_301 = [5.1207 -1.4364 -0.9402;-1.4364 4.9055 -0.5951;-0.9402 -0.5951 4.7154];

% convert for SPS

R_301 = R_301/mi2km;

L_301 = X_301/mi2km/2/pi/60;

C_301 = B_301/mi2km*ms2F;


%% Configuration 302 - series reactance - ohm/mile

R_302 = [2.7995 0.0000 0.0000;0.0000 0.0000 0.0000;0.0000 0.0000 0.0000];
X_302 = [1.4855 0.0000 0.0000;0.0000 0.0000 0.0000;0.0000 0.0000 0.0000];

% charging susceptance - microsiemens/mile

B_302 = [4.2251 0.0000 0.0000;0.0000 0.0000 0.0000;0.0000 0.0000 0.0000];

% convert for SPS

R_302 = R_302/mi2km;

L_302 = X_302/mi2km/2/pi/60;

C_302 = B_302/mi2km*ms2F;


%% Configuration 303 - series reactance - ohm/mile

R_303 = [0.0000 0.0000 0.0000;0.0000 2.7995 0.0000;0.0000 0.0000 0.0000];
X_303 = [0.0000 0.0000 0.0000;0.0000 1.4855 0.0000;0.0000 0.0000 0.0000];

% charging susceptance - microsiemens/mile

B_303 = [0.0000 0.0000 0.0000;0.0000 4.2251 0.0000;0.0000 0.0000 0.0000];


% convert for SPS

R_303 = R_303/mi2km;

L_303 = X_303/mi2km/2/pi/60;

C_303 = B_303/mi2km*ms2F;


%% Configuration 304 - series reactance - ohm/mile

R_304 = [0.0000 0.0000 0.0000;0.0000 1.9217 0.0000;0.0000 0.0000 0.0000];
X_304 = [0.0000 0.0000 0.0000;0.0000 1.4212 0.0000;0.0000 0.0000 0.0000];

% charging susceptance - microsiemens/mile

B_304 = [0.0000 0.0000 0.0000;0.0000 4.3637 0.0000;0.0000 0.0000 0.0000];


% convert for SPS

R_304 = R_304/mi2km;

L_304 = X_304/mi2km/2/pi/60;

C_304 = B_304/mi2km*ms2F;

