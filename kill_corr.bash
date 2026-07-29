#!/bin/bash
#

i=1
for corr in 'corr00' 'corr01' 'corr02' 'corr03' 'eth0.corr04' 'corr05' 'corr06' 'corr07' 'corr08' 'corr09' 'corr10' 'corr11' 'corr12' 'corr13' 'corr14' 'corr15' 'corr16' 'corr17' 'corr18' 'eth0.corr19' 'corr20' 'eth0.corr21'; do
    echo "DOING ${corr}"; ssh ${corr}.sas.pvt "source ~/.bashrc; pkill -9 -f myscreen"; ssh ${corr}.sas.pvt "source ~/.bashrc; screen -wipe"
    i=$((i + 1))    
done
