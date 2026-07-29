#!/bin/bash
#

for corr in '01' 'h02' 'h09' '13'; do

    ssh h${corr}.pro.pvt "sudo loginctl enable-linger ubuntu; source ~/.bashrc; lxc stop corr${corr}; lxc start corr${corr}"   

done



    
