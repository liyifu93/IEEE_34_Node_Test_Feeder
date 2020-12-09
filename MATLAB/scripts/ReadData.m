folder_name=['G:\34NODES_RUNNING\DataFolder\'];
list=dir([folder_name,'\PMUresults','\Topology3\','*.csv']);
% len=length(list);
len=10;
counter=1;
simu_number=20;
data=cell(12,17);
new_data=cell(1,len);
for idx = 1:len
    filename=[folder_name,'\PMUresults','\Topology3\',num2str(idx),'.csv'];
    data=readmatrix(filename,'Range','A1:L17');
    new_data(idx)=data;
end