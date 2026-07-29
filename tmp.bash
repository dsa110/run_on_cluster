#!/bin/bash
#

for corr in '03' '04' '05' '06' 'h07' '08' '10' '11' '12' '14' '15' '16' '18' '19' '21' '22'; do
    ssh h${corr}.pro.pvt "source ~/.bashrc; mkdir data/spl"
done





