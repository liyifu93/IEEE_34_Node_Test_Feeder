function save_data(Load,SW,n,Dirocry)
%UNTITLED3 Summary of this function goes here
%Detailed explanation goes here
load1=Load(1,1:9);
load2=Load(1,10:12);
load3=Load(1,13:21);
load4=Load(1,22:30);
load5=Load(1,31:39);
result=table(SW,load1,load2,load3,load4,load5);
% file_name = ['Topology',num2str(m),'Case',num2str(n),'.csv'];
% writetable(result,file_name);
file_name = [Dirocry,'\',num2str(n),'.csv'];
writetable(result,file_name);
end