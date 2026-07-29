#!/bin/bash
#

for corr in 'corr01' 'corr02' 'corr03' 'corr04' 'corr05' 'corr06' 'corr07' 'corr08' 'corr09' 'corr10' 'corr11' 'corr12' 'corr13' 'corr14' 'corr15' 'corr16' 'corr17' 'corr18' 'corr19' 'corr20' 'corr21' 'corr22'; do
    echo ${corr}
    scp -r py38_scripts/* ${corr}.sas.pvt:.    
    ssh ${corr}.sas.pvt "source ~/.bashrc; source create_conda_py38; source install_repos_py38" > ${corr}_log.dat &
done



