#!/bin/bash
#

for corr in '01' '02' '09' '13'; do


    #ssh lxd110h${corr}.sas.pvt "sudo loginctl enable-linger ubuntu; source ~/.bashrc; sudo mkdir -p /operations; sudo chown ubuntu:ubuntu /operations; sudo apt-get update; sudo apt-get -y install nfs-common; sudo mount 10.41.0.182:/dataz/dsa110/operations /operations; sudo sh -c 'cat ~/tt >> /etc/fstab'"

    #ssh lxd110h${corr}.sas.pvt "sudo loginctl enable-linger ubuntu; source ~/.bashrc;  sudo umount /operations"
    #ssh lxd110h${corr}.sas.pvt "sudo loginctl enable-linger ubuntu; source ~/.bashrc;  sudo umount /operations; sudo mount 10.41.0.182:/dataz/dsa110/operations /operations; sudo sed -i 's/41.0.182/41.0.182/' /etc/fstab"
    ssh lxd110h${corr}.sas.pvt "sudo loginctl enable-linger ubuntu; source ~/.bashrc;  sudo umount /operations; sudo mount 10.41.0.182:/dataz/dsa110/operations /operations"

done

#ssh user@dsastorage.ovro.pvt "sudo loginctl enable-linger ubuntu; source ~/.bashrc;  sudo umount /operations"
#ssh user@dsastorage.ovro.pvt "sudo loginctl enable-linger ubuntu; source ~/.bashrc;  sudo mount 10.41.0.182:/dataz/dsa110/operations /operations; sudo sed -i 's/41.0.182/41.0.182/' /etc/fstab"
#ssh user@dsastorage.ovro.pvt "sudo loginctl enable-linger user; source ~/.bashrc;  sudo mount 10.41.0.182:/dataz/dsa110/operations /operations"



    
