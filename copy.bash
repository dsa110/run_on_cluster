#!/bin/bash
#

while true; do

    n=`ls *_data.out | wc -l`
    if [ "$n" -gt "3" ]; then

	candname=`ls -rt *_data.out | tail -n 4 | head -n 1 | sed 's/\_/ /' | awk '{print $1}'`
	fl=`ls -rt *_data.out | tail -n 4 | head -n 1`	
	echo ${fl}
	if [[ $fl == *_inj* ]]; then
	    rm -rf ${fl}
	else	    
	    scp ${candname}_header.json 10.42.0.232:/dataz/dsa110/T3/${1}
	    scp ${candname}_data.out 10.42.0.232:/dataz/dsa110/T3/${1}
	    rm -rf ${candname}_header.json ${candname}_data.out
	fi	
	    
    fi

    echo "copy is sleeping"
    sleep 5
    

done

