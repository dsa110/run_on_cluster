#!/bin/bash
#

i=17
for corr in 'h01' 'hh02' 'hh09' 'hh13'; do
    echo ${corr}
    sed 's/NUMBER/'"${i}"'/' search.service > tt
    scp tt ${corr}.pro.pvt:./search.service
    ssh ${corr}.pro.pvt "source ~/.bashrc; rm -rf .config; mkdir .config; cd .config; mkdir systemd; cd systemd; mkdir user; cd user; mv ~/search.service .; cd ~; systemctl --user daemon-reload; systemctl --user start search.service"
    i=$((i + 1))
done



