function revalue_data(load)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

% Load 1
Pa_824_828 = table2array(table([load(1,1) load(1,2) load(1,3)]));   %load{:,:}
Pp_824_828 = table2array(table([load(1,4) load(1,5) load(1,6)]));
Pn_824_828 = table2array(table([load(1,7) load(1,8) load(1,9)]));

% Load 2
Pa_820_822 = table2array(table([load(1,10)]));
Pp_820_822 = table2array(table([load(1,11)]));
Pn_820_822 = table2array(table([load(1,12)]));

% Load 3
Pa_858_834 = table2array(table([load(1,13) load(1,14) load(1,15)]));
Pp_858_834 = table2array(table([load(1,16) load(1,17) load(1,18)]));
Pn_858_834 = table2array(table([load(1,19) load(1,20) load(1,21)]));

% Load 4
Pa_844 = table2array(table([load(1,22) load(1,23) load(1,24)]));
Pp_844 = table2array(table([load(1,25) load(1,26) load(1,27)]));
Pn_844 = table2array(table([load(1,28) load(1,29) load(1,30)]));

% Load 5
Pa_840 = table2array(table([load(1,31) load(1,32) load(1,33)]));
Pp_840 = table2array(table([load(1,34) load(1,35) load(1,36)]));
Pn_840 = table2array(table([load(1,37) load(1,38) load(1,39)]));

%load=[Pa_824_828 Pp_824_828 Pn_824_828 Pa_820_822 Pp_820_822 Pn_820_822 Pa_858_834 Pp_858_834 Pn_858_834 Pa_844 Pp_844 Pn_844 Pa_840 Pp_840 Pn_840];

end

