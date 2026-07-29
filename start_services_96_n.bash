#!/bin/bash
#


echo "DOING plot_powers"; ssh lxd110h20.pro.pvt "sudo loginctl enable-linger ubuntu; source ~/.bashrc; systemctl --user daemon-reload; systemctl --user stop plot_powers.service; systemctl --user start plot_powers.service"

echo "DOING T2"; ssh calibration.pro.pvt "sudo loginctl enable-linger ubuntu; source ~/.bashrc; systemctl --user daemon-reload; systemctl --user stop T2.service; systemctl --user start T2.service"

echo "DOING injection"; ssh calibration.pro.pvt "sudo loginctl enable-linger ubuntu; source ~/.bashrc; systemctl --user daemon-reload; systemctl --user stop injection.service; systemctl --user start injection.service"

echo "DOING copy_dsacamera"; ssh lxd110h23.pro.pvt "sudo loginctl enable-linger ubuntu; source ~/.bashrc; systemctl --user daemon-reload; systemctl --user stop copy_dsacamera.service; systemctl --user start copy_dsacamera.service"

echo "DOING copy_data"; ssh lxd110h23.pro.pvt "sudo loginctl enable-linger ubuntu; source ~/.bashrc; systemctl --user daemon-reload; systemctl --user stop copydata.service; systemctl --user start copydata.service"

# T3 services
echo "Restarting T3 services"; ssh lxd110h23.pro.pvt "sudo loginctl enable-linger ubuntu; source ~/.bashrc; cd /home/ubuntu/proj/dsa110-shell/dsa110-T3/services; source restart_T3_manager.bash"


i=1
for corr in '03' '04' '05' '06' '07' '08' '10' '11' '12' '14' '15' '16' '18' '19' '21' '22'; do
    echo "DOING ${corr} corr"; ssh n${corr}.pro.pvt "sudo loginctl enable-linger ubuntu; source ~/.bashrc; systemctl --user daemon-reload; systemctl --user stop corr.service; systemctl --user start corr.service"
    echo "DOING ${corr} mon"; ssh n${corr}.pro.pvt "sudo loginctl enable-linger ubuntu; source ~/.bashrc; systemctl --user restart mon.service"
    echo "DOING ${corr} voltage"; ssh n${corr}.pro.pvt "sudo loginctl enable-linger ubuntu; source ~/.bashrc; systemctl --user restart voltage.service"
    echo "DOING ${corr}"; ssh n${corr}.pro.pvt "sudo loginctl enable-linger ubuntu; source ~/.bashrc; systemctl --user restart cleanup.service"
    i=$((i + 1))    
done

for corr in 'n01' 'n02' 'n09' 'n13'; do
    echo "DOING ${corr}"; ssh ${corr}.pro.pvt "sudo loginctl enable-linger ubuntu; source ~/.bashrc; systemctl --user stop search.service; systemctl --user start search.service"
    i=$((i + 1))    
done



# T4 services
#echo "Restarting T4 h24 services"; ssh h24.pro.pvt "sudo loginctl enable-linger ubuntu; source ~/.bashrc; systemctl --user stop procserver_search.service; systemctl --user start procserver_search.service; systemctl --user stop procserver_RX.service; systemctl --user start procserver_RX.service; systemctl --user stop clearlogs.service; systemctl --user start clearlogs.service; systemctl --user stop T4manager.service; systemctl --user start T4manager.service" # stop then start works better than restart for process server
#echo "Restarting T4 h20 services"; ssh lxd110h20.pro.pvt "sudo loginctl enable-linger ubuntu; source ~/.bashrc; systemctl --user stop T4manager.service; systemctl --user stop T4worker.service; systemctl --user stop T4scheduler.service; systemctl --user start T4scheduler.service; systemctl --user start T4worker.service; systemctl --user start T4manager.service"

