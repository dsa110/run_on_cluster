#!/bin/bash
#

#test -f all_pub_keys && rm -rf all_pub_keys
#touch all_pub_keys

#for corr in 'corr01' 'corr02' 'corr03' 'corr04' 'corr05' 'corr06' 'corr07' 'corr08' 'corr09' 'corr10' 'corr11' 'corr12' 'corr13' 'corr14' 'corr15' 'corr16' 'corr18' 'corr19' 'corr20' 'corr21'; do
#for corr in 'corr22'; do
#    scp /home/ubuntu/.ssh/id_rsa.pub ${corr}.sas.pvt:.
#    ssh ${corr}.sas.pvt 'source ~/.bashrc; cat id_rsa.pub >> .ssh/authorized_keys; rm id_rsa.pub'

#done

for corr in '01' 'h02' '03' '04' '05' '06' 'h07' '08' 'h09' '10' '11' '12' '13' '14' '15' '16' '18' '19' '21' '22'; do

    scp id_rsa.pub h${corr}.pro.pvt:.
    ssh h${corr}.pro.pvt 'source ~/.bashrc; cat id_rsa.pub >> .ssh/authorized_keys; rm id_rsa.pub'

done

#for corr in '01' '02' '09' '13'; do
#    scp id_rsa.pub corr${corr}.pro.pvt:.
#    ssh corr${corr}.pro.pvt 'source ~/.bashrc; cat id_rsa.pub >> .ssh/authorized_keys; rm id_rsa.pub'
#done
    

#scp id_rsa.pub antservice.ant.pvt:.
#ssh antservice.ant.pvt 'source ~/.bashrc; cat id_rsa.pub >> .ssh/authorized_keys; rm id_rsa.pub'
#scp id_rsa.pub lxd110h20.pro.pvt:.
#ssh lxd110h20.pro.pvt 'source ~/.bashrc; cat id_rsa.pub >> .ssh/authorized_keys; rm id_rsa.pub'
#scp id_rsa.pub lxd110h23.pro.pvt:.
#ssh lxd110h23.pro.pvt 'source ~/.bashrc; cat id_rsa.pub >> .ssh/authorized_keys; rm id_rsa.pub'




