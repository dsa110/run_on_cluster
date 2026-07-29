#!/bin/bash
#

for i in `seq 1 5`; do

    rsync --partial --timeout=20 -avz ${1} ${2}

done

