#!/bin/bash
#

i=1
for corr in 'corr01' 'corr02' 'corr03' 'eth0.corr04' 'corr05' 'corr06' 'corr07' 'corr08' 'corr09' 'corr10' 'corr11' 'corr12' 'corr13' 'corr14' 'corr15' 'corr16'; do
    echo "DOING ${corr}"; ssh ${corr}.sas.pvt "source ~/.bashrc; screen -wipe; cd /home/ubuntu/proj/dsa110-shell/dsa110-xengine/scripts;  screen -dmS myscreen python corr.py -cf config_corr.yaml -cn ${i} &"
    i=$((i + 1))    
done

for corr in 'corr17' 'corr18' 'eth0.corr19' 'corr20'; do
    echo "DOING ${corr}"; ssh ${corr}.sas.pvt "source ~/.bashrc; screen -wipe; cd /home/ubuntu/proj/dsa110-shell/dsa110-xengine/scripts;  screen -dmS myscreen python corr.py -cf config_search.yaml -cn ${i} &"
    i=$((i + 1))    
done
