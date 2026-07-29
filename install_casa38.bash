#!/bin/bash

for corr in '01' 'h02' 'h09' 'h13'; do
    scp create_conda_py38 h${corr}.pro.pvt:.
    scp install_repos_py38 h${corr}.pro.pvt:.
    scp dsaenv02.yaml h${corr}.pro.pvt:.
    ssh h${corr}.pro.pvt "sudo loginctl enable-linger ubuntu; source ~/.bashrc; sudo apt-get -y install autogen autoconf libtool"
    ssh h${corr}.pro.pvt "sudo loginctl enable-linger ubuntu; source ~/.bashrc; source create_conda_py38"
    ssh h${corr}.pro.pvt "sudo loginctl enable-linger ubuntu; source ~/.bashrc; source install_repos_py38"
done




