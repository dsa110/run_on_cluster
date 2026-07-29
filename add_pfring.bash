#!/bin/bash
#

#for corr in 'corr02' 'corr04' 'corr05' 'corr06' 'corr07' 'corr08' 'corr09' 'corr10' 'corr11' 'corr12' 'corr13' 'corr14' 'corr15' 'corr16' 'corr18' 'corr19' 'corr20' 'corr21' 'corr22'; do
#    echo ${corr}
#    ssh ${corr}.sas.pvt "source ~/.bashrc; sudo apt-get install -y flex bison; git clone https://github.com/ntop/PF_RING.git; cd PF_RING/userland/lib; ./configure && make; sudo make install; cd ../libpcap; ./configure && make; sudo make install"    
#done

for corr in '01' '02' '06' '07' '08' '10' '11' '12' '14' '15' '16' '18' '19' '21' '22'; do

    ssh lxd110h${corr}.sas.pvt "sudo loginctl enable-linger ubuntu; source ~/.bashrc; git clone https://github.com/ntop/PF_RING.git; cd PF_RING/kernel; make; sudo make install; sudo insmod pf_ring.ko min_num_slots=65536 enable_tx_capture=0; sudo rmmod pf_ring"   

done




