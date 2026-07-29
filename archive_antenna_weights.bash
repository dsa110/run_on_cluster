#!/bin/bash
#

for corr in 'corr00' 'corr02' 'corr03' 'corr04' 'corr05' 'corr06' 'corr07' 'corr08' 'corr09' 'corr10' 'corr11' 'corr12' 'corr13' 'corr14' 'corr15' 'corr16'; do

    scp ${corr}.sas.pvt:~/proj/dsa110-shell/dsa110-xengine/utils/antennas.out ./beamformer_weights_${corr}.dat
    scp beamformer_weights_${corr}.dat user@dsastorage.ovro.pvt:/mnt/data/dsa110/T3/calibs/beamformer_weights_${corr}_${1}.dat

done
