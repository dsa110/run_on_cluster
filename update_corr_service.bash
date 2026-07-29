#!/bin/bash
#

for corr in 'corr03' 'corr04' 'corr05' 'corr06' 'corr07' 'corr08' 'corr10' 'corr11' 'corr12' 'corr14' 'corr15' 'corr16' 'corr18' 'corr19' 'corr21' 'corr22'; do
    echo ${corr}
    scp copy.bash ${corr}.sas.pvt:./data
    #sed 's/CORR/'"${corr}"'/' cleanup.service > tt
    #scp tt ${corr}.sas.pvt:./.config/systemd/user
    #ssh ${corr}.sas.pvt "source ~/.bashrc; mv .config/systemd/user/tt .config/systemd/user/cleanup.service; systemctl --user daemon-reload; systemctl --user start cleanup.service"
done




