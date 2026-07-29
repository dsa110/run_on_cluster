#!/bin/bash
#


for corr in 'corr03' 'corr04' 'corr05' 'corr06' 'corr07' 'corr08' 'corr10' 'corr11' 'corr12' 'corr14' 'corr15' 'corr16' 'corr18' 'corr19' 'corr21' 'corr22'; do
    echo "DOING ${corr}"; scp flagants.dat ${corr}.sas.pvt:/home/ubuntu/proj/dsa110-shell/dsa110-xengine/scripts

done
