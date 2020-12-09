function save_results(num,simOut,Dirocry,simu_number)
% function save_results(logsout,m,Dirocry)

for round=1:simu_number
    PMU802=[simOut(1,round).logsout{18}.Values.Data(1,:) simOut(1,round).logsout{1}.Values.Data(1,:)];
    PMU808=[simOut(1,round).logsout{19}.Values.Data(1,:) simOut(1,round).logsout{2}.Values.Data(1,:)];
    PMU816=[simOut(1,round).logsout{20}.Values.Data(1,:) simOut(1,round).logsout{3}.Values.Data(1,:)];
    PMU824=[simOut(1,round).logsout{21}.Values.Data(1,:) simOut(1,round).logsout{4}.Values.Data(1,:)];
    PMU828=[simOut(1,round).logsout{22}.Values.Data(1,:) simOut(1,round).logsout{5}.Values.Data(1,:)];
    PMU830=[simOut(1,round).logsout{23}.Values.Data(1,:) simOut(1,round).logsout{6}.Values.Data(1,:)];
    PMU832=[simOut(1,round).logsout{24}.Values.Data(1,:) simOut(1,round).logsout{7}.Values.Data(1,:)];
    PMU834=[simOut(1,round).logsout{25}.Values.Data(1,:) simOut(1,round).logsout{8}.Values.Data(1,:)];
    PMU836=[simOut(1,round).logsout{26}.Values.Data(1,:) simOut(1,round).logsout{9}.Values.Data(1,:)];
    PMU840=[simOut(1,round).logsout{27}.Values.Data(1,:) simOut(1,round).logsout{10}.Values.Data(1,:)];
    PMU842=[simOut(1,round).logsout{28}.Values.Data(1,:) simOut(1,round).logsout{11}.Values.Data(1,:)];
    PMU844=[simOut(1,round).logsout{29}.Values.Data(1,:) simOut(1,round).logsout{12}.Values.Data(1,:)];
    PMU846=[simOut(1,round).logsout{30}.Values.Data(1,:) simOut(1,round).logsout{13}.Values.Data(1,:)];
    PMU848=[simOut(1,round).logsout{31}.Values.Data(1,:) simOut(1,round).logsout{14}.Values.Data(1,:)];
    PMU858=[simOut(1,round).logsout{32}.Values.Data(1,:) simOut(1,round).logsout{15}.Values.Data(1,:)];
    PMU860=[simOut(1,round).logsout{33}.Values.Data(1,:) simOut(1,round).logsout{16}.Values.Data(1,:)];
    PMU890=[simOut(1,round).logsout{34}.Values.Data(1,:) simOut(1,round).logsout{17}.Values.Data(1,:)];


%     PMU802=[logsout{18}.Values.Data(1,:) logsout{1}.Values.Data(1,:)];
%     PMU808=[logsout{19}.Values.Data(1,:) logsout{2}.Values.Data(1,:)];
%     PMU816=[logsout{20}.Values.Data(1,:) logsout{3}.Values.Data(1,:)];
%     PMU824=[logsout{21}.Values.Data(1,:) logsout{4}.Values.Data(1,:)];
%     PMU828=[logsout{22}.Values.Data(1,:) logsout{5}.Values.Data(1,:)];
%     PMU830=[logsout{23}.Values.Data(1,:) logsout{6}.Values.Data(1,:)];
%     PMU832=[logsout{24}.Values.Data(1,:) logsout{7}.Values.Data(1,:)];
%     PMU834=[logsout{25}.Values.Data(1,:) logsout{8}.Values.Data(1,:)];
%     PMU836=[logsout{26}.Values.Data(1,:) logsout{9}.Values.Data(1,:)];
%     PMU840=[logsout{27}.Values.Data(1,:) logsout{10}.Values.Data(1,:)];
%     PMU842=[logsout{28}.Values.Data(1,:) logsout{11}.Values.Data(1,:)];
%     PMU844=[logsout{29}.Values.Data(1,:) logsout{12}.Values.Data(1,:)];
%     PMU846=[logsout{30}.Values.Data(1,:) logsout{13}.Values.Data(1,:)];
%     PMU848=[logsout{31}.Values.Data(1,:) logsout{14}.Values.Data(1,:)];
%     PMU858=[logsout{32}.Values.Data(1,:) logsout{15}.Values.Data(1,:)];
%     PMU860=[logsout{33}.Values.Data(1,:) logsout{16}.Values.Data(1,:)];
%     PMU890=[logsout{34}.Values.Data(1,:) logsout{17}.Values.Data(1,:)];    
    
    PMU=[PMU802;PMU808;PMU816;PMU824;PMU828;PMU830;PMU832;PMU834;PMU836;PMU840;PMU842;PMU844;PMU846;PMU848;PMU858;PMU860;PMU890];
    file_name = [Dirocry,'\',num2str(num),'.csv'];
    writematrix(PMU,file_name);
    num=num+1;
end
end

