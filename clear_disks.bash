#!/bin/bash
#

#for corr in 'corr01' 'corr02' 'corr03' 'corr04' 'corr05' 'corr06' 'corr07' 'corr08' 'corr09' 'corr10' 'corr11' 'corr12' 'corr13' 'corr14' 'corr15' 'corr16'; do
for corr in 'corr01' 'corr02' 'corr09' 'corr13'; do
    echo ${corr}
    ssh ubuntu@${corr}.sas.pvt "source ~/.bashrc; cd tmp; rm -rf *; cd ../data; rm -rf *.cand fil_* beams*.dat 24* *.fil"
done

for corr in 'corr03' 'corr04' 'corr05' 'corr06' 'corr07' 'corr08' 'corr10' 'corr11' 'corr12' 'corr14' 'corr15' 'corr16' 'corr18' 'corr19' 'corr21' 'corr22'; do
    echo ${corr}
    ssh ubuntu@${corr}.sas.pvt "source ~/.bashrc; cd data; rm -rf fl_* *_incomplete* *.out *.json specs*.dat *.hdf5"    
done

echo h23
#ssh ubuntu@lxd110h23.sas.pvt "source ~/.bashrc; cd /dataz/dsa110/T3; source keep_volts.bash"
ssh ubuntu@lxd110h23.sas.pvt "source ~/.bashrc; cd /dataz/dsa110/T3; rm -rf corr??/*.out; rm -rf corr??/*.json"



