%% Generate database
% For Train
clear
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    train_list=dir([folder_name,'\CNN\Train\',num2str(topology),'\*.csv']);
    train_len=length(train_list);
    for counter=1:train_len
        filename=[folder_name,'\CNN\Train\',num2str(topology),'\',train_list(counter).name];
        Data{topology,counter}=readmatrix(filename,'Range','A1:L33');
    end
end
save PMU_Train.mat

% For Test
clear
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    test_list=dir([folder_name,'\CNN\Test\',num2str(topology),'\*.csv']);
    test_len=length(test_list);
    for counter=1:test_len
        filename=[folder_name,'\CNN\Test\',num2str(topology),'\',test_list(counter).name];
        Data{topology,counter}=readmatrix(filename,'Range','A1:L33');
    end
end
save PMU_Test.mat

% For Val
clear
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    val_list=dir([folder_name,'\CNN\Val\',num2str(topology),'\*.csv']);
    val_len=length(val_list);
    for counter=1:val_len
        filename=[folder_name,'\CNN\Val\',num2str(topology),'\',val_list(counter).name];
        Data{topology,counter}=readmatrix(filename,'Range','A1:L33');
    end
end
save PMU_Val.mat
%% Structure of Dataframe
clear
struct1=[1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    0 1 0 0 1 0 0 1 0 0 1 0;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 0 0 1 0 0 1 0 0 1 0 0;
    1 0 0 1 0 0 1 0 0 1 0 0;
    1 0 0 1 0 0 1 0 0 1 0 0;
    1 1 1 1 1 1 1 1 1 1 1 1;
    0 1 0 0 1 0 0 1 0 0 1 0;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    0 1 0 0 1 0 0 1 0 0 1 0;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0];
struct2=[1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    0 1 0 0 1 0 0 1 0 0 1 0;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 0 0 1 0 0 1 0 0 1 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0;
    1 1 1 1 1 1 1 1 1 1 1 1;
    0 1 0 0 1 0 0 1 0 0 1 0;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    0 1 0 0 1 0 0 1 0 0 1 0;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 0 0 1 0 0 1 0 0 1 0 0;
    1 1 1 1 1 1 1 1 1 1 1 1;
    0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0];
struct3=[1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    0 1 0 0 1 0 0 1 0 0 1 0;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 0 0 1 0 0 1 0 0 1 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0;
    1 1 1 1 1 1 1 1 1 1 1 1;
    0 1 0 0 1 0 0 1 0 0 1 0;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    0 1 0 0 1 0 0 1 0 0 1 0;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 0 0 1 0 0 1 0 0 1 0 0;
    1 1 1 1 1 1 1 1 1 1 1 1;
    0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 0 1 0 1 1 1;
    0 1 0 0 1 0 0 1 0 0 1 0];
struct4=[1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    0 1 0 0 1 0 0 1 0 0 1 0;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 0 0 1 0 0 1 0 0 1 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0;
    1 1 1 1 1 1 1 1 1 1 1 1;
    0 1 0 0 1 0 0 1 0 0 1 0;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    0 1 0 0 1 0 0 1 0 0 1 0;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 0 0 1 0 0 1 0 0 1 0 0;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0];
struct5=[1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    0 1 0 0 1 0 0 1 0 0 1 0;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 0 0 1 0 0 1 0 0 1 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0;
    1 1 1 1 1 1 1 1 1 1 1 1;
    0 1 0 0 1 0 0 1 0 0 1 0;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    0 1 0 0 1 0 0 1 0 0 1 0;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 0 0 1 0 0 1 0 0 1 0 0;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 0 1 0 1 1 1;
    0 1 0 0 1 0 0 1 0 0 1 0];
struct6=[1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    0 1 0 0 1 0 0 1 0 0 1 0;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 0 0 1 0 0 1 0 0 1 0 0;
    1 0 0 1 0 0 1 0 0 1 0 0;
    1 0 0 1 0 0 1 0 0 1 0 0;
    1 1 1 1 1 1 1 1 1 1 1 1;
    0 1 0 0 1 0 0 1 0 0 1 0;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    0 1 0 0 1 0 0 1 0 0 1 0;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 0 0 1 0 0 1 0 0 1 0 0;
    1 1 1 1 1 1 1 1 1 1 1 1;
    0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0];
struct7=[1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    0 1 0 0 1 0 0 1 0 0 1 0;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 0 0 1 0 0 1 0 0 1 0 0;
    1 0 0 1 0 0 1 0 0 1 0 0;
    1 0 0 1 0 0 1 0 0 1 0 0;
    1 1 1 1 1 1 1 1 1 1 1 1;
    0 1 0 0 1 0 0 1 0 0 1 0;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    0 1 0 0 1 0 0 1 0 0 1 0;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 0 0 1 0 0 1 0 0 1 0 0;
    1 1 1 1 1 1 1 1 1 1 1 1;
    0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 0 1 0 1 1 1;
    0 1 0 0 1 0 0 1 0 0 1 0];
struct8=[1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    0 1 0 0 1 0 0 1 0 0 1 0;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 0 0 1 0 0 1 0 0 1 0 0;
    1 0 0 1 0 0 1 0 0 1 0 0;
    1 0 0 1 0 0 1 0 0 1 0 0;
    1 1 1 1 1 1 1 1 1 1 1 1;
    0 1 0 0 1 0 0 1 0 0 1 0;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    0 1 0 0 1 0 0 1 0 0 1 0;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 0 0 1 0 0 1 0 0 1 0 0;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0];
struct9=[1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    0 1 0 0 1 0 0 1 0 0 1 0;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 0 0 1 0 0 1 0 0 1 0 0;
    1 0 0 1 0 0 1 0 0 1 0 0;
    1 0 0 1 0 0 1 0 0 1 0 0;
    1 1 1 1 1 1 1 1 1 1 1 1;
    0 1 0 0 1 0 0 1 0 0 1 0;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    0 1 0 0 1 0 0 1 0 0 1 0;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 0 0 1 0 0 1 0 0 1 0 0;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 0 1 0 1 1 0;
    0 1 0 0 1 0 0 1 0 0 1 0];
struct={struct1 struct2 struct3 struct4 struct5 struct6 struct7 struct8 struct9};

ref=zeros(33,12);
add=1;
for x=1:33
    for y=1:12
        ref(x,y)=add;
        add=add+1;
    end
end
%% For 10dB noise
% For Train
clear
load('PMU_Train.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_10dB\Train\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Train\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
%         figure(counter);
%         subplot(2,1,counter);
        image=Data{topology,counter};
        data_noise=awgn(image,10,'measured');
%         imagesc(image);
        writematrix(data_noise,file_name);
    end
end

% For Test
clear
load('PMU_Test.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_10dB\Test\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Test\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
%         figure(counter);
%         subplot(2,1,counter);
        image=Data{topology,counter};
        data_noise=awgn(image,10,'measured');
%         imagesc(image);
        writematrix(data_noise,file_name);
    end
end

% For Val
clear
load('PMU_Val.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_10dB\Val\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Val\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
%         figure(counter);
%         subplot(2,1,counter);
        image=Data{topology,counter};
        data_noise=awgn(image,10,'measured');
%         imagesc(image);
        writematrix(data_noise,file_name);
    end
end
%% For 20dB noise
% For Train
clear
load('PMU_Train.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_20dB\Train\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Train\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
%         figure(counter);
%         subplot(2,1,counter);
        image=Data{topology,counter};
        data_noise=awgn(image,20,'measured');
%         imagesc(image);
        writematrix(data_noise,file_name);
    end
end

% For Test
clear
load('PMU_Test.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_20dB\Test\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Test\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
%         figure(counter);
%         subplot(2,1,counter);
        image=Data{topology,counter};
        data_noise=awgn(image,20,'measured');
%         imagesc(image);
        writematrix(data_noise,file_name);
    end
end

% For Val
clear
load('PMU_Val.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_20dB\Val\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Val\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
%         figure(counter);
%         subplot(2,1,counter);
        image=Data{topology,counter};
        data_noise=awgn(image,20,'measured');
%         imagesc(image);
        writematrix(data_noise,file_name);
    end
end
%% For 30dB noise
% For Train
clear
load('PMU_Train.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_30dB\Train\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Train\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
%         figure(counter);
%         subplot(2,1,counter);
        image=Data{topology,counter};
        data_noise=awgn(image,30,'measured');
%         imagesc(image);
        writematrix(data_noise,file_name);
    end
end

% For Test
clear
load('PMU_Test.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_30dB\Test\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Test\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
%         figure(counter);
%         subplot(2,1,counter);
        image=Data{topology,counter};
        data_noise=awgn(image,30,'measured');
%         imagesc(image);
        writematrix(data_noise,file_name);
    end
end

% For Val
clear
load('PMU_Val.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_30dB\Val\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Val\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
%         figure(counter);
%         subplot(2,1,counter);
        image=Data{topology,counter};
        data_noise=awgn(image,30,'measured');
%         imagesc(image);
        writematrix(data_noise,file_name);
    end
end
%% For 40dB noise
% For Train
clear
load('PMU_Train.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_40dB\Train\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Train\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
%         figure(counter);
%         subplot(2,1,counter);
        image=Data{topology,counter};
        data_noise=awgn(image,40,'measured');
%         imagesc(image);
        writematrix(data_noise,file_name);
    end
end

% For Test
clear
load('PMU_Test.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_40dB\Test\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Test\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
%         figure(counter);
%         subplot(2,1,counter);
        image=Data{topology,counter};
        data_noise=awgn(image,40,'measured');
%         imagesc(image);
        writematrix(data_noise,file_name);
    end
end

% For Val
clear
load('PMU_Val.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_40dB\Val\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Val\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
%         figure(counter);
%         subplot(2,1,counter);
        image=Data{topology,counter};
        data_noise=awgn(image,40,'measured');
%         imagesc(image);
        writematrix(data_noise,file_name);
    end
end
%% For 40dB noise - 900 Mannual
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9  % read data
    list=dir([folder_name,'\PMU_PU_900Mannual--Jun-09-2020-23_00\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        read_file_name=[folder_name,'\PMU_PU_900Mannual--Jun-09-2020-23_00\',num2str(topology),'\',list(counter).name];
        Data{topology,counter}=readmatrix(read_file_name,'Range','A1:L33');        
    end
end
for topology=1:9
    Dirocry = [folder_name,'\CNN_40dB_900Mannual\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\PMU_PU_900Mannual--Jun-09-2020-23_00\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        save_file_name=[Dirocry,num2str(counter),'.csv'];
        image=Data{topology,counter};
        Noise40dB_Data=awgn(image,40,'measured'); 
        writematrix(Noise40dB_Data,save_file_name);
    end
end
%% For 50dB noise
% For Train
clear
load('PMU_Train.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_50dB\Train\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Train\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
%         figure(counter);
%         subplot(2,1,counter);
        image=Data{topology,counter};
        data_noise=awgn(image,50,'measured');
%         imagesc(image);
        writematrix(data_noise,file_name);
    end
end

% For Test
clear
load('PMU_Test.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_50dB\Test\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Test\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
%         figure(counter);
%         subplot(2,1,counter);
        image=Data{topology,counter};
        data_noise=awgn(image,50,'measured');
%         imagesc(image);
        writematrix(data_noise,file_name);
    end
end

% For Val
clear
load('PMU_Val.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_50dB\Val\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Val\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
%         figure(counter);
%         subplot(2,1,counter);
        image=Data{topology,counter};
        data_noise=awgn(image,50,'measured');
%         imagesc(image);
        writematrix(data_noise,file_name);
    end
end
%% For random noise
% For Train
clear
upSNR=50;
lowSNR=20;
load('PMU_Train.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_random_dB\Train\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Train\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
%         figure(counter);
%         subplot(2,1,counter);
        image=Data{topology,counter};
        thisSNR=lowSNR+rand*(upSNR-lowSNR);
        data_noise=awgn(image,thisSNR,'measured');
%         imagesc(image);
        writematrix(data_noise,file_name);
    end
end

% For Test
clear
upSNR=50;
lowSNR=20;
load('PMU_Test.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_random_dB\Test\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Test\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
%         figure(counter);
%         subplot(2,1,counter);
        image=Data{topology,counter};
        thisSNR=lowSNR+rand*(upSNR-lowSNR);
        data_noise=awgn(image,thisSNR,'measured');
%         imagesc(image);
        writematrix(data_noise,file_name);
    end
end

% For Val
clear
upSNR=50;
lowSNR=20;
load('PMU_Val.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_random_dB\Val\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Val\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
%         figure(counter);
%         subplot(2,1,counter);
        image=Data{topology,counter};
        thisSNR=lowSNR+rand*(upSNR-lowSNR);
        data_noise=awgn(image,thisSNR,'measured');
%         imagesc(image);
        writematrix(data_noise,file_name);
    end
end
%% Missing one data then add 10dB noise
% For Train
thisSNR=10;
load('PMU_Train.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_MissingOneData_add10dB\Train\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Train\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        MissingOneData=Data{topology,counter};
        while true
            i=round(1+32*rand(1));
            j=round(1+11*rand(1));
            if struct{1,topology}(i,j)~=0
                MissingOneData(i,j)=0;
                Mixed_data=awgn(MissingOneData,thisSNR,'measured');
                writematrix(Mixed_data,file_name);
                break
            end
        end  
    end
end
% For Test
thisSNR=10;
load('PMU_Test.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_MissingOneData_add10dB\Test\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Test\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        MissingOneData=Data{topology,counter};
        while true
            i=round(1+32*rand(1));
            j=round(1+11*rand(1));
            if struct{1,topology}(i,j)~=0
                MissingOneData(i,j)=0;
                Mixed_data=awgn(MissingOneData,thisSNR,'measured');
                writematrix(Mixed_data,file_name);
                break
            end
        end  
    end
end
% For Val
thisSNR=10;
load('PMU_Val.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_MissingOneData_add10dB\Val\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Val\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        MissingOneData=Data{topology,counter};
        while true
            i=round(1+32*rand(1));
            j=round(1+11*rand(1));
            if struct{1,topology}(i,j)~=0
                MissingOneData(i,j)=0;
                Mixed_data=awgn(MissingOneData,thisSNR,'measured');
                writematrix(Mixed_data,file_name);
                break
            end
        end  
    end
end
%% Missing two data then add 10dB noise
% For Train
thisSNR=10;
load('PMU_Train.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_MissingTwoData_add10dB\Train\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Train\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        MissingTwoData=Data{topology,counter};
        while true
            i=round(1+32*rand(1));
            j=round(1+11*rand(1));
            m=round(1+32*rand(1));
            n=round(1+11*rand(1));
            if struct{1,topology}(i,j)~=0 && struct{1,topology}(m,n)~=0 && ref(m,n) ~= ref(i,j)
                MissingTwoData(i,j)=0;
                MissingTwoData(m,n)=0;
                Mixed_data=awgn(MissingTwoData,thisSNR,'measured');
                writematrix(Mixed_data,file_name);
                break
            end
        end  
    end
end
% For Test
thisSNR=10;
load('PMU_Test.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_MissingTwoData_add10dB\Test\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Test\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        MissingTwoData=Data{topology,counter};
        while true
            i=round(1+32*rand(1));
            j=round(1+11*rand(1));
            m=round(1+32*rand(1));
            n=round(1+11*rand(1));
            if struct{1,topology}(i,j)~=0 && struct{1,topology}(m,n)~=0 && ref(m,n) ~= ref(i,j)
                MissingTwoData(i,j)=0;
                MissingTwoData(m,n)=0;
                Mixed_data=awgn(MissingTwoData,thisSNR,'measured');
                writematrix(Mixed_data,file_name);
                break
            end
        end  
    end
end
% For Val
thisSNR=10;
load('PMU_Val.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_MissingTwoData_add10dB\Val\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Val\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        MissingTwoData=Data{topology,counter};
        while true
            i=round(1+32*rand(1));
            j=round(1+11*rand(1));
            m=round(1+32*rand(1));
            n=round(1+11*rand(1));
            if struct{1,topology}(i,j)~=0 && struct{1,topology}(m,n)~=0 && ref(m,n) ~= ref(i,j)
                MissingTwoData(i,j)=0;
                MissingTwoData(m,n)=0;
                Mixed_data=awgn(MissingTwoData,thisSNR,'measured');
                writematrix(Mixed_data,file_name);
                break
            end
        end  
    end
end
%% Missing one data then add 20dB noise
% For Train
thisSNR=20;
load('PMU_Train.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_MissingOneData_add20dB\Train\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Train\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        MissingOneData=Data{topology,counter};
        while true
            i=round(1+32*rand(1));
            j=round(1+11*rand(1));
            if struct{1,topology}(i,j)~=0
                MissingOneData(i,j)=0;
                Mixed_data=awgn(MissingOneData,thisSNR,'measured');
                writematrix(Mixed_data,file_name);
                break
            end
        end  
    end
end
% For Test
thisSNR=20;
load('PMU_Test.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_MissingOneData_add20dB\Test\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Test\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        MissingOneData=Data{topology,counter};
        while true
            i=round(1+32*rand(1));
            j=round(1+11*rand(1));
            if struct{1,topology}(i,j)~=0
                MissingOneData(i,j)=0;
                Mixed_data=awgn(MissingOneData,thisSNR,'measured');
                writematrix(Mixed_data,file_name);
                break
            end
        end  
    end
end
% For Val
thisSNR=20;
load('PMU_Val.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_MissingOneData_add20dB\Val\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Val\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        MissingOneData=Data{topology,counter};
        while true
            i=round(1+32*rand(1));
            j=round(1+11*rand(1));
            if struct{1,topology}(i,j)~=0
                MissingOneData(i,j)=0;
                Mixed_data=awgn(MissingOneData,thisSNR,'measured');
                writematrix(Mixed_data,file_name);
                break
            end
        end  
    end
end
%% Missing two data then add 20dB noise
% For Train
thisSNR=20;
load('PMU_Train.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_MissingTwoData_add20dB\Train\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Train\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        MissingTwoData=Data{topology,counter};
        while true
            i=round(1+32*rand(1));
            j=round(1+11*rand(1));
            m=round(1+32*rand(1));
            n=round(1+11*rand(1));
            if struct{1,topology}(i,j)~=0 && struct{1,topology}(m,n)~=0 && ref(m,n) ~= ref(i,j)
                MissingTwoData(i,j)=0;
                MissingTwoData(m,n)=0;
                Mixed_data=awgn(MissingTwoData,thisSNR,'measured');
                writematrix(Mixed_data,file_name);
                break
            end
        end  
    end
end
% For Test
thisSNR=20;
load('PMU_Test.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_MissingTwoData_add20dB\Test\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Test\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        MissingTwoData=Data{topology,counter};
        while true
            i=round(1+32*rand(1));
            j=round(1+11*rand(1));
            m=round(1+32*rand(1));
            n=round(1+11*rand(1));
            if struct{1,topology}(i,j)~=0 && struct{1,topology}(m,n)~=0 && ref(m,n) ~= ref(i,j)
                MissingTwoData(i,j)=0;
                MissingTwoData(m,n)=0;
                Mixed_data=awgn(MissingTwoData,thisSNR,'measured');
                writematrix(Mixed_data,file_name);
                break
            end
        end  
    end
end
% For Val
thisSNR=20;
load('PMU_Val.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_MissingTwoData_add20dB\Val\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Val\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        MissingTwoData=Data{topology,counter};
        while true
            i=round(1+32*rand(1));
            j=round(1+11*rand(1));
            m=round(1+32*rand(1));
            n=round(1+11*rand(1));
            if struct{1,topology}(i,j)~=0 && struct{1,topology}(m,n)~=0 && ref(m,n) ~= ref(i,j)
                MissingTwoData(i,j)=0;
                MissingTwoData(m,n)=0;
                Mixed_data=awgn(MissingTwoData,thisSNR,'measured');
                writematrix(Mixed_data,file_name);
                break
            end
        end  
    end
end
%% 22 PMU _ 10dB noise
% For Train
clear
load('PMU_Train_22.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_22PMU_10dB\Train\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Train\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        image=Data{topology,counter};
        data_noise=awgn(image,10,'measured');
        writematrix(data_noise,file_name);
    end
end
% For Test
clear
load('PMU_Test_22.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_22PMU_10dB\Test\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Test\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        image=Data{topology,counter};
        data_noise=awgn(image,10,'measured');
        writematrix(data_noise,file_name);
    end
end
% For Val
clear
load('PMU_Val_22.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_22PMU_10dB\Val\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Val\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        image=Data{topology,counter};
        data_noise=awgn(image,10,'measured');
        writematrix(data_noise,file_name);
    end
end
%% 22 PMU _ Missing one data then add 10dB noise
% For Train
thisSNR=10;
load('PMU_Train_22.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_22PMU_MissingOneData_add10dB\Train\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Train\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        MissingOneData=Data{topology,counter};
        while true
            i=round(1+32*rand(1));
            j=round(1+11*rand(1));
            if struct{1,topology}(i,j)~=0
                MissingOneData(i,j)=0;
                Mixed_data=awgn(MissingOneData,thisSNR,'measured');
                writematrix(Mixed_data,file_name);
                break
            end
        end  
    end
end
% For Test
thisSNR=10;
load('PMU_Test_22.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_22PMU_MissingOneData_add10dB\Test\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Test\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        MissingOneData=Data{topology,counter};
        while true
            i=round(1+32*rand(1));
            j=round(1+11*rand(1));
            if struct{1,topology}(i,j)~=0
                MissingOneData(i,j)=0;
                Mixed_data=awgn(MissingOneData,thisSNR,'measured');
                writematrix(Mixed_data,file_name);
                break
            end
        end  
    end
end
% For Val
thisSNR=10;
load('PMU_Val_22.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_22PMU_MissingOneData_add10dB\Val\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Val\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        MissingOneData=Data{topology,counter};
        while true
            i=round(1+32*rand(1));
            j=round(1+11*rand(1));
            if struct{1,topology}(i,j)~=0
                MissingOneData(i,j)=0;
                Mixed_data=awgn(MissingOneData,thisSNR,'measured');
                writematrix(Mixed_data,file_name);
                break
            end
        end  
    end
end
%% 22 PMU _ Missing one data then add 20dB noise
% For Train
thisSNR=20;
load('PMU_Train_22.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_22PMU_MissingOneData_add20dB\Train\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Train\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        MissingOneData=Data{topology,counter};
        while true
            i=round(1+32*rand(1));
            j=round(1+11*rand(1));
            if struct{1,topology}(i,j)~=0
                MissingOneData(i,j)=0;
                Mixed_data=awgn(MissingOneData,thisSNR,'measured');
                writematrix(Mixed_data,file_name);
                break
            end
        end  
    end
end
% For Test
thisSNR=20;
load('PMU_Test_22.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_22PMU_MissingOneData_add20dB\Test\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Test\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        MissingOneData=Data{topology,counter};
        while true
            i=round(1+32*rand(1));
            j=round(1+11*rand(1));
            if struct{1,topology}(i,j)~=0
                MissingOneData(i,j)=0;
                Mixed_data=awgn(MissingOneData,thisSNR,'measured');
                writematrix(Mixed_data,file_name);
                break
            end
        end  
    end
end
% For Val
thisSNR=20;
load('PMU_Val_22.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_22PMU_MissingOneData_add20dB\Val\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Val\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        MissingOneData=Data{topology,counter};
        while true
            i=round(1+32*rand(1));
            j=round(1+11*rand(1));
            if struct{1,topology}(i,j)~=0
                MissingOneData(i,j)=0;
                Mixed_data=awgn(MissingOneData,thisSNR,'measured');
                writematrix(Mixed_data,file_name);
                break
            end
        end  
    end
end
%% 22 PMU _ Missing two data then add 10dB noise
% For Train
thisSNR=10;
load('PMU_Train_22.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_22PMU_MissingTwoData_add10dB\Train\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Train\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        MissingTwoData=Data{topology,counter};
        while true
            i=round(1+32*rand(1));
            j=round(1+11*rand(1));
            m=round(1+32*rand(1));
            n=round(1+11*rand(1));
            if struct{1,topology}(i,j)~=0 && struct{1,topology}(m,n)~=0 && ref(m,n) ~= ref(i,j)
                MissingTwoData(i,j)=0;
                MissingTwoData(m,n)=0;
                Mixed_data=awgn(MissingTwoData,thisSNR,'measured');
                writematrix(Mixed_data,file_name);
                break
            end
        end  
    end
end
% For Test
thisSNR=10;
load('PMU_Test_22.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_22PMU_MissingTwoData_add10dB\Test\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Test\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        MissingTwoData=Data{topology,counter};
        while true
            i=round(1+32*rand(1));
            j=round(1+11*rand(1));
            m=round(1+32*rand(1));
            n=round(1+11*rand(1));
            if struct{1,topology}(i,j)~=0 && struct{1,topology}(m,n)~=0 && ref(m,n) ~= ref(i,j)
                MissingTwoData(i,j)=0;
                MissingTwoData(m,n)=0;
                Mixed_data=awgn(MissingTwoData,thisSNR,'measured');
                writematrix(Mixed_data,file_name);
                break
            end
        end  
    end
end
% For Val
thisSNR=10;
load('PMU_Val_22.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_22PMU_MissingTwoData_add10dB\Val\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Val\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        MissingTwoData=Data{topology,counter};
        while true
            i=round(1+32*rand(1));
            j=round(1+11*rand(1));
            m=round(1+32*rand(1));
            n=round(1+11*rand(1));
            if struct{1,topology}(i,j)~=0 && struct{1,topology}(m,n)~=0 && ref(m,n) ~= ref(i,j)
                MissingTwoData(i,j)=0;
                MissingTwoData(m,n)=0;
                Mixed_data=awgn(MissingTwoData,thisSNR,'measured');
                writematrix(Mixed_data,file_name);
                break
            end
        end  
    end
end
%% 22 PMU _ Missing two data then add 20dB noise
% For Train
thisSNR=20;
load('PMU_Train_22.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_22PMU_MissingTwoData_add20dB\Train\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Train\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        MissingTwoData=Data{topology,counter};
        while true
            i=round(1+32*rand(1));
            j=round(1+11*rand(1));
            m=round(1+32*rand(1));
            n=round(1+11*rand(1));
            if struct{1,topology}(i,j)~=0 && struct{1,topology}(m,n)~=0 && ref(m,n) ~= ref(i,j)
                MissingTwoData(i,j)=0;
                MissingTwoData(m,n)=0;
                Mixed_data=awgn(MissingTwoData,thisSNR,'measured');
                writematrix(Mixed_data,file_name);
                break
            end
        end  
    end
end
% For Test
thisSNR=20;
load('PMU_Test_22.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_22PMU_MissingTwoData_add20dB\Test\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Test\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        MissingTwoData=Data{topology,counter};
        while true
            i=round(1+32*rand(1));
            j=round(1+11*rand(1));
            m=round(1+32*rand(1));
            n=round(1+11*rand(1));
            if struct{1,topology}(i,j)~=0 && struct{1,topology}(m,n)~=0 && ref(m,n) ~= ref(i,j)
                MissingTwoData(i,j)=0;
                MissingTwoData(m,n)=0;
                Mixed_data=awgn(MissingTwoData,thisSNR,'measured');
                writematrix(Mixed_data,file_name);
                break
            end
        end  
    end
end
% For Val
thisSNR=20;
load('PMU_Val_22.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_22PMU_MissingTwoData_add20dB\Val\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Val\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        MissingTwoData=Data{topology,counter};
        while true
            i=round(1+32*rand(1));
            j=round(1+11*rand(1));
            m=round(1+32*rand(1));
            n=round(1+11*rand(1));
            if struct{1,topology}(i,j)~=0 && struct{1,topology}(m,n)~=0 && ref(m,n) ~= ref(i,j)
                MissingTwoData(i,j)=0;
                MissingTwoData(m,n)=0;
                Mixed_data=awgn(MissingTwoData,thisSNR,'measured');
                writematrix(Mixed_data,file_name);
                break
            end
        end  
    end
end