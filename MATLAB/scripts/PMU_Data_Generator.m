% 1) Load model
model = 'IEEE_34_node_2019b_scenarios_v4';
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

%syms SW [1,5]   %Define unknown number
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

%syms Load [11,10]
% Load1 = [Pa_824_828,Pp_824_828,Pn_824_828];
% Load2 = [Pa_820_822,Pp_820_822,Pn_820_822];
% Load3 = [Pa_858_834,Pp_858_834,Pn_858_834];
% Load4 = [Pa_844,Pp_844,Pn_844];
% Load5 = [Pa_840,Pp_840,Pn_840];

% C1 = [0,0,0,0,0];
% C2 = [1,0,0,0,0];
% C3 = [1,1,0,0,0];
% C4 = [1,0,1,0,1];
% C5 = [1,0,1,0,1];
% C6 = [1,0,1,1,1];
% C7 = [1,0,1,1,1];
% C8 = [1,1,1,0,1];
% C9 = [1,1,1,0,1];
% C10 = [1,1,1,1,1];
% C11 = [1,1,1,1,1];
%Coefficient = [C1;C2;C3;C4;C5;C6;C7;C8;C9;C10;C11];
% Load = Load.*Coefficient;

% L1 = Coefficient(:,1)*Load1;
% L2 = Coefficient(:,2)*Load2;
% L3 = Coefficient(:,3)*Load3;
% L4 = Coefficient(:,4)*Load4;
% L5 = Coefficient(:,5)*Load5;
% L1 = Load1;
% L2 = Load2;
% L3 = Load3;
% L4 = Load4;
% L5 = Load5;
% Load = [L1 L2 L3 L4 L5];
% Parameter = [SW Load];


%Run Parallel Simulations==================================================
simu_number=5;
T='DataGeneratedAt--Apr-17-2020-16_53';
folder_name=('G:\34NODES_RUNNING\DataFolder\');
% folder_name=('C:\Users\liyifu.SEAS13989\Downloads\34NODES_RUNNING\DataFolder\');

for topology=3:11
    list=dir([folder_name,T,'\Topology',num2str(topology),'\','*.csv']);
    len=length(list);
    % dir=[folder_name,'\Topology3\','*.csv'];
    Dirocry = [folder_name,'PMUresults','\Topology',num2str(topology),'\'];
    mkdir(Dirocry);
    
%     SW850_816=SW(topology,1);
%     SW818_820=SW(topology,2);
%     SW832_858=SW(topology,3);
%     SW834_842=SW(topology,4);
%     SW836_862=SW(topology,5);    %SW850=1;SW818=1;SW832=0;SW834=0;SW836=0;
%     get_param('IEEE_34_node_2019b_scenarios/Breaker850-816','DialogParameters');
%     get_param('IEEE_34_node_2019b_scenarios/Constant1','Value');
%     set_param('IEEE_34_node_2019b_scenarios_v2/Constant1','Value','SW(topology,1)');
%     set_param('IEEE_34_node_2019b_scenarios_v2/Constant2','Value','SW(topology,2)');
%     set_param('IEEE_34_node_2019b_scenarios_v2/Constant3','Value','SW(topology,3)');
%     set_param('IEEE_34_node_2019b_scenarios_v2/Constant4','Value','SW(topology,4)');
%     set_param('IEEE_34_node_2019b_scenarios_v2/Constant5','Value','SW(topology,5)');
%     save_system(model);
    
    counter=1;
    num=1;
    
    for loop=1:(len/simu_number)   %1st running
        clear simIn
        for idx = 1:simu_number
            filename=[folder_name,T,'\Topology',num2str(topology),'\',num2str(counter),'.csv'];
            SW=readmatrix(filename,'Range','A2:E2');    % After 2019a
            load=readmatrix(filename,'Range','F2:AR2');
%             SW=csvread(filename,1,0,['A2..E2']);   %dlmread  %set switch operator
%             load=csvread(filename,1,0,['F2..AR2']);  load=load(2,2:40);
            
            % switch
            SW850_816 = SW(1,1);
            SW818_820 = SW(1,2);
            SW832_858 = SW(1,3);
            SW834_842 = SW(1,4);
            SW836_862 = SW(1,5);
            
            % Load 1
            Pa_824_828 = table2array(table([load(1,1) load(1,2) load(1,3)]));
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
            
            % load(idx)
            simIn(idx) = Simulink.SimulationInput(model);
            simIn(idx) = simIn(idx).setVariable('SimulationMode', 'Accelerator');
            %simIn(idx) = simIn(idx).setVariable('load', load(idx));
            
            simIn(idx) = simIn(idx).setVariable('SW850_816', SW850_816);
            simIn(idx) = simIn(idx).setVariable('SW818_820', SW818_820);
            simIn(idx) = simIn(idx).setVariable('SW832_858', SW832_858);
            simIn(idx) = simIn(idx).setVariable('SW834_842', SW834_842);
            simIn(idx) = simIn(idx).setVariable('SW836_862', SW836_862);
            
            simIn(idx) = simIn(idx).setVariable('Pa_824_828', Pa_824_828);
            simIn(idx) = simIn(idx).setVariable('Pp_824_828', Pp_824_828);
            simIn(idx) = simIn(idx).setVariable('Pn_824_828', Pn_824_828);

            simIn(idx) = simIn(idx).setVariable('Pa_820_822', Pa_820_822);
            simIn(idx) = simIn(idx).setVariable('Pp_820_822', Pp_820_822);
            simIn(idx) = simIn(idx).setVariable('Pn_820_822', Pn_820_822);

            simIn(idx) = simIn(idx).setVariable('Pa_858_834', Pa_858_834);
            simIn(idx) = simIn(idx).setVariable('Pp_858_834', Pp_858_834);
            simIn(idx) = simIn(idx).setVariable('Pn_858_834', Pn_858_834);

            simIn(idx) = simIn(idx).setVariable('Pa_844', Pa_844);
            simIn(idx) = simIn(idx).setVariable('Pp_844', Pp_844);
            simIn(idx) = simIn(idx).setVariable('Pn_844', Pn_844);

            simIn(idx) = simIn(idx).setVariable('Pa_840', Pa_840);
            simIn(idx) = simIn(idx).setVariable('Pp_840', Pp_840);
            simIn(idx) = simIn(idx).setVariable('Pn_840', Pn_840);
            
            %load=readtable("DataFolder\DataGeneratedAt--Dec-13-2019-13_45\Topology3\1.csv");
%           for n=1:len                
%               %opts.Sheet = counter;
%               %opts.SelectedVariableNames = (6:44); 
%               %opts.DataRange = '2:2';
%               filename=[folder_name,'\Topology3\',list(n).name];
%               %temp=readmatrix(filename,opts);
%               load=readmatrix(filename,'Range','F2:AR2');
%               revalue_data(load)
%               %counter=1+counter;
%           end
            %simIn(idx) = simIn(idx).setModelParameter('AcceleratorUpToDateCheck', 'off');
            counter=counter+1;
        end
        simOut = parsim(simIn,'ShowSimulationManager','off');
%       save_results(num,simOut,Dirocry,simu_number);        
        for round=1:simu_number
            PMU802=[simOut(round).logsout{34}.Values.Data(1,:) simOut(round).logsout{1}.Values.Data(1,:)];  %1
            PMU806=[simOut(round).logsout{35}.Values.Data(1,:) simOut(round).logsout{2}.Values.Data(1,:)];  %2
            PMU808=[simOut(round).logsout{36}.Values.Data(1,:) simOut(round).logsout{3}.Values.Data(1,:)];  %3
            PMU810=[simOut(round).logsout{37}.Values.Data(1,:) simOut(round).logsout{4}.Values.Data(1,:)];  %4
            PMU812=[simOut(round).logsout{38}.Values.Data(1,:) simOut(round).logsout{5}.Values.Data(1,:)];  %5
            PMU814=[simOut(round).logsout{39}.Values.Data(1,:) simOut(round).logsout{6}.Values.Data(1,:)];  %6
            PMU850=[simOut(round).logsout{57}.Values.Data(1,:) simOut(round).logsout{24}.Values.Data(1,:)];  %7
            PMU816=[simOut(round).logsout{40}.Values.Data(1,:) simOut(round).logsout{7}.Values.Data(1,:)];  %8
            PMU818=[simOut(round).logsout{41}.Values.Data(1,:) simOut(round).logsout{8}.Values.Data(1,:)];  %9
            PMU820=[simOut(round).logsout{42}.Values.Data(1,:) simOut(round).logsout{9}.Values.Data(1,:)];  %10
            PMU822=[simOut(round).logsout{43}.Values.Data(1,:) simOut(round).logsout{10}.Values.Data(1,:)];  %11
            PMU824=[simOut(round).logsout{44}.Values.Data(1,:) simOut(round).logsout{11}.Values.Data(1,:)];  %12
            PMU826=[simOut(round).logsout{45}.Values.Data(1,:) simOut(round).logsout{12}.Values.Data(1,:)];  %13
            PMU828=[simOut(round).logsout{46}.Values.Data(1,:) simOut(round).logsout{13}.Values.Data(1,:)];  %14
            PMU830=[simOut(round).logsout{47}.Values.Data(1,:) simOut(round).logsout{14}.Values.Data(1,:)];  %15
            PMU854=[simOut(round).logsout{59}.Values.Data(1,:) simOut(round).logsout{26}.Values.Data(1,:)];  %16
            PMU856=[simOut(round).logsout{60}.Values.Data(1,:) simOut(round).logsout{27}.Values.Data(1,:)];  %17
            PMU852=[simOut(round).logsout{58}.Values.Data(1,:) simOut(round).logsout{25}.Values.Data(1,:)];  %18
            PMU832=[simOut(round).logsout{48}.Values.Data(1,:) simOut(round).logsout{15}.Values.Data(1,:)];  %19
            PMU888=[simOut(round).logsout{65}.Values.Data(1,:) simOut(round).logsout{32}.Values.Data(1,:)];  %20
            PMU890=[simOut(round).logsout{66}.Values.Data(1,:) simOut(round).logsout{33}.Values.Data(1,:)];  %21
            PMU858=[simOut(round).logsout{61}.Values.Data(1,:) simOut(round).logsout{28}.Values.Data(1,:)];  %22
            PMU864=[simOut(round).logsout{64}.Values.Data(1,:) simOut(round).logsout{31}.Values.Data(1,:)];  %23
            PMU834=[simOut(round).logsout{49}.Values.Data(1,:) simOut(round).logsout{16}.Values.Data(1,:)];  %24
            PMU842=[simOut(round).logsout{53}.Values.Data(1,:) simOut(round).logsout{20}.Values.Data(1,:)];  %25
            PMU844=[simOut(round).logsout{54}.Values.Data(1,:) simOut(round).logsout{21}.Values.Data(1,:)];  %26
            PMU846=[simOut(round).logsout{55}.Values.Data(1,:) simOut(round).logsout{22}.Values.Data(1,:)];  %27
            PMU848=[simOut(round).logsout{56}.Values.Data(1,:) simOut(round).logsout{23}.Values.Data(1,:)];  %28
            PMU860=[simOut(round).logsout{62}.Values.Data(1,:) simOut(round).logsout{29}.Values.Data(1,:)];  %29
            PMU836=[simOut(round).logsout{50}.Values.Data(1,:) simOut(round).logsout{17}.Values.Data(1,:)];  %30
            PMU840=[simOut(round).logsout{52}.Values.Data(1,:) simOut(round).logsout{19}.Values.Data(1,:)];  %31
            PMU862=[simOut(round).logsout{63}.Values.Data(1,:) simOut(round).logsout{30}.Values.Data(1,:)];  %32
            PMU838=[simOut(round).logsout{51}.Values.Data(1,:) simOut(round).logsout{18}.Values.Data(1,:)];  %33
            PMU=[PMU802;PMU806;PMU808;PMU810;PMU812;PMU814;PMU850;PMU816;PMU818;PMU820;PMU822;PMU824;PMU826;PMU828;PMU830;PMU854;PMU856;PMU852;PMU832;PMU888;PMU890;PMU858;PMU864;PMU834;PMU842;PMU844;PMU846;PMU848;PMU860;PMU836;PMU840;PMU862;PMU838];
            file_name = [Dirocry,'\',num2str(num),'.csv'];
            writematrix(PMU,file_name);    % After 2019a
%             csvwrite(file_name,PMU);
            num=num+1;
        end
    end
    
    if rem(len,simu_number)~=0    %if the remainder is not zero, run a 2nd time
        clear simIn
        for idx=1:(len-counter+1)       %2nd running
            filename=[folder_name,T,'\Topology',num2str(topology),'\',num2str(counter),'.csv'];
            SW=readmatrix(filename,'Range','A2:E2');
            load=readmatrix(filename,'Range','F2:AR2');
%             SW=csvread(filename,1,0,['A2..E2']);   %dlmread
%             load=csvread(filename,1,0,['F2..AR2']);  load=load(2,2:40);
            
            % switch
            SW850_816 = SW(1,1);
            SW818_820 = SW(1,2);
            SW832_858 = SW(1,3);
            SW834_842 = SW(1,4);
            SW836_862 = SW(1,5);

            % Load 1
            Pa_824_828 = table2array(table([load(1,1) load(1,2) load(1,3)]));
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

            simIn(idx) = Simulink.SimulationInput(model);
            simIn(idx) = simIn(idx).setVariable('SimulationMode', 'Accelerator');

            simIn(idx) = simIn(idx).setVariable('SW850_816', SW850_816);
            simIn(idx) = simIn(idx).setVariable('SW818_820', SW818_820);
            simIn(idx) = simIn(idx).setVariable('SW832_858', SW832_858);
            simIn(idx) = simIn(idx).setVariable('SW834_842', SW834_842);
            simIn(idx) = simIn(idx).setVariable('SW836_862', SW836_862);
            
            simIn(idx) = simIn(idx).setVariable('Pa_824_828', Pa_824_828);
            simIn(idx) = simIn(idx).setVariable('Pp_824_828', Pp_824_828);
            simIn(idx) = simIn(idx).setVariable('Pn_824_828', Pn_824_828);

            simIn(idx) = simIn(idx).setVariable('Pa_820_822', Pa_820_822);
            simIn(idx) = simIn(idx).setVariable('Pp_820_822', Pp_820_822);
            simIn(idx) = simIn(idx).setVariable('Pn_820_822', Pn_820_822);

            simIn(idx) = simIn(idx).setVariable('Pa_858_834', Pa_858_834);
            simIn(idx) = simIn(idx).setVariable('Pp_858_834', Pp_858_834);
            simIn(idx) = simIn(idx).setVariable('Pn_858_834', Pn_858_834);

            simIn(idx) = simIn(idx).setVariable('Pa_844', Pa_844);
            simIn(idx) = simIn(idx).setVariable('Pp_844', Pp_844);
            simIn(idx) = simIn(idx).setVariable('Pn_844', Pn_844);

            simIn(idx) = simIn(idx).setVariable('Pa_840', Pa_840);
            simIn(idx) = simIn(idx).setVariable('Pp_840', Pp_840);
            simIn(idx) = simIn(idx).setVariable('Pn_840', Pn_840);

            counter=counter+1;
        end

        simOut = parsim(simIn,'ShowSimulationManager','off');

        for round=1:(len-num+1)
            PMU802=[simOut(round).logsout{34}.Values.Data(1,:) simOut(round).logsout{1}.Values.Data(1,:)];  %1
            PMU806=[simOut(round).logsout{35}.Values.Data(1,:) simOut(round).logsout{2}.Values.Data(1,:)];  %2
            PMU808=[simOut(round).logsout{36}.Values.Data(1,:) simOut(round).logsout{3}.Values.Data(1,:)];  %3
            PMU810=[simOut(round).logsout{37}.Values.Data(1,:) simOut(round).logsout{4}.Values.Data(1,:)];  %4
            PMU812=[simOut(round).logsout{38}.Values.Data(1,:) simOut(round).logsout{5}.Values.Data(1,:)];  %5
            PMU814=[simOut(round).logsout{39}.Values.Data(1,:) simOut(round).logsout{6}.Values.Data(1,:)];  %6
            PMU850=[simOut(round).logsout{57}.Values.Data(1,:) simOut(round).logsout{24}.Values.Data(1,:)];  %7
            PMU816=[simOut(round).logsout{40}.Values.Data(1,:) simOut(round).logsout{7}.Values.Data(1,:)];  %8
            PMU818=[simOut(round).logsout{41}.Values.Data(1,:) simOut(round).logsout{8}.Values.Data(1,:)];  %9
            PMU820=[simOut(round).logsout{42}.Values.Data(1,:) simOut(round).logsout{9}.Values.Data(1,:)];  %10
            PMU822=[simOut(round).logsout{43}.Values.Data(1,:) simOut(round).logsout{10}.Values.Data(1,:)];  %11
            PMU824=[simOut(round).logsout{44}.Values.Data(1,:) simOut(round).logsout{11}.Values.Data(1,:)];  %12
            PMU826=[simOut(round).logsout{45}.Values.Data(1,:) simOut(round).logsout{12}.Values.Data(1,:)];  %13
            PMU828=[simOut(round).logsout{46}.Values.Data(1,:) simOut(round).logsout{13}.Values.Data(1,:)];  %14
            PMU830=[simOut(round).logsout{47}.Values.Data(1,:) simOut(round).logsout{14}.Values.Data(1,:)];  %15
            PMU854=[simOut(round).logsout{59}.Values.Data(1,:) simOut(round).logsout{26}.Values.Data(1,:)];  %16
            PMU856=[simOut(round).logsout{60}.Values.Data(1,:) simOut(round).logsout{27}.Values.Data(1,:)];  %17
            PMU852=[simOut(round).logsout{58}.Values.Data(1,:) simOut(round).logsout{25}.Values.Data(1,:)];  %18
            PMU832=[simOut(round).logsout{48}.Values.Data(1,:) simOut(round).logsout{15}.Values.Data(1,:)];  %19
            PMU888=[simOut(round).logsout{65}.Values.Data(1,:) simOut(round).logsout{32}.Values.Data(1,:)];  %20
            PMU890=[simOut(round).logsout{66}.Values.Data(1,:) simOut(round).logsout{33}.Values.Data(1,:)];  %21
            PMU858=[simOut(round).logsout{61}.Values.Data(1,:) simOut(round).logsout{28}.Values.Data(1,:)];  %22
            PMU864=[simOut(round).logsout{64}.Values.Data(1,:) simOut(round).logsout{31}.Values.Data(1,:)];  %23
            PMU834=[simOut(round).logsout{49}.Values.Data(1,:) simOut(round).logsout{16}.Values.Data(1,:)];  %24
            PMU842=[simOut(round).logsout{53}.Values.Data(1,:) simOut(round).logsout{20}.Values.Data(1,:)];  %25
            PMU844=[simOut(round).logsout{54}.Values.Data(1,:) simOut(round).logsout{21}.Values.Data(1,:)];  %26
            PMU846=[simOut(round).logsout{55}.Values.Data(1,:) simOut(round).logsout{22}.Values.Data(1,:)];  %27
            PMU848=[simOut(round).logsout{56}.Values.Data(1,:) simOut(round).logsout{23}.Values.Data(1,:)];  %28
            PMU860=[simOut(round).logsout{62}.Values.Data(1,:) simOut(round).logsout{29}.Values.Data(1,:)];  %29
            PMU836=[simOut(round).logsout{50}.Values.Data(1,:) simOut(round).logsout{17}.Values.Data(1,:)];  %30
            PMU840=[simOut(round).logsout{52}.Values.Data(1,:) simOut(round).logsout{19}.Values.Data(1,:)];  %31
            PMU862=[simOut(round).logsout{63}.Values.Data(1,:) simOut(round).logsout{30}.Values.Data(1,:)];  %32
            PMU838=[simOut(round).logsout{51}.Values.Data(1,:) simOut(round).logsout{18}.Values.Data(1,:)];  %33
            PMU=[PMU802;PMU806;PMU808;PMU810;PMU812;PMU814;PMU850;PMU816;PMU818;PMU820;PMU822;PMU824;PMU826;PMU828;PMU830;PMU854;PMU856;PMU852;PMU832;PMU888;PMU890;PMU858;PMU864;PMU834;PMU842;PMU844;PMU846;PMU848;PMU860;PMU836;PMU840;PMU862;PMU838];
            file_name = [Dirocry,'\',num2str(num),'.csv'];
            writematrix(PMU,file_name);
%             csvwrite(file_name,PMU);
            num=num+1;
        end
    end
end
%%
% 4) Simulate the model
%simOut = parsim(in)
%simOut = parsim(in,'ShowSimulationManager','on')
%simOut = parsim(in,Name,Value)
% simOut = parsim(simIn,'ShowSimulationManager','on');