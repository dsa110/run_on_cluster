#!/bin/bash
#

# 1 is beam number

ssh corr01.sas.pvt "source ~/.bashrc; cd data; scp -o stricthostkeychecking=no fl_48.out ubuntu@corr22.sas.pvt:./data/fl_corr01.out"
ssh corr02.sas.pvt "source ~/.bashrc; cd data; scp -o stricthostkeychecking=no fl_47.out ubuntu@corr22.sas.pvt:./data/fl_corr02.out"
ssh corr03.sas.pvt "source ~/.bashrc; cd data; scp -o stricthostkeychecking=no fl_48.out ubuntu@corr22.sas.pvt:./data/fl_corr03.out"
ssh corr21.sas.pvt "source ~/.bashrc; cd data; scp -o stricthostkeychecking=no fl_47.out ubuntu@corr22.sas.pvt:./data/fl_corr21.out"
ssh corr05.sas.pvt "source ~/.bashrc; cd data; scp -o stricthostkeychecking=no fl_47.out ubuntu@corr22.sas.pvt:./data/fl_corr05.out"
ssh corr06.sas.pvt "source ~/.bashrc; cd data; scp -o stricthostkeychecking=no fl_50.out ubuntu@corr22.sas.pvt:./data/fl_corr06.out"
ssh corr07.sas.pvt "source ~/.bashrc; cd data; scp -o stricthostkeychecking=no fl_47.out ubuntu@corr22.sas.pvt:./data/fl_corr07.out"
ssh corr08.sas.pvt "source ~/.bashrc; cd data; scp -o stricthostkeychecking=no fl_48.out ubuntu@corr22.sas.pvt:./data/fl_corr08.out"
ssh corr09.sas.pvt "source ~/.bashrc; cd data; scp -o stricthostkeychecking=no fl_47.out ubuntu@corr22.sas.pvt:./data/fl_corr09.out"
ssh corr10.sas.pvt "source ~/.bashrc; cd data; scp -o stricthostkeychecking=no fl_47.out ubuntu@corr22.sas.pvt:./data/fl_corr10.out"
ssh corr11.sas.pvt "source ~/.bashrc; cd data; scp -o stricthostkeychecking=no fl_47.out ubuntu@corr22.sas.pvt:./data/fl_corr11.out"
ssh corr12.sas.pvt "source ~/.bashrc; cd data; scp -o stricthostkeychecking=no fl_47.out ubuntu@corr22.sas.pvt:./data/fl_corr12.out"
ssh corr13.sas.pvt "source ~/.bashrc; cd data; scp -o stricthostkeychecking=no fl_50.out ubuntu@corr22.sas.pvt:./data/fl_corr13.out"
ssh corr14.sas.pvt "source ~/.bashrc; cd data; scp -o stricthostkeychecking=no fl_46.out ubuntu@corr22.sas.pvt:./data/fl_corr14.out"
ssh corr15.sas.pvt "source ~/.bashrc; cd data; scp -o stricthostkeychecking=no fl_48.out ubuntu@corr22.sas.pvt:./data/fl_corr15.out"
ssh corr16.sas.pvt "source ~/.bashrc; cd data; scp -o stricthostkeychecking=no fl_49.out ubuntu@corr22.sas.pvt:./data/fl_corr16.out"

#ssh corr22.sas.pvt "source ~/.bashrc; cd /home/ubuntu/proj/dsa110-shell/dsa110-bbproc/scripts; source proc.bash ${2}; source cat_fil.bash; mv ~/tmp/out.fil ~/tmp/out_${1}.fil"
    
