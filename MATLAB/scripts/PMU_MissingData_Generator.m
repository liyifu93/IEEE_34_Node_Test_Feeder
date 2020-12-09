%% Generate 33 PMU database - full
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
%% Generate 22 PMU database
% For Train
clear
folder_name = ('G:\34NODES_RUNNING\DataFolder\');
for topology = 1:9
    train_list = dir([folder_name,'\CNN\Train\',num2str(topology),'\*.csv']);
    train_len = length(train_list);
    for counter = 1:train_len
        filename = [folder_name,'\CNN\Train\',num2str(topology),'\',train_list(counter).name];
        Data{topology,counter} = readmatrix(filename,'Range','A1:L33') .* [0;0;1;1;0;1;1;1;1;0;1;1;1;0;0;1;1;0;1;0;1;1;1;1;0;1;0;1;0;1;1;1;1];
    end
end
save PMU_Train_22.mat

% For Test
clear
folder_name = ('G:\34NODES_RUNNING\DataFolder\');
for topology = 1:9
    test_list = dir([folder_name,'\CNN\Test\',num2str(topology),'\*.csv']);
    test_len = length(test_list);
    for counter = 1:test_len
        filename = [folder_name,'\CNN\Test\',num2str(topology),'\',test_list(counter).name];
        Data{topology,counter} = readmatrix(filename,'Range','A1:L33') .* [0;0;1;1;0;1;1;1;1;0;1;1;1;0;0;1;1;0;1;0;1;1;1;1;0;1;0;1;0;1;1;1;1];
    end
end
save PMU_Test_22.mat

% For Val
clear
folder_name = ('G:\34NODES_RUNNING\DataFolder\');
for topology = 1:9
    val_list = dir([folder_name,'\CNN\Val\',num2str(topology),'\*.csv']);
    val_len = length(val_list);
    for counter = 1:val_len
        filename = [folder_name,'\CNN\Val\',num2str(topology),'\',val_list(counter).name];
        Data{topology,counter} = readmatrix(filename,'Range','A1:L33') .* [0;0;1;1;0;1;1;1;1;0;1;1;1;0;0;1;1;0;1;0;1;1;1;1;0;1;0;1;0;1;1;1;1];
    end
end
save PMU_Val_22.mat
%% Generate 11 PMU database - v1
% For Train
clear
folder_name = ('G:\34NODES_RUNNING\DataFolder\');
for topology = 1:9
    train_list = dir([folder_name,'\CNN\Train\',num2str(topology),'\*.csv']);
    train_len = length(train_list);
    for counter = 1:train_len
        filename = [folder_name,'\CNN\Train\',num2str(topology),'\',train_list(counter).name];
        Data{topology,counter} = readmatrix(filename,'Range','A1:L33') .* [0;0;1;0;0;0;0;1;0;0;1;1;0;0;0;1;0;0;1;0;0;1;0;1;0;1;0;0;0;1;1;0;0];
    end
end
save PMU_Train_11.mat

% For Test
clear
folder_name = ('G:\34NODES_RUNNING\DataFolder\');
for topology = 1:9
    test_list = dir([folder_name,'\CNN\Test\',num2str(topology),'\*.csv']);
    test_len = length(test_list);
    for counter = 1:test_len
        filename = [folder_name,'\CNN\Test\',num2str(topology),'\',test_list(counter).name];
        Data{topology,counter} = readmatrix(filename,'Range','A1:L33') .* [0;0;1;0;0;0;0;1;0;0;1;1;0;0;0;1;0;0;1;0;0;1;0;1;0;1;0;0;0;1;1;0;0];
    end
end
save PMU_Test_11.mat

% For Val
clear
folder_name = ('G:\34NODES_RUNNING\DataFolder\');
for topology = 1:9
    val_list = dir([folder_name,'\CNN\Val\',num2str(topology),'\*.csv']);
    val_len = length(val_list);
    for counter = 1:val_len
        filename = [folder_name,'\CNN\Val\',num2str(topology),'\',val_list(counter).name];
        Data{topology,counter} = readmatrix(filename,'Range','A1:L33') .* [0;0;1;0;0;0;0;1;0;0;1;1;0;0;0;1;0;0;1;0;0;1;0;1;0;1;0;0;0;1;1;0;0];
    end
end
save PMU_Val_11.mat
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

% struct_22 = [0;0;1;1;0;1;1;1;1;0;1;1;1;0;0;1;1;0;1;0;1;1;1;1;0;1;0;1;0;1;1;1;1];
%% Missing one data
% For Train
load('PMU_Train.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_MissingOneData\Train\',num2str(topology),'\'];
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
                writematrix(MissingOneData,file_name);
                break
            end
        end  
    end
end
% For Test
load('PMU_Test.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_MissingOneData\Test\',num2str(topology),'\'];
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
                writematrix(MissingOneData,file_name);
                break
            end
        end  
    end
end
% For Val
load('PMU_Val.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_MissingOneData\Val\',num2str(topology),'\'];
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
                writematrix(MissingOneData,file_name);
                break
            end
        end  
    end
end
%% Missing one data based on 40dB noise
% For Train
load('PMU_Train.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_MissingOneData_BasedOn_40dB\Train\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN_40dB\Train\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        MissingOneData=Data{topology,counter};
        while true
            i=round(1+32*rand(1));
            j=round(1+11*rand(1));
            if struct{1,topology}(i,j)~=0
                MissingOneData(i,j)=0;
                writematrix(MissingOneData,file_name);
                break
            end
        end  
    end
end
% For Test
load('PMU_Test.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_MissingOneData_BasedOn_40dB\Test\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN_40dB\Test\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        MissingOneData=Data{topology,counter};
        while true
            i=round(1+32*rand(1));
            j=round(1+11*rand(1));
            if struct{1,topology}(i,j)~=0
                MissingOneData(i,j)=0;
                writematrix(MissingOneData,file_name);
                break
            end
        end  
    end
end
% For Val
load('PMU_Val.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_MissingOneData_BasedOn_40dB\Val\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN_40dB\Val\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        MissingOneData=Data{topology,counter};
        while true
            i=round(1+32*rand(1));
            j=round(1+11*rand(1));
            if struct{1,topology}(i,j)~=0
                MissingOneData(i,j)=0;
                writematrix(MissingOneData,file_name);
                break
            end
        end  
    end
end
%% Missing one data based on 40dB noise - 900 Mannual
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
    Dirocry = [folder_name,'\CNN_MissingOneData_BasedOn_40dB_900Mannual\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\PMU_PU_900Mannual--Jun-09-2020-23_00\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        save_file_name=[Dirocry,num2str(counter),'.csv'];
        image=Data{topology,counter};
        Noise40dB_Data=awgn(image,40,'measured');
        while true
            i=round(1+32*rand(1));
            j=round(1+11*rand(1));
            if struct{1,topology}(i,j)~=0
                Noise40dB_Data(i,j)=0;
                writematrix(Noise40dB_Data,save_file_name);
                break
            end
        end  
    end
end
%% Missing two data      
% For Train
load('PMU_Train.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_MissingTwoData\Train\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Train\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        MissingOneData=Data{topology,counter};
        while true
            i=round(1+32*rand(1));
            j=round(1+11*rand(1));
            m=round(1+32*rand(1));
            n=round(1+11*rand(1));
            if struct{1,topology}(i,j)~=0 && struct{1,topology}(m,n)~=0 && ref(m,n) ~= ref(i,j)
                MissingOneData(i,j)=0;
                MissingOneData(m,n)=0;
                writematrix(MissingOneData,file_name);
                break
            end
        end  
    end
end
% For Test
load('PMU_Test.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_MissingTwoData\Test\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Test\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        MissingOneData=Data{topology,counter};
        while true
            i=round(1+32*rand(1));
            j=round(1+11*rand(1));
            m=round(1+32*rand(1));
            n=round(1+11*rand(1));
            if struct{1,topology}(i,j)~=0 && struct{1,topology}(m,n)~=0 && ref(m,n) ~= ref(i,j)
                MissingOneData(i,j)=0;
                MissingOneData(m,n)=0;
                writematrix(MissingOneData,file_name);
                break
            end
        end  
    end
end
% For Val
load('PMU_Val.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_MissingTwoData\Val\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Val\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        MissingOneData=Data{topology,counter};
        while true
            i=round(1+32*rand(1));
            j=round(1+11*rand(1));
            m=round(1+32*rand(1));
            n=round(1+11*rand(1));
            if struct{1,topology}(i,j)~=0 && struct{1,topology}(m,n)~=0 && ref(m,n) ~= ref(i,j)
                MissingOneData(i,j)=0;
                MissingOneData(m,n)=0;
                writematrix(MissingOneData,file_name);
                break
            end
        end  
    end
end
%% Missing two data based on 40dB noise - 900 Mannual
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
    Dirocry = [folder_name,'\CNN_MissingTwoData_BasedOn_40dB_900Mannual\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\PMU_PU_900Mannual--Jun-09-2020-23_00\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        save_file_name=[Dirocry,num2str(counter),'.csv'];
        image=Data{topology,counter};
        Noise40dB_Data=awgn(image,40,'measured');
        while true
            i=round(1+32*rand(1));
            j=round(1+11*rand(1));
            m=round(1+32*rand(1));
            n=round(1+11*rand(1));
            if struct{1,topology}(i,j)~=0 && struct{1,topology}(m,n)~=0 && ref(m,n) ~= ref(i,j)
                Noise40dB_Data(i,j)=0;
                Noise40dB_Data(m,n)=0;
                writematrix(Noise40dB_Data,save_file_name);
                break
            end
        end  
    end
end
%% Missing two data based on random noise
% For Train
load('PMU_Train.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_MissingTwoData_BasedOn_random_dB\Train\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN_random_dB\Train\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        Mixed_Data=Data{topology,counter};
        while true
            i=round(1+32*rand(1));
            j=round(1+11*rand(1));
            m=round(1+32*rand(1));
            n=round(1+11*rand(1));
            if struct{1,topology}(i,j)~=0 && struct{1,topology}(m,n)~=0 && ref(m,n) ~= ref(i,j)
                Mixed_Data(i,j)=0;
                Mixed_Data(m,n)=0;
                writematrix(Mixed_Data,file_name);
                break
            end
        end  
    end
end
% For Test
load('PMU_Test.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_MissingTwoData_BasedOn_random_dB\Test\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN_random_dB\Test\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        Mixed_Data=Data{topology,counter};
        while true
            i=round(1+32*rand(1));
            j=round(1+11*rand(1));
            m=round(1+32*rand(1));
            n=round(1+11*rand(1));
            if struct{1,topology}(i,j)~=0 && struct{1,topology}(m,n)~=0 && ref(m,n) ~= ref(i,j)
                Mixed_Data(i,j)=0;
                Mixed_Data(m,n)=0;
                writematrix(Mixed_Data,file_name);
                break
            end
        end  
    end
end
% For Val
load('PMU_Val.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_MissingTwoData_BasedOn_random_dB\Val\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN_random_dB\Val\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        Mixed_Data=Data{topology,counter};
        while true
            i=round(1+32*rand(1));
            j=round(1+11*rand(1));
            m=round(1+32*rand(1));
            n=round(1+11*rand(1));
            if struct{1,topology}(i,j)~=0 && struct{1,topology}(m,n)~=0 && ref(m,n) ~= ref(i,j)
                Mixed_Data(i,j)=0;
                Mixed_Data(m,n)=0;
                writematrix(Mixed_Data,file_name);
                break
            end
        end  
    end
end
%% Missing One PMU
% For Train
load('PMU_Train.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_MissingOnePMU\Train\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Train\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        MissingOnePMU=Data{topology,counter};
        row=round(1+32*rand(1));
        MissingOnePMU(row,:)=0;
        writematrix(MissingOnePMU,file_name);
    end
end
% For Test
load('PMU_Test.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_MissingOnePMU\Test\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Test\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        MissingOnePMU=Data{topology,counter};
        row=round(1+32*rand(1));
        MissingOnePMU(row,:)=0;
        writematrix(MissingOnePMU,file_name); 
    end
end
% For Val
load('PMU_Val.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_MissingOnePMU\Val\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Val\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        MissingOnePMU=Data{topology,counter};
        row=round(1+32*rand(1));
        MissingOnePMU(row,:)=0;
        writematrix(MissingOnePMU,file_name);  
    end
end
%% Missing Two PMU
% For Train
load('PMU_Train.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_MissingTwoPMU\Train\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Train\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        MissingTwoPMU=Data{topology,counter};
        while true
            row1=round(1+32*rand(1));
            row2=round(1+32*rand(1));
            if row1 ~= row2
                MissingTwoPMU(row1,:)=0;
                MissingTwoPMU(row2,:)=0;
                writematrix(MissingTwoPMU,file_name);
                break
            end
        end
    end
end
% For Test
load('PMU_Test.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_MissingTwoPMU\Test\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Test\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        MissingTwoPMU=Data{topology,counter};
        while true
            row1=round(1+32*rand(1));
            row2=round(1+32*rand(1));
            if row1 ~= row2
                MissingTwoPMU(row1,:)=0;
                MissingTwoPMU(row2,:)=0;
                writematrix(MissingTwoPMU,file_name);
                break
            end
        end
    end
end
% For Val
load('PMU_Val.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_MissingTwoPMU\Val\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Val\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        MissingTwoPMU=Data{topology,counter};
        while true
            row1=round(1+32*rand(1));
            row2=round(1+32*rand(1));
            if row1 ~= row2
                MissingTwoPMU(row1,:)=0;
                MissingTwoPMU(row2,:)=0;
                writematrix(MissingTwoPMU,file_name);
                break
            end
        end  
    end
end
%% Missing Three PMU
% For Train
load('PMU_Train.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_MissingThreePMU\Train\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Train\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        MissingThreePMU=Data{topology,counter};
        while true
            row1=round(1+32*rand(1));
            row2=round(1+32*rand(1));
            row3=round(1+32*rand(1));
            if row1 ~= row2 && row2 ~= row3 && row1 ~= row3
                MissingThreePMU(row1,:)=0;
                MissingThreePMU(row2,:)=0;
                MissingThreePMU(row3,:)=0;
                writematrix(MissingThreePMU,file_name);
                break
            end
        end
    end
end
% For Test
load('PMU_Test.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_MissingThreePMU\Test\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Test\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        MissingThreePMU=Data{topology,counter};
        while true
            row1=round(1+32*rand(1));
            row2=round(1+32*rand(1));
            row3=round(1+32*rand(1));
            if row1 ~= row2 && row2 ~= row3 && row1 ~= row3
                MissingThreePMU(row1,:)=0;
                MissingThreePMU(row2,:)=0;
                MissingThreePMU(row3,:)=0;
                writematrix(MissingThreePMU,file_name);
                break
            end
        end
    end
end
% For Val
load('PMU_Val.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_MissingThreePMU\Val\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Val\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        MissingThreePMU=Data{topology,counter};
        while true
            row1=round(1+32*rand(1));
            row2=round(1+32*rand(1));
            row3=round(1+32*rand(1));
            if row1 ~= row2 && row2 ~= row3 && row1 ~= row3
                MissingThreePMU(row1,:)=0;
                MissingThreePMU(row2,:)=0;
                MissingThreePMU(row3,:)=0;
                writematrix(MissingThreePMU,file_name);
                break
            end
        end  
    end
end
%% Missing Four PMU - Duplicated
% For Train
load('PMU_Train.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_MissingFourPMU_duplicated\Train\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Train\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        MissingFourPMU=Data{topology,counter};
        row1=round(1+32*rand(1));
        row2=round(1+32*rand(1));
        row3=round(1+32*rand(1));
        row4=round(1+32*rand(1));
        MissingFourPMU(row1,:)=0;
        MissingFourPMU(row2,:)=0;
        MissingFourPMU(row3,:)=0;
        MissingFourPMU(row4,:)=0;
        writematrix(MissingFourPMU,file_name);
    end
end
% For Test
load('PMU_Test.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_MissingFourPMU_duplicated\Test\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Test\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        MissingFourPMU=Data{topology,counter};
        row1=round(1+32*rand(1));
        row2=round(1+32*rand(1));
        row3=round(1+32*rand(1));
        row4=round(1+32*rand(1));
        MissingFourPMU(row1,:)=0;
        MissingFourPMU(row2,:)=0;
        MissingFourPMU(row3,:)=0;
        MissingFourPMU(row4,:)=0;
        writematrix(MissingFourPMU,file_name);
    end
end
% For Val
load('PMU_Val.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_MissingFourPMU_duplicated\Val\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Val\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        MissingFourPMU=Data{topology,counter};
        row1=round(1+32*rand(1));
        row2=round(1+32*rand(1));
        row3=round(1+32*rand(1));
        row4=round(1+32*rand(1));
        MissingFourPMU(row1,:)=0;
        MissingFourPMU(row2,:)=0;
        MissingFourPMU(row3,:)=0;
        MissingFourPMU(row4,:)=0;
        writematrix(MissingFourPMU,file_name);
    end
end
%% Missing Five PMU - Duplicated
% For Train
load('PMU_Train.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_MissingFivePMU_duplicated\Train\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Train\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        MissingFivePMU=Data{topology,counter};
        row1=round(1+32*rand(1));
        row2=round(1+32*rand(1));
        row3=round(1+32*rand(1));
        row4=round(1+32*rand(1));
        row5=round(1+32*rand(1));
        MissingFivePMU(row1,:)=0;
        MissingFivePMU(row2,:)=0;
        MissingFivePMU(row3,:)=0;
        MissingFivePMU(row4,:)=0;
        MissingFivePMU(row5,:)=0;
        writematrix(MissingFivePMU,file_name);
    end
end
% For Test
load('PMU_Test.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_MissingFivePMU_duplicated\Test\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Test\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        MissingFivePMU=Data{topology,counter};
        row1=round(1+32*rand(1));
        row2=round(1+32*rand(1));
        row3=round(1+32*rand(1));
        row4=round(1+32*rand(1));
        row5=round(1+32*rand(1));
        MissingFivePMU(row1,:)=0;
        MissingFivePMU(row2,:)=0;
        MissingFivePMU(row3,:)=0;
        MissingFivePMU(row4,:)=0;
        MissingFivePMU(row5,:)=0;
        writematrix(MissingFivePMU,file_name);
    end
end
% For Val
load('PMU_Val.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_MissingFivePMU_duplicated\Val\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Val\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        MissingFivePMU=Data{topology,counter};
        row1=round(1+32*rand(1));
        row2=round(1+32*rand(1));
        row3=round(1+32*rand(1));
        row4=round(1+32*rand(1));
        row5=round(1+32*rand(1));
        MissingFivePMU(row1,:)=0;
        MissingFivePMU(row2,:)=0;
        MissingFivePMU(row3,:)=0;
        MissingFivePMU(row4,:)=0;
        MissingFivePMU(row5,:)=0;
        writematrix(MissingFivePMU,file_name);
    end
end
%% Missing Six PMU - Duplicated
% For Train
load('PMU_Train.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_MissingSixPMU_duplicated\Train\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Train\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        MissingSixPMU=Data{topology,counter};
        row1=round(1+32*rand(1));row2=round(1+32*rand(1));row3=round(1+32*rand(1));
        row4=round(1+32*rand(1));row5=round(1+32*rand(1));row6=round(1+32*rand(1));
        MissingSixPMU(row1,:)=0;MissingSixPMU(row2,:)=0;MissingSixPMU(row3,:)=0;
        MissingSixPMU(row4,:)=0;MissingSixPMU(row5,:)=0;MissingSixPMU(row6,:)=0;
        writematrix(MissingSixPMU,file_name);
    end
end
% For Test
load('PMU_Test.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_MissingSixPMU_duplicated\Test\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Test\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        MissingSixPMU=Data{topology,counter};
        row1=round(1+32*rand(1));row2=round(1+32*rand(1));row3=round(1+32*rand(1));
        row4=round(1+32*rand(1));row5=round(1+32*rand(1));row6=round(1+32*rand(1));
        MissingSixPMU(row1,:)=0;MissingSixPMU(row2,:)=0;MissingSixPMU(row3,:)=0;
        MissingSixPMU(row4,:)=0;MissingSixPMU(row5,:)=0;MissingSixPMU(row6,:)=0;
        writematrix(MissingSixPMU,file_name);
    end
end
% For Val
load('PMU_Val.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_MissingSixPMU_duplicated\Val\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Val\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        MissingSixPMU=Data{topology,counter};
        row1=round(1+32*rand(1));row2=round(1+32*rand(1));row3=round(1+32*rand(1));
        row4=round(1+32*rand(1));row5=round(1+32*rand(1));row6=round(1+32*rand(1));
        MissingSixPMU(row1,:)=0;MissingSixPMU(row2,:)=0;MissingSixPMU(row3,:)=0;
        MissingSixPMU(row4,:)=0;MissingSixPMU(row5,:)=0;MissingSixPMU(row6,:)=0;
        writematrix(MissingSixPMU,file_name);
    end
end
%% Missing Seven PMU - Duplicated
% For Train
load('PMU_Train.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_MissingSevenPMU_duplicated\Train\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Train\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        MissingSixPMU=Data{topology,counter};
        row1=round(1+32*rand(1));row2=round(1+32*rand(1));row3=round(1+32*rand(1));
        row4=round(1+32*rand(1));row5=round(1+32*rand(1));row6=round(1+32*rand(1));
        MissingSixPMU(row1,:)=0;MissingSixPMU(row2,:)=0;MissingSixPMU(row3,:)=0;
        MissingSixPMU(row4,:)=0;MissingSixPMU(row5,:)=0;MissingSixPMU(row6,:)=0;
        writematrix(MissingSixPMU,file_name);
    end
end
% For Test
load('PMU_Test.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_MissingSevenPMU_duplicated\Test\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Test\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        MissingSixPMU=Data{topology,counter};
        row1=round(1+32*rand(1));row2=round(1+32*rand(1));row3=round(1+32*rand(1));
        row4=round(1+32*rand(1));row5=round(1+32*rand(1));row6=round(1+32*rand(1));
        MissingSixPMU(row1,:)=0;MissingSixPMU(row2,:)=0;MissingSixPMU(row3,:)=0;
        MissingSixPMU(row4,:)=0;MissingSixPMU(row5,:)=0;MissingSixPMU(row6,:)=0;
        writematrix(MissingSixPMU,file_name);
    end
end
% For Val
load('PMU_Val.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_MissingSixPMU_duplicated\Val\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Val\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        MissingSixPMU=Data{topology,counter};
        row1=round(1+32*rand(1));row2=round(1+32*rand(1));row3=round(1+32*rand(1));
        row4=round(1+32*rand(1));row5=round(1+32*rand(1));row6=round(1+32*rand(1));
        MissingSixPMU(row1,:)=0;MissingSixPMU(row2,:)=0;MissingSixPMU(row3,:)=0;
        MissingSixPMU(row4,:)=0;MissingSixPMU(row5,:)=0;MissingSixPMU(row6,:)=0;
        writematrix(MissingSixPMU,file_name);
    end
end
%% Missing Ten PMU - Duplicated
% For Train
load('PMU_Train.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_MissingTenPMU_duplicated\Train\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Train\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        MissingTenPMU=Data{topology,counter};
        row1=round(1+32*rand(1));row2=round(1+32*rand(1));row3=round(1+32*rand(1));row4=round(1+32*rand(1));row5=round(1+32*rand(1));
        row6=round(1+32*rand(1));row7=round(1+32*rand(1));row8=round(1+32*rand(1));row9=round(1+32*rand(1));row10=round(1+32*rand(1));
        MissingTenPMU(row1,:)=0;MissingTenPMU(row2,:)=0;MissingTenPMU(row3,:)=0;MissingTenPMU(row4,:)=0;MissingTenPMU(row5,:)=0;
        MissingTenPMU(row6,:)=0;MissingTenPMU(row7,:)=0;MissingTenPMU(row8,:)=0;MissingTenPMU(row9,:)=0;MissingTenPMU(row10,:)=0;
        writematrix(MissingTenPMU,file_name);
    end
end
% For Test
load('PMU_Test.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_MissingTenPMU_duplicated\Test\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Test\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        MissingTenPMU=Data{topology,counter};
        row1=round(1+32*rand(1));row2=round(1+32*rand(1));row3=round(1+32*rand(1));row4=round(1+32*rand(1));row5=round(1+32*rand(1));
        row6=round(1+32*rand(1));row7=round(1+32*rand(1));row8=round(1+32*rand(1));row9=round(1+32*rand(1));row10=round(1+32*rand(1));
        MissingTenPMU(row1,:)=0;MissingTenPMU(row2,:)=0;MissingTenPMU(row3,:)=0;MissingTenPMU(row4,:)=0;MissingTenPMU(row5,:)=0;
        MissingTenPMU(row6,:)=0;MissingTenPMU(row7,:)=0;MissingTenPMU(row8,:)=0;MissingTenPMU(row9,:)=0;MissingTenPMU(row10,:)=0;
        writematrix(MissingTenPMU,file_name);
    end
end
% For Val
load('PMU_Val.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_MissingTenPMU_duplicated\Val\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Val\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        MissingTenPMU=Data{topology,counter};
        row1=round(1+32*rand(1));row2=round(1+32*rand(1));row3=round(1+32*rand(1));row4=round(1+32*rand(1));row5=round(1+32*rand(1));
        row6=round(1+32*rand(1));row7=round(1+32*rand(1));row8=round(1+32*rand(1));row9=round(1+32*rand(1));row10=round(1+32*rand(1));
        MissingTenPMU(row1,:)=0;MissingTenPMU(row2,:)=0;MissingTenPMU(row3,:)=0;MissingTenPMU(row4,:)=0;MissingTenPMU(row5,:)=0;
        MissingTenPMU(row6,:)=0;MissingTenPMU(row7,:)=0;MissingTenPMU(row8,:)=0;MissingTenPMU(row9,:)=0;MissingTenPMU(row10,:)=0;
        writematrix(MissingTenPMU,file_name);
    end
end
%% 22 PMU Data
% For Train
load('PMU_Train.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_22PMU\Train\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Train\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        uPMU=Data{topology,counter};
        uPMU = uPMU .* [0;0;1;1;0;1;1;1;1;0;1;1;1;0;0;1;1;0;1;0;1;1;1;1;0;1;0;1;0;1;1;1;1];
        writematrix(uPMU,file_name);
    end
end
% For Test
load('PMU_Test.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_22PMU\Test\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Test\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        uPMU=Data{topology,counter};
        uPMU = uPMU .* [0;0;1;1;0;1;1;1;1;0;1;1;1;0;0;1;1;0;1;0;1;1;1;1;0;1;0;1;0;1;1;1;1];
        writematrix(uPMU,file_name);
    end
end
% For Val
load('PMU_Val.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_22PMU\Val\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Val\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        uPMU=Data{topology,counter};
        uPMU = uPMU .* [0;0;1;1;0;1;1;1;1;0;1;1;1;0;0;1;1;0;1;0;1;1;1;1;0;1;0;1;0;1;1;1;1];
        writematrix(uPMU,file_name);
    end
end
%% 22 PMU Data - Missing One Data
% For Train
load('PMU_Train_22.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_22PMU_MissingOneData\Train\',num2str(topology),'\'];
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
                writematrix(MissingOneData,file_name);
                break
            end
        end  
    end
end
% For Test
load('PMU_Test_22.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_22PMU_MissingOneData\Test\',num2str(topology),'\'];
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
                writematrix(MissingOneData,file_name);
                break
            end
        end  
    end
end
% For Val
load('PMU_Val_22.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_22PMU_MissingOneData\Val\',num2str(topology),'\'];
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
                writematrix(MissingOneData,file_name);
                break
            end
        end  
    end
end
%% 22 PMU Data - Missing two data      
% For Train
load('PMU_Train_22.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_22PMU_MissingTwoData\Train\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Train\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        MissingOneData=Data{topology,counter};
        while true
            i=round(1+32*rand(1));
            j=round(1+11*rand(1));
            m=round(1+32*rand(1));
            n=round(1+11*rand(1));
            if struct{1,topology}(i,j)~=0 && struct{1,topology}(m,n)~=0 && ref(m,n) ~= ref(i,j)
                MissingOneData(i,j)=0;
                MissingOneData(m,n)=0;
                writematrix(MissingOneData,file_name);
                break
            end
        end  
    end
end
% For Test
load('PMU_Test_22.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_22PMU_MissingTwoData\Test\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Test\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        MissingOneData=Data{topology,counter};
        while true
            i=round(1+32*rand(1));
            j=round(1+11*rand(1));
            m=round(1+32*rand(1));
            n=round(1+11*rand(1));
            if struct{1,topology}(i,j)~=0 && struct{1,topology}(m,n)~=0 && ref(m,n) ~= ref(i,j)
                MissingOneData(i,j)=0;
                MissingOneData(m,n)=0;
                writematrix(MissingOneData,file_name);
                break
            end
        end  
    end
end
% For Val
load('PMU_Val_22.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_22PMU_MissingTwoData\Val\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Val\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        MissingOneData=Data{topology,counter};
        while true
            i=round(1+32*rand(1));
            j=round(1+11*rand(1));
            m=round(1+32*rand(1));
            n=round(1+11*rand(1));
            if struct{1,topology}(i,j)~=0 && struct{1,topology}(m,n)~=0 && ref(m,n) ~= ref(i,j)
                MissingOneData(i,j)=0;
                MissingOneData(m,n)=0;
                writematrix(MissingOneData,file_name);
                break
            end
        end  
    end
end
%% 11 PMU Data - v1
% For Train
load('PMU_Train_11.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_11PMU_v1\Train\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Train\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        uPMU=Data{topology,counter};
        writematrix(uPMU,file_name);
    end
end
% For Test
load('PMU_Test_11.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_11PMU_v1\Test\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Test\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        uPMU=Data{topology,counter};
        writematrix(uPMU,file_name);
    end
end
% For Val
load('PMU_Val_11.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_11PMU_v1\Val\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Val\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        uPMU=Data{topology,counter};
        writematrix(uPMU,file_name);
    end
end
%% 11 PMU Data - v2
% For Train
load('PMU_Train.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_11PMU_v2\Train\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Train\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        uPMU=Data{topology,counter};
        uPMU = uPMU .* [0;0;1;0;0;0;0;1;0;0;1;1;0;0;0;0;0;0;1;0;0;1;0;1;0;1;0;0;0;1;1;1;0];
        writematrix(uPMU,file_name);
    end
end
% For Test
load('PMU_Test.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_11PMU_v2\Test\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Test\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        uPMU=Data{topology,counter};
        uPMU = uPMU .* [0;0;1;0;0;0;0;1;0;0;1;1;0;0;0;0;0;0;1;0;0;1;0;1;0;1;0;0;0;1;1;1;0];
        writematrix(uPMU,file_name);
    end
end
% For Val
load('PMU_Val.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_11PMU_v2\Val\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Val\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        uPMU=Data{topology,counter};
        uPMU = uPMU .* [0;0;1;0;0;0;0;1;0;0;1;1;0;0;0;0;0;0;1;0;0;1;0;1;0;1;0;0;0;1;1;1;0];
        writematrix(uPMU,file_name);
    end
end
%% 12 PMU Data - v1
% For Train
load('PMU_Train.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_12PMU\Train\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Train\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        uPMU=Data{topology,counter};
        uPMU = uPMU .* [0;0;1;0;0;0;0;1;0;0;1;1;0;0;0;1;0;0;1;0;0;1;0;1;0;1;0;0;0;1;1;1;0];
        writematrix(uPMU,file_name);
    end
end
% For Test
load('PMU_Test.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_12PMU\Test\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Test\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        uPMU=Data{topology,counter};
        uPMU = uPMU .* [0;0;1;0;0;0;0;1;0;0;1;1;0;0;0;1;0;0;1;0;0;1;0;1;0;1;0;0;0;1;1;1;0];
        writematrix(uPMU,file_name);
    end
end
% For Val
load('PMU_Val.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_12PMU\Val\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Val\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        uPMU=Data{topology,counter};
        uPMU = uPMU .* [0;0;1;0;0;0;0;1;0;0;1;1;0;0;0;1;0;0;1;0;0;1;0;1;0;1;0;0;0;1;1;1;0];
        writematrix(uPMU,file_name);
    end
end
%% 10 PMU Data - v1
% For Train
load('PMU_Train.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_10PMU_v1\Train\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Train\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        uPMU=Data{topology,counter};
        uPMU = uPMU .* [0;0;1;0;0;0;0;1;0;0;1;0;0;0;0;0;0;0;1;0;0;1;0;1;0;1;0;0;0;1;1;1;0];
        writematrix(uPMU,file_name);
    end
end
% For Test
load('PMU_Test.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_10PMU_v1\Test\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Test\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        uPMU=Data{topology,counter};
        uPMU = uPMU .* [0;0;1;0;0;0;0;1;0;0;1;0;0;0;0;0;0;0;1;0;0;1;0;1;0;1;0;0;0;1;1;1;0];
        writematrix(uPMU,file_name);
    end
end
% For Val
load('PMU_Val.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_10PMU_v1\Val\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Val\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        uPMU=Data{topology,counter};
        uPMU = uPMU .* [0;0;1;0;0;0;0;1;0;0;1;0;0;0;0;0;0;0;1;0;0;1;0;1;0;1;0;0;0;1;1;1;0];
        writematrix(uPMU,file_name);
    end
end
%% 9 PMU Data - v1
% For Train
load('PMU_Train.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_9PMU_v1\Train\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Train\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        uPMU=Data{topology,counter};
        uPMU = uPMU .* [0;0;1;0;0;0;0;1;0;0;1;0;0;0;0;0;0;0;0;0;0;1;0;1;0;1;0;0;0;1;1;1;0];
        writematrix(uPMU,file_name);
    end
end
% For Test
load('PMU_Test.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_9PMU_v1\Test\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Test\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        uPMU=Data{topology,counter};
        uPMU = uPMU .* [0;0;1;0;0;0;0;1;0;0;1;0;0;0;0;0;0;0;0;0;0;1;0;1;0;1;0;0;0;1;1;1;0];
        writematrix(uPMU,file_name);
    end
end
% For Val
load('PMU_Val.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_9PMU_v1\Val\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Val\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        uPMU=Data{topology,counter};
        uPMU = uPMU .* [0;0;1;0;0;0;0;1;0;0;1;0;0;0;0;0;0;0;0;0;0;1;0;1;0;1;0;0;0;1;1;1;0];
        writematrix(uPMU,file_name);
    end
end
%% 8 PMU Data - v1
% For Train
load('PMU_Train.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_8PMU_v1\Train\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Train\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        uPMU=Data{topology,counter};
        uPMU = uPMU .* [0;0;1;0;0;0;0;1;0;0;1;0;0;0;0;0;0;0;0;0;0;1;0;1;0;1;0;0;0;0;1;1;0];
        writematrix(uPMU,file_name);
    end
end
% For Test
load('PMU_Test.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_8PMU_v1\Test\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Test\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        uPMU=Data{topology,counter};
        uPMU = uPMU .* [0;0;1;0;0;0;0;1;0;0;1;0;0;0;0;0;0;0;0;0;0;1;0;1;0;1;0;0;0;0;1;1;0];
        writematrix(uPMU,file_name);
    end
end
% For Val
load('PMU_Val.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_8PMU_v1\Val\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Val\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        uPMU=Data{topology,counter};
        uPMU = uPMU .* [0;0;1;0;0;0;0;1;0;0;1;0;0;0;0;0;0;0;0;0;0;1;0;1;0;1;0;0;0;0;1;1;0];
        writematrix(uPMU,file_name);
    end
end
%% 7 PMU Data - v1
% For Train
load('PMU_Train.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_7PMU_v1\Train\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Train\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        uPMU=Data{topology,counter};
        uPMU = uPMU .* [0;0;1;0;0;0;0;1;0;0;1;0;0;0;0;0;0;0;0;0;0;0;0;1;0;1;0;0;0;0;1;1;0];
        writematrix(uPMU,file_name);
    end
end
% For Test
load('PMU_Test.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_7PMU_v1\Test\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Test\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        uPMU=Data{topology,counter};
        uPMU = uPMU .* [0;0;1;0;0;0;0;1;0;0;1;0;0;0;0;0;0;0;0;0;0;0;0;1;0;1;0;0;0;0;1;1;0];
        writematrix(uPMU,file_name);
    end
end
% For Val
load('PMU_Val.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_7PMU_v1\Val\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Val\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        uPMU=Data{topology,counter};
        uPMU = uPMU .* [0;0;1;0;0;0;0;1;0;0;1;0;0;0;0;0;0;0;0;0;0;0;0;1;0;1;0;0;0;0;1;1;0];
        writematrix(uPMU,file_name);
    end
end
%% 6 PMU Data - v1
% For Train
load('PMU_Train.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_6PMU_v1\Train\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Train\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        uPMU=Data{topology,counter};
        uPMU = uPMU .* [0;0;1;0;0;0;0;1;0;0;1;0;0;0;0;0;0;0;0;0;0;0;0;0;0;1;0;0;0;0;1;1;0];
        writematrix(uPMU,file_name);
    end
end
% For Test
load('PMU_Test.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_6PMU_v1\Test\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Test\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        uPMU=Data{topology,counter};
        uPMU = uPMU .* [0;0;1;0;0;0;0;1;0;0;1;0;0;0;0;0;0;0;0;0;0;0;0;0;0;1;0;0;0;0;1;1;0];
        writematrix(uPMU,file_name);
    end
end
% For Val
load('PMU_Val.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_6PMU_v1\Val\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Val\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        uPMU=Data{topology,counter};
        uPMU = uPMU .* [0;0;1;0;0;0;0;1;0;0;1;0;0;0;0;0;0;0;0;0;0;0;0;0;0;1;0;0;0;0;1;1;0];
        writematrix(uPMU,file_name);
    end
end
%% 5 PMU Data - v1
% For Train
load('PMU_Train.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_5PMU_v1\Train\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Train\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        uPMU=Data{topology,counter};
        uPMU = uPMU .* [0;0;1;0;0;0;0;1;0;0;1;0;0;0;0;0;0;0;0;0;0;0;0;0;0;1;0;0;0;0;1;0;0];
        writematrix(uPMU,file_name);
    end
end
% For Test
load('PMU_Test.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_5PMU_v1\Test\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Test\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        uPMU=Data{topology,counter};
        uPMU = uPMU .* [0;0;1;0;0;0;0;1;0;0;1;0;0;0;0;0;0;0;0;0;0;0;0;0;0;1;0;0;0;0;1;0;0];
        writematrix(uPMU,file_name);
    end
end
% For Val
load('PMU_Val.mat')
folder_name=('G:\34NODES_RUNNING\DataFolder\');
for topology=1:9
    Dirocry = [folder_name,'\CNN_5PMU_v1\Val\',num2str(topology),'\'];
    mkdir(Dirocry);
    list=dir([folder_name,'\CNN\Val\',num2str(topology),'\*.csv']);
    len=length(list);
    for counter=1:len
        file_name=[Dirocry,num2str(counter),'.csv'];
        uPMU=Data{topology,counter};
        uPMU = uPMU .* [0;0;1;0;0;0;0;1;0;0;1;0;0;0;0;0;0;0;0;0;0;0;0;0;0;1;0;0;0;0;1;0;0];
        writematrix(uPMU,file_name);
    end
end