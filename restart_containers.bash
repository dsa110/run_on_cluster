#!/bin/bash
#


for corr in '01' '02' '03' '04' '05' '06' '07' '08' '09' '10' '11' '12' '13' '14' '15' '16' '17' '18' '19' '20' '21' '22'; do

    ssh lxd110h${corr}.sas.pvt "sudo loginctl enable-linger ubuntu; source ~/.bashrc; lxc stop corr${corr}; sleep 2; lxc start corr${corr}"   

done



    
