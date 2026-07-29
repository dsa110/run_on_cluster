#!/bin/bash
#

for corr in 'corr01' 'corr02' 'corr03' 'corr04' 'corr05' 'corr06' 'corr07' 'corr08' 'corr09' 'corr10' 'corr11' 'corr12' 'corr13' 'corr14' 'corr15' 'corr16'; do
    echo ${corr}
    ssh ${corr}.sas.pvt "source ~/.bashrc; echo -n '7200-3C409-' | nc -4u -w1 127.0.0.1 11226"
done




