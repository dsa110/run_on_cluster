#!/bin/bash
#

# SNAP plotting services
#echo "Restarting snapService"; ssh snapservice.sas.pvt "sudo loginctl enable-linger ubuntu; source ~/.bashrc; systemctl --user restart snapSpecs.service"
#echo "Restarting getSnaps service"; ssh user@10.40.0.208 "sudo loginctl enable-linger user; source ~/.bashrc; systemctl --user restart getSnaps.service"

# T2 service
echo "Restarting T2 service"; ssh corr00.sas.pvt "sudo loginctl enable-linger ubuntu; source ~/.bashrc; systemctl --user restart T2.service"

# injection service
echo "Restarting injection service"; ssh corr00.sas.pvt "sudo loginctl enable-linger ubuntu; source ~/.bashrc; systemctl --user restart injection.service"

# plot_T1 service
echo "Restarting T1 plot service"; ssh user@10.40.0.208 "sudo loginctl enable-linger user; source ~/.bashrc; systemctl --user restart plot_T1.service"

# triggercopy service
echo "Restarting triggercopy service"; ssh user@10.40.0.208 "sudo loginctl enable-linger user; source ~/.bashrc; systemctl --user restart triggercopy.service"

# T3 services
echo "Restarting T3 services"; ssh lxd110h23.sas.pvt "sudo loginctl enable-linger ubuntu; source ~/.bashrc; cd /home/ubuntu/proj/dsa110-shell/dsa110-T3/services; source restart_T3_manager.bash"
echo "Restarting statusmon service"; ssh lxd110h23.sas.pvt "sudo loginctl enable-linger user; source ~/.bashrc; systemctl --user restart statusmon.service"


i=1
for corr in 'corr03' 'corr04' 'corr05' 'corr06' 'corr07' 'corr08' 'corr10' 'corr11' 'corr12' 'corr14' 'corr15' 'corr16' 'corr18' 'corr19' 'corr21' 'corr22'; do
    echo "DOING ${corr}"; ssh ${corr}.sas.pvt "sudo loginctl enable-linger ubuntu; source ~/.bashrc; systemctl --user daemon-reload; systemctl --user stop corr.service; systemctl --user start corr.service"
    echo "DOING ${corr}"; ssh ${corr}.sas.pvt "sudo loginctl enable-linger ubuntu; source ~/.bashrc; systemctl --user stop voltage.service; systemctl --user start voltage.service"
    echo "DOING ${corr}"; ssh ${corr}.sas.pvt "sudo loginctl enable-linger ubuntu; source ~/.bashrc; systemctl --user restart mon.service"
    echo "DOING ${corr}"; ssh ${corr}.sas.pvt "sudo loginctl enable-linger ubuntu; source ~/.bashrc; systemctl --user restart cleanup.service"
    i=$((i + 1))    
done

for corr in 'corr01' 'corr02' 'corr09' 'corr13'; do
    echo "DOING ${corr}"; ssh ${corr}.sas.pvt "sudo loginctl enable-linger ubuntu; source ~/.bashrc; systemctl --user stop search.service; systemctl --user start search.service"
    i=$((i + 1))    
done






