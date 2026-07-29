#!/bin/bash
#

wgts="J201427+233452_2021-10-28T01:42:00"

rsync -avv user@dsa-storage:/home/user/beamformer_weights/beamformer_weights_corr*_J2014*.dat .
#rsync -avv user@dsa-storage:/home/user/beamformer_weights/withdelays/*.yaml .
for corr in 'corr03' 'corr04' 'corr05' 'corr06' 'corr07' 'corr08' 'corr10' 'corr11' 'corr12' 'corr14' 'corr15' 'corr16' 'corr18' 'corr19' 'corr21' 'corr22'; do
    # put files on each machine as ~/proj/dsa110-shell/dsa110-xengine/utils/antennas.out
    #ssh ${corr}.sas.pvt "source ~/.bashrc; cd data; rm -rf *.hdf5"
    cp beamformer_weights_${corr}_${wgts}.dat beamformer_weights_${corr}.dat
    rsync beamformer_weights_${corr}.dat ${corr}.sas.pvt:~/proj/dsa110-shell/dsa110-xengine/utils/antennas.out
done
