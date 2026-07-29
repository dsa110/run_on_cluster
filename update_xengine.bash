#!/bin/bash
#

for corr in '01' 'h02' 'h09' 'h13'; do
    echo ${corr}; ssh h${corr}.pro.pvt "source ~/.bashrc; cd /home/ubuntu/proj/dsa110-shell/dsa110-xengine; git stash; git fetch --all --tags; git checkout v3.1.0-rc141; cd src; make"
    #echo ${corr}; ssh h${corr}.pro.pvt "source ~/.bashrc; cd /home/ubuntu/proj/dsa110-shell/dsa110-nsfrb; git stash; git fetch --all --tags; git checkout v1.0.5; /home/ubuntu/anaconda3/envs/casa38/bin/pip install ."
    #echo ${corr}; ssh corr${corr}.pro.pvt "source ~/.bashrc; cd /home/ubuntu/proj/dsa110-shell/dsa110-meridian-fs; git fetch --all --tags; git checkout v1.6.5; /home/ubuntu/anaconda3/envs/casa38/bin/pip install ."
done


for corr in '03' 'h04' '05' '06' 'h07' '08' 'h10' '11' 'h12' '14' '15' 'h16' '18' '19' '21' '22'; do
    #echo ${corr}; ssh h${corr}.pro.pvt "source ~/.bashrc; echo 'export NSFRBIP2=\"10.42.0.228\"' >> .bashrc"
    
    echo ${corr}; ssh h${corr}.pro.pvt "source ~/.bashrc; cd /home/ubuntu/proj/dsa110-shell/dsa110-xengine; git stash; git fetch --all --tags; git checkout v3.1.0-rc141; cd src; make"
    #echo ${corr}; ssh h${corr}.pro.pvt "source ~/.bashrc; cd /home/ubuntu/proj/dsa110-shell/dsa110-nsfrb; git stash; git fetch --all --tags; git checkout v1.0.13; /home/ubuntu/anaconda3/envs/casa38/bin/pip install ."
#    #echo ${corr}; ssh h${corr}.pro.pvt "source ~/.bashrc; cd /home/ubuntu/proj/dsa110-shell/dsa110-meridian-fs; git fetch --all --tags; git checkout v1.6.8; /home/ubuntu/anaconda3/envs/casa38/bin/pip install ."
#    #echo ${corr}; ssh h${corr}.pro.pvt "source ~/.bashrc; sudo snap remove --purge lxd"
#    
done
#
#


