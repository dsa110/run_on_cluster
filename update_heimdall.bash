#!/bin/bash
#

for corr in 'corr17' 'corr18' 'corr19' 'corr20' 'corr22'; do
    echo ${corr}; ssh ${corr}.sas.pvt "source ~/.bashrc; cd /home/ubuntu/proj/dsa110-shell/; rm -rf dsa110-mbheimdall; git clone https://github.com/dsa110/dsa110-mbheimdall.git -b vr/dev; cd dsa110-mbheimdall; ./configure --prefix=/home/ubuntu/proj/dsa110-shell/dsa110-mbheimdall --with-thrust-dir=/usr/local/thrust-1.8.1 --with-cuda-dir=/usr/local/cuda && make clean && ./configure --prefix=/home/ubuntu/proj/dsa110-shell/dsa110-mbheimdall --with-thrust-dir=/usr/local/thrust-1.8.1 --with-cuda-dir=/usr/local/cuda && make && make install"
done



