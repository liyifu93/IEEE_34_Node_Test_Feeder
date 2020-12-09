%setVariables - Change variables in base workspace, data dictionary, or model workspace
%setBlockParameters - Change block parameters
%setModelParameters - Change model parameters
%setPreSimFcn - Specify MATLAB functions to run before each simulation for customization and post-processing results on the cluster
%setPostSimFcn - Specify MATLAB functions to run after each simulation for customization and post-processing results on the cluster
%InitialState - Change the Initial State
%ExternalInput - Specify a numerical array, timeseries, or Dataset object as external inputs to the model


% 1) Load model
model = 'IEEE_34_node_2019b_scenarios_v2';
load_system(model);

power_34NodeTestFeeder_loads_init
power_34NodeTestFeeder_init

% 2) Set up the sweep parameters
%builds the Rapid Accelerator target
%Simulink.BlockDiagram.buildRapidAcceleratorTarget(model);

% SW850_816_status = [0 , 1];
% SW818_820_status = [0 , 1];
% SW832_858_status = [0 , 1];
% SW834_842_status = [0 , 1];
% SW836_862_status = [0 , 1];

% SW1 = SW850_816_status;
% SW2 = SW818_820_status;
% SW3 = SW832_858_status;
% SW4 = SW834_842_status;
% SW5 = SW836_862_status;

syms SW [1,5]   %Define unknown number
% SW=[SW1,SW2,SW3,SW4,SW5];
S1 = [0,0,0,0,0];
S2 = [1,0,0,0,0];
S3 = [1,1,0,0,0];
S4 = [1,0,1,0,0];
S5 = [1,0,1,0,1];
S6 = [1,0,1,1,0];
S7 = [1,0,1,1,1];
S8 = [1,1,1,0,0];
S9 = [1,1,1,0,1];
S10 = [1,1,1,1,0];
S11 = [1,1,1,1,1];
SW = [S1;S2;S3;S4;S5;S6;S7;S8;S9;S10;S11];

syms Load [11,10]
Load1 = [Pa_824_828,Pp_824_828,Pn_824_828];
Load2 = [Pa_820_822,Pp_820_822,Pn_820_822];
Load3 = [Pa_858_834,Pp_858_834,Pn_858_834];
Load4 = [Pa_844,Pp_844,Pn_844];
Load5 = [Pa_840,Pp_840,Pn_840];

C1 = [0,0,0,0,0];
C2 = [1,0,0,0,0];
C3 = [1,1,0,0,0];
C4 = [1,0,1,0,1];
C5 = [1,0,1,0,1];
C6 = [1,0,1,1,1];
C7 = [1,0,1,1,1];
C8 = [1,1,1,0,1];
C9 = [1,1,1,0,1];
C10 = [1,1,1,1,1];
C11 = [1,1,1,1,1];
Coefficient = [C1;C2;C3;C4;C5;C6;C7;C8;C9;C10;C11];
% Load = Load.*Coefficient;

% L1 = Coefficient(:,1)*Load1;
% L2 = Coefficient(:,2)*Load2;
% L3 = Coefficient(:,3)*Load3;
% L4 = Coefficient(:,4)*Load4;
% L5 = Coefficient(:,5)*Load5;
L1 = Load1;
L2 = Load2;
L3 = Load3;
L4 = Load4;
L5 = Load5;
% Load = [L1 L2 L3 L4 L5];
% Parameter = [SW Load];

%%
% 3) Create an array of SimulationInput objects and specify the sweep value for each simulation
%simIn(1:numSims) = Simulink.SimulationInput(model);
dir=pwd;
T=datestr(now,'mmm-dd-yyyy-HH_MM');    %current time

% %For Switch Scenario NO.1==================================================
% m=1;
% n=1;
% SW=S1;
% Load = [L1 L2 L3 L4 L5];
% folder_name = ['Topology',num2str(m)];
% Dirocry = [dir,'\DataFolder\','DataGeneratedAt--',T,'\',folder_name];
% mkdir(Dirocry);
% % mkdir('C:\Users\liyifu.SEAS13989\OneDrive - The George Washington University\IEEE Bus System\IEEE_34_node_distribution\Data',folder_name);
% save_data(Load,SW,n,Dirocry);
% m=m+1;

% %For Switch Scenario NO.2==================================================
% SW=S2;
% n=1;%=========
% folder_name = ['Topology',num2str(m)];
% Dirocry = [dir,'\DataFolder\','DataGeneratedAt--',T,'\',folder_name];
% mkdir(Dirocry);
% for a=-0.05:0.01:0.05
%     Load = [L1 L2 L3 L4 L5];
%     Load=[(1+a)*Load(2,1:9) Load(2,10:end)];
%     save_data(Load,SW,n,Dirocry);
%     n=n+1;
% end
% m=m+1;

%For Switch Scenario NO.3==================================================
SW=S3;
m=3;
n=1;%=========
folder_name = ['Topology',num2str(m)];
Dirocry = [dir,'\DataFolder\','DataGeneratedAt--',T,'\',folder_name];
mkdir(Dirocry);
for a=linspace(-0.05,0.05,40)
    for b=linspace(-0.05,0.05,40)
        Load = [L1 L2 L3 L4 L5];
        Load=[(1+a)*Load(1:9) (1+b)*Load(10:12) Load(13:end)];
        save_data(Load,SW,n,Dirocry);
        n=n+1;
    end
end
m=m+1;

%For Switch Scenario NO.4==================================================
SW=S4;
n=1;%=========
folder_name = ['Topology',num2str(m)];
Dirocry = [dir,'\DataFolder\','DataGeneratedAt--',T,'\',folder_name];
mkdir(Dirocry);
for a=linspace(-0.05,0.05,13)
    for b=linspace(-0.05,0.05,13)
        for c=linspace(-0.05,0.05,13)
            Load = [L1 L2 L3 L4 L5];
            Load=[(1+a)*Load(1:9) Load(10:12) (1+b)*Load(13:21) Load(22:30) (1+c)*Load(31:end)];
            save_data(Load,SW,n,Dirocry);
            n=n+1;
        end
    end
end
m=m+1;

%For Switch Scenario NO.5==================================================
SW=S5;
n=1;%=========
folder_name = ['Topology',num2str(m)];
Dirocry = [dir,'\DataFolder\','DataGeneratedAt--',T,'\',folder_name];
mkdir(Dirocry);
for a=linspace(-0.05,0.05,13)
    for b=linspace(-0.05,0.05,13)
        for c=linspace(-0.05,0.05,13)
            Load = [L1 L2 L3 L4 L5];
            Load=[(1+a)*Load(1:9) Load(10:12) (1+b)*Load(13:21) Load(22:30) (1+c)*Load(31:end)];
            save_data(Load,SW,n,Dirocry);
            n=n+1;
        end
    end
end
m=m+1;

%For Switch Scenario NO.6==================================================
SW=S6;
n=1;%=========
folder_name = ['Topology',num2str(m)];
Dirocry = [dir,'\DataFolder\','DataGeneratedAt--',T,'\',folder_name];
mkdir(Dirocry);
for a=linspace(-0.05,0.05,7)
    for b=linspace(-0.05,0.05,7)
        for c=linspace(-0.05,0.05,7)
            for d=linspace(-0.05,0.05,7)
                Load = [L1 L2 L3 L4 L5];
                Load=[(1+a)*Load(1:9) Load(10:12) (1+b)*Load(13:21) (1+c)*Load(22:30) (1+d)*Load(31:end)];
                save_data(Load,SW,n,Dirocry);
                n=n+1;
            end
        end
    end
end
m=m+1;

%For Switch Scenario NO.7==================================================
SW=S7;
n=1;%=========
folder_name = ['Topology',num2str(m)];
Dirocry = [dir,'\DataFolder\','DataGeneratedAt--',T,'\',folder_name];
mkdir(Dirocry);
for a=linspace(-0.05,0.05,7)
    for b=linspace(-0.05,0.05,7)
        for c=linspace(-0.05,0.05,7)
            for d=linspace(-0.05,0.05,7)
                Load = [L1 L2 L3 L4 L5];
                Load=[(1+a)*Load(1:9) Load(10:12) (1+b)*Load(13:21) (1+c)*Load(22:30) (1+d)*Load(31:end)];
                save_data(Load,SW,n,Dirocry);
                n=n+1;
            end
        end
    end
end
m=m+1;

%For Switch Scenario NO.8==================================================
SW=S8;
n=1;%=========
folder_name = ['Topology',num2str(m)];
Dirocry = [dir,'\DataFolder\','DataGeneratedAt--',T,'\',folder_name];
mkdir(Dirocry);
for a=linspace(-0.05,0.05,7)
    for b=linspace(-0.05,0.05,7)
        for c=linspace(-0.05,0.05,7)
            for d=linspace(-0.05,0.05,7)
                Load = [L1 L2 L3 L4 L5];
                Load=[(1+a)*Load(1:9) (1+b)*Load(10:12) (1+c)*Load(13:21) Load(22:30) (1+d)*Load(31:end)];
                save_data(Load,SW,n,Dirocry);
                n=n+1;
            end
        end
    end
end
m=m+1;

%For Switch Scenario NO.9==================================================
SW=S9;
n=1;%=========
folder_name = ['Topology',num2str(m)];
Dirocry = [dir,'\DataFolder\','DataGeneratedAt--',T,'\',folder_name];
mkdir(Dirocry);
for a=linspace(-0.05,0.05,7)
    for b=linspace(-0.05,0.05,7)
        for c=linspace(-0.05,0.05,7)
            for d=linspace(-0.05,0.05,7)
                Load = [L1 L2 L3 L4 L5];
                Load=[(1+a)*Load(1:9) (1+b)*Load(10:12) (1+c)*Load(13:21) Load(22:30) (1+d)*Load(31:end)];
                save_data(Load,SW,n,Dirocry);
                n=n+1;
            end
        end
    end
end
m=m+1;

%For Switch Scenario NO.10=================================================
SW=S10;
n=1;%=========
folder_name = ['Topology',num2str(m)];
Dirocry = [dir,'\DataFolder\','DataGeneratedAt--',T,'\',folder_name];
mkdir(Dirocry);
for a=linspace(-0.05,0.05,5)
    for b=linspace(-0.05,0.05,5)
        for c=linspace(-0.05,0.05,5)
            for d=linspace(-0.05,0.05,5)
                for e=linspace(-0.05,0.05,5)
                    Load = [L1 L2 L3 L4 L5];
                    Load=[(1+a)*Load(1:9) (1+b)*Load(10:12) (1+c)*Load(13:21) (1+d)*Load(22:30) (1+e)*Load(31:end)];
                    save_data(Load,SW,n,Dirocry);
                    n=n+1;
                end
            end
        end
    end
end
m=m+1;

%For Switch Scenario NO.11=================================================
SW=S11;
n=1;%=========
folder_name = ['Topology',num2str(m)];
Dirocry = [dir,'\DataFolder\','DataGeneratedAt--',T,'\',folder_name];
mkdir(Dirocry);
for a=linspace(-0.05,0.05,5)
    for b=linspace(-0.05,0.05,5)
        for c=linspace(-0.05,0.05,5)
            for d=linspace(-0.05,0.05,5)
                for e=linspace(-0.05,0.05,5)
                    Load = [L1 L2 L3 L4 L5];
                    Load=[(1+a)*Load(1:9) (1+b)*Load(10:12) (1+c)*Load(13:21) (1+d)*Load(22:30) (1+e)*Load(31:end)];
                    save_data(Load,SW,n,Dirocry);
                    n=n+1;
                end
            end
        end
    end
end