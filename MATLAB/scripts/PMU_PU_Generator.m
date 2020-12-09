% CoreNum=5;
% 
% if parpool('local')<=0  %judge if the parallel environment is on
%     parpool('open','local',CoreNum);    %if not, start the parpool
% else
%     disp('Already initialized');
% end

folder_name=('G:\34NODES_RUNNING\DataFolder\');
% tic
% list=dir([folder_name,'\PMUresults','\Topology3\','*.csv']);
for topology=3:11
    list=dir([folder_name,'\PMUresults','\Topology',num2str(topology),'\*.csv']);
    len=length(list);
%     Dirocry = [folder_name,'Database\',num2str(topology-2)];
%     mkdir(Dirocry);
%     counter=1;
    for counter=1:len
        filename=[folder_name,'PMUresults\Topology',num2str(topology),'\',num2str(counter),'.csv'];
        Data{topology-2,counter}=readmatrix(filename,'Range','A1:L33');
    end
end
save PMU_Data.mat
%% save in sorted folders
clear
load('PMU_Data.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
% simu_number=20;
% kernel=5;
for topology=3:11
    Dirocry = [folder_name,'PMU_PUresults\',num2str(topology-2),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\PMUresults','\Topology',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        rad=Data{topology-2,counter}(:,[4,5,6,10,11,12])*pi/180;     % Convert to radian
        rad=rad/pi;   % let rad between -1 and 1
        voltage=Data{topology-2,counter}(:,1:3);
        current=Data{topology-2,counter}(:,7:9);
        save_data=[voltage rad(:,[1,2,3]) current rad(:,[4,5,6])];
        writematrix(save_data,file_name);
    end
end
% toc
%% save in one excel form
clear
load('Data.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
file_name=[folder_name,'SUM.csv'];
save_data=[];

for topology=3:11
    list=dir([folder_name,'\PMUresults','\Topology',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        rad=Data{topology-2,counter}(:,[4,5,6,10,11,12])*pi/180;     % Convert to radian
        rad=rad/pi;   % let rad between -1 and 1
        voltage=Data{topology-2,counter}(:,1:3);
        current=Data{topology-2,counter}(:,7:9);
%         voltage(voltage<0.2)=0;
%         current(current<0.2)=0;
        converted_data=[voltage rad(:,[1,2,3]) current rad(:,[4,5,6])];
%         save_data=[save_data;converted_data{topology-2,counter}];
        save_data=[save_data;converted_data];
    end
end
% xlswrite(file_name,save_data);
writematrix(save_data,file_name);