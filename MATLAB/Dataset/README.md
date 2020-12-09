These are the PMU datasets I generated as 9 topologies.

For 33-PMU on each node expect node 800:

https://storage.googleapis.com/yifu-ieee-34-node-test-feeder/PMU_PUresults.rar

I suggest deleting "folder 3" inside for them all, because the data in folder 3 is too close to folder 2. If you use these data training a CNN topology identification neural network, they would lower the accuracy in the result, and also same for all the dataset below.

For the interfered PMU data (with niose or missing or both):

https://storage.googleapis.com/yifu-ieee-34-node-test-feeder/CNN_10dB.rar

https://storage.googleapis.com/yifu-ieee-34-node-test-feeder/CNN_20dB.rar

https://storage.googleapis.com/yifu-ieee-34-node-test-feeder/CNN_20dB.rar

https://storage.googleapis.com/yifu-ieee-34-node-test-feeder/CNN_22PMU_10dB.rar

https://storage.googleapis.com/yifu-ieee-34-node-test-feeder/CNN_22PMU_MissingOneData.rar

https://storage.googleapis.com/yifu-ieee-34-node-test-feeder/CNN_22PMU_MissingOneData_add10dB.rar

https://storage.googleapis.com/yifu-ieee-34-node-test-feeder/CNN_22PMU_MissingOneData_add20dB.rar

https://storage.googleapis.com/yifu-ieee-34-node-test-feeder/CNN_22PMU_MissingTwoData.rar

https://storage.googleapis.com/yifu-ieee-34-node-test-feeder/CNN_22PMU_MissingTwoData_add10dB.rar

https://storage.googleapis.com/yifu-ieee-34-node-test-feeder/CNN_22PMU_MissingTwoData_add20dB.rar

https://storage.googleapis.com/yifu-ieee-34-node-test-feeder/CNN_30dB.rar

https://storage.googleapis.com/yifu-ieee-34-node-test-feeder/CNN_40dB.rar

https://storage.googleapis.com/yifu-ieee-34-node-test-feeder/CNN_50dB.rar

https://storage.googleapis.com/yifu-ieee-34-node-test-feeder/CNN_MissingOneData.rar

https://storage.googleapis.com/yifu-ieee-34-node-test-feeder/CNN_MissingOneData_BasedOn_40dB.rar

https://storage.googleapis.com/yifu-ieee-34-node-test-feeder/CNN_MissingOneData_add10dB.rar

https://storage.googleapis.com/yifu-ieee-34-node-test-feeder/CNN_MissingOneData_add20dB.rar

https://storage.googleapis.com/yifu-ieee-34-node-test-feeder/CNN_MissingOnePMU.rar

https://storage.googleapis.com/yifu-ieee-34-node-test-feeder/CNN_MissingThreePMU.rar

https://storage.googleapis.com/yifu-ieee-34-node-test-feeder/CNN_MissingTwoData.rar

https://storage.googleapis.com/yifu-ieee-34-node-test-feeder/CNN_MissingTwoData_BasedOn_40dB.rar

https://storage.googleapis.com/yifu-ieee-34-node-test-feeder/CNN_MissingTwoData_BasedOn_random_dB.rar  (random means the SNR from 20dB ~ 50dB)

https://storage.googleapis.com/yifu-ieee-34-node-test-feeder/CNN_MissingTwoData_add10dB.rar

https://storage.googleapis.com/yifu-ieee-34-node-test-feeder/CNN_MissingTwoData_add20dB.rar

https://storage.googleapis.com/yifu-ieee-34-node-test-feeder/CNN_MissingTwoPMU.rar

https://storage.googleapis.com/yifu-ieee-34-node-test-feeder/CNN_random_dB.rar

For Manual Data that 100 data in each folder (/topology/label):

https://storage.googleapis.com/yifu-ieee-34-node-test-feeder/CNN_40dB_900Mannual.rar

https://storage.googleapis.com/yifu-ieee-34-node-test-feeder/CNN_MissingOneData_BasedOn_40dB_900Mannual.rar

https://storage.googleapis.com/yifu-ieee-34-node-test-feeder/CNN_MissingTwoData_BasedOn_40dB_900Mannual.rar

So till now, after you delete "folder 3" in all datasets, the mapping relationship between folder numbers to topologies would be:

Folder 1 → Topology 1


Folder 2 → Topology 2


Folder 4 → Topology 3


Folder 5 → Topology 4


Folder 6 → Topology 5


Folder 7 → Topology 6


Folder 8 → Topology 7


Folder 9 → Topology 8

(Also, you can rename the rest folders)

![image](https://raw.githubusercontent.com/liyifu93/IEEE_34_Node_Test_Feeder/master/All_8_Topologies.jpg)
