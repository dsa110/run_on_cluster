#!/bin/bash
#

for corr in 'corr01' 'corr02' 'corr03' 'corr04' 'corr05' 'corr06' 'corr07' 'corr08' 'corr09' 'corr10' 'corr11' 'corr12' 'corr13' 'corr14' 'corr15' 'corr16' 'corr17' 'corr18' 'corr19' 'corr20'; do
    #echo ${corr}; ssh ${corr}.sas.pvt "source ~/.bashrc; cd /home/ubuntu/proj/dsa110-shell/dsa110-pyutils; git fetch --all; git checkout development; git pull; python setup.py install"
    #echo ${corr}; ssh ${corr}.sas.pvt "source ~/.bashrc; cd /home/ubuntu/proj/dsa110-shell/dsa110-calib; git fetch --all; git checkout development; git pull; python setup.py install"
    echo ${corr}; ssh ${corr}.sas.pvt "source ~/.bashrc; cd /home/ubuntu/proj/dsa110-shell/dsa110-meridian-fs; git fetch --all; git checkout development; git pull; python setup.py install"
done




