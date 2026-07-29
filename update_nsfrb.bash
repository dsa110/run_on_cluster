#!/bin/bash
#


#for corr in '03' 'h04' '05' '06' 'h07' '08' 'hh10' '11' 'h12' '14' '15' 'h16' '18' '19' '21' '22'; do
for corr in '03' '04' '05' '06' '07' '08' '10' '11' '12' '14' '15' '16' '18' '19' '21' '22'; do
    echo ${corr}; ssh n${corr}.pro.pvt "source ~/.bashrc; cd /home/ubuntu/proj/dsa110-shell/dsa110-nsfrb; git stash; git fetch --all --tags; git checkout v1.5.4; /home/ubuntu/anaconda3/envs/casa38/bin/pip install ."
done



