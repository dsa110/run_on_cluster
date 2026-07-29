#!/bin/bash
#

for corr in 'corr03' 'corr04' 'corr05' 'corr06' 'corr07' 'corr08' 'corr10' 'corr11' 'corr12' 'corr14' 'corr15' 'corr16' 'corr18' 'corr19' 'corr21' 'corr22'; do
    echo ${corr}
    ssh ${corr}.sas.pvt "source ~/.bashrc; cd .config/systemd/user; sed -i 's/casa/casa38/g' corr.service"
    ssh ${corr}.sas.pvt "source ~/.bashrc; cd .config/systemd/user; sed -i 's/casa/casa38/g' mon.service"
    ssh ${corr}.sas.pvt "source ~/.bashrc; cd .config/systemd/user; sed -i 's/casa/casa38/g' cleanup.service"
    ssh ${corr}.sas.pvt "source ~/.bashrc; cd .config/systemd/user; sed -i 's/casa/casa38/g' voltage.service"

done



