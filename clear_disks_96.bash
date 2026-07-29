#!/bin/bash
#

#ssh ubuntu@lxd110h23.pro.pvt "source ~/.bashrc; cd /dataz/dsa110/T3; rm -rf h??/*; rm -rf h???/*"
#ssh calibration.pro.pvt "source ~/.bashrc; rm -rf /home/ubuntu/data/injections/injection_list.txt"

for corr in '03' '04' '05' '06' '07' '08' '10' '11' '12' '14' '15' '16' '18' '19' '21' '22'; do
    echo ${corr}
    ssh n${corr}.pro.pvt "source ~/.bashrc; rm -rf ~/proj/dsa110-shell/dsa110-nsfrb/realtime/rt_c_imager/rttimes_log.txt"
    #ssh h${corr}.pro.pvt "source ~/.bashrc; cd data; rm -rf fl_* *_incomplete* *.out *.json specs*.dat *.hdf5 *.out.tmp tmptmp/*; cd ../nsfrb; rm -rf *.hdf5; cd ../data/spl; rm -rf *.hdf5"    
done
#for corr in '01' 'h02' 'h09' 'h13'; do
#    echo ${corr}
#    ssh h${corr}.pro.pvt "source ~/.bashrc; cd data; rm -rf *.fil *.out 24* 25* 26*"
#done



