Dirocry=('G:\34NODES_RUNNING\DataFolder\Manually\');
for topology=1:9
    read_folder=[Dirocry, '\raw\', num2str(topology)];
    save_folder=[Dirocry,'\converted_csv\',num2str(topology)];
%     save_folder=[Dirocry,'\converted_mat\',num2str(topology)];
    mkdir(save_folder);
    num=1;
    for counter=1:5
        file_name=[read_folder, '\', num2str(counter), '.mat'];
        load(file_name);
        PMU802=[data{34}.Values.Data(1,1:3) data{34}.Values.Data(1,4:6)/120 data{1}.Values.Data(1,1:3) data{1}.Values.Data(1,4:6)/120];  %1
        PMU806=[data{35}.Values.Data(1,1:3) data{35}.Values.Data(1,4:6)/120 data{2}.Values.Data(1,1:3) data{2}.Values.Data(1,4:6)/120];  %2
        PMU808=[data{36}.Values.Data(1,1:3) data{36}.Values.Data(1,4:6)/120 data{3}.Values.Data(1,1:3) data{3}.Values.Data(1,4:6)/120];  %3
        PMU810=[data{37}.Values.Data(1,1:3) data{37}.Values.Data(1,4:6)/120 data{4}.Values.Data(1,1:3) data{4}.Values.Data(1,4:6)/120];  %4
        PMU812=[data{38}.Values.Data(1,1:3) data{38}.Values.Data(1,4:6)/120 data{5}.Values.Data(1,1:3) data{5}.Values.Data(1,4:6)/120];  %5
        PMU814=[data{39}.Values.Data(1,1:3) data{39}.Values.Data(1,4:6)/120 data{6}.Values.Data(1,1:3) data{6}.Values.Data(1,4:6)/120];  %6
        PMU850=[data{57}.Values.Data(1,1:3) data{57}.Values.Data(1,4:6)/120 data{24}.Values.Data(1,1:3) data{24}.Values.Data(1,4:6)/120];  %7
        PMU816=[data{40}.Values.Data(1,1:3) data{40}.Values.Data(1,4:6)/120 data{7}.Values.Data(1,1:3) data{7}.Values.Data(1,4:6)/120];  %8
        PMU818=[data{41}.Values.Data(1,1:3) data{41}.Values.Data(1,4:6)/120 data{8}.Values.Data(1,1:3) data{8}.Values.Data(1,4:6)/120];  %9
        PMU820=[data{42}.Values.Data(1,1:3) data{42}.Values.Data(1,4:6)/120 data{9}.Values.Data(1,1:3) data{9}.Values.Data(1,4:6)/120];  %10
        PMU822=[data{43}.Values.Data(1,1:3) data{43}.Values.Data(1,4:6)/120 data{10}.Values.Data(1,1:3) data{10}.Values.Data(1,4:6)/120];  %11
        PMU824=[data{44}.Values.Data(1,1:3) data{44}.Values.Data(1,4:6)/120 data{11}.Values.Data(1,1:3) data{11}.Values.Data(1,4:6)/120];  %12
        PMU826=[data{45}.Values.Data(1,1:3) data{45}.Values.Data(1,4:6)/120 data{12}.Values.Data(1,1:3) data{12}.Values.Data(1,4:6)/120];  %13
        PMU828=[data{46}.Values.Data(1,1:3) data{46}.Values.Data(1,4:6)/120 data{13}.Values.Data(1,1:3) data{13}.Values.Data(1,4:6)/120];  %14
        PMU830=[data{47}.Values.Data(1,1:3) data{47}.Values.Data(1,4:6)/120 data{14}.Values.Data(1,1:3) data{14}.Values.Data(1,4:6)/120];  %15
        PMU854=[data{59}.Values.Data(1,1:3) data{59}.Values.Data(1,4:6)/120 data{26}.Values.Data(1,1:3) data{26}.Values.Data(1,4:6)/120];  %16
        PMU856=[data{60}.Values.Data(1,1:3) data{60}.Values.Data(1,4:6)/120 data{27}.Values.Data(1,1:3) data{27}.Values.Data(1,4:6)/120];  %17
        PMU852=[data{58}.Values.Data(1,1:3) data{58}.Values.Data(1,4:6)/120 data{25}.Values.Data(1,1:3) data{25}.Values.Data(1,4:6)/120];  %18
        PMU832=[data{48}.Values.Data(1,1:3) data{48}.Values.Data(1,4:6)/120 data{15}.Values.Data(1,1:3) data{15}.Values.Data(1,4:6)/120];  %19
        PMU888=[data{65}.Values.Data(1,1:3) data{65}.Values.Data(1,4:6)/120 data{32}.Values.Data(1,1:3) data{32}.Values.Data(1,4:6)/120];  %20
        PMU890=[data{66}.Values.Data(1,1:3) data{66}.Values.Data(1,4:6)/120 data{33}.Values.Data(1,1:3) data{33}.Values.Data(1,4:6)/120];  %21
        PMU858=[data{61}.Values.Data(1,1:3) data{61}.Values.Data(1,4:6)/120 data{28}.Values.Data(1,1:3) data{28}.Values.Data(1,4:6)/120];  %22
        PMU864=[data{64}.Values.Data(1,1:3) data{64}.Values.Data(1,4:6)/120 data{31}.Values.Data(1,1:3) data{31}.Values.Data(1,4:6)/120];  %23
        PMU834=[data{49}.Values.Data(1,1:3) data{49}.Values.Data(1,4:6)/120 data{16}.Values.Data(1,1:3) data{16}.Values.Data(1,4:6)/120];  %24
        PMU842=[data{53}.Values.Data(1,1:3) data{53}.Values.Data(1,4:6)/120 data{20}.Values.Data(1,1:3) data{20}.Values.Data(1,4:6)/120];  %25
        PMU844=[data{54}.Values.Data(1,1:3) data{54}.Values.Data(1,4:6)/120 data{21}.Values.Data(1,1:3) data{21}.Values.Data(1,4:6)/120];  %26
        PMU846=[data{55}.Values.Data(1,1:3) data{55}.Values.Data(1,4:6)/120 data{22}.Values.Data(1,1:3) data{22}.Values.Data(1,4:6)/120];  %27
        PMU848=[data{56}.Values.Data(1,1:3) data{56}.Values.Data(1,4:6)/120 data{23}.Values.Data(1,1:3) data{23}.Values.Data(1,4:6)/120];  %28
        PMU860=[data{62}.Values.Data(1,1:3) data{62}.Values.Data(1,4:6)/120 data{29}.Values.Data(1,1:3) data{29}.Values.Data(1,4:6)/120];  %29
        PMU836=[data{50}.Values.Data(1,1:3) data{50}.Values.Data(1,4:6)/120 data{17}.Values.Data(1,1:3) data{17}.Values.Data(1,4:6)/120];  %30
        PMU840=[data{52}.Values.Data(1,1:3) data{52}.Values.Data(1,4:6)/120 data{19}.Values.Data(1,1:3) data{19}.Values.Data(1,4:6)/120];  %31
        PMU862=[data{63}.Values.Data(1,1:3) data{63}.Values.Data(1,4:6)/120 data{30}.Values.Data(1,1:3) data{30}.Values.Data(1,4:6)/120];  %32
        PMU838=[data{51}.Values.Data(1,1:3) data{51}.Values.Data(1,4:6)/120 data{18}.Values.Data(1,1:3) data{18}.Values.Data(1,4:6)/120];  %33
        PMU=[PMU802;PMU806;PMU808;PMU810;PMU812;PMU814;PMU850;PMU816;PMU818;PMU820;PMU822;PMU824;PMU826;PMU828;PMU830;PMU854;PMU856;PMU852;PMU832;PMU888;PMU890;PMU858;PMU864;PMU834;PMU842;PMU844;PMU846;PMU848;PMU860;PMU836;PMU840;PMU862;PMU838];
        save_name = [save_folder, '\', num2str(num), '.csv'];
        writematrix(PMU,save_name);
%         save_name = [save_folder, '\', num2str(num), '.mat'];
%         save(save_name, 'PMU');
        num=num+1;
    end
end