#!/bin/bash
#

i=1
for corr in '03' '04' '05' '06' 'h07' '08' '10' '11' '12' '14' '15' '16' '18' '19' '21' '22'; do
    echo ${corr}
#    sed 's/NUMBER/'"${i}"'/' corr.service > tt
#    scp tt lxd110h${corr}.sas.pvt:./corr.service
#    ssh lxd110h${corr}.sas.pvt "source ~/.bashrc; rm -rf .config; mkdir .config; cd .config; mkdir systemd; cd systemd; mkdir user; cd user; mv ~/corr.service .; cd ~; systemctl --user daemon-reload; systemctl --user start corr.service"
#    sed 's/NUMBER/'"${i}"'/' mon.service > tt
#    scp tt lxd110h${corr}.sas.pvt:./mon.service
#    ssh lxd110h${corr}.sas.pvt "source ~/.bashrc; cd .config/systemd/user; mv ~/mon.service .; cd ~; systemctl --user daemon-reload; systemctl --user start mon.service"
#    i=$((i + 1))
#    sed 's/NUMBER/'"${i}"'/' voltage.service > tt
#    scp tt h${corr}.pro.pvt:./voltage.service
#    ssh h${corr}.pro.pvt "source ~/.bashrc; cd .config/systemd/user; mv ~/voltage.service .; cd ~; systemctl --user daemon-reload; systemctl --user start voltage.service"
#    i=$((i + 1))
    #sed 's/CORR/'"h${corr}"'/' cleanup.service > tt
    scp ~/.ssh/id_rsa_corr00 h${corr}.pro.pvt:~/.ssh/
    #ssh h${corr}.pro.pvt "source ~/.bashrc; cd .config/systemd/user; mv ~/cleanup.service .; cd ~; systemctl --user daemon-reload; systemctl --user start cleanup.service"
    i=$((i + 1))
done



