#!/bin/bash

echo -n "Choose OS type:(1: Windows, 2: Ubuntu): "
read type

echo -n "Enter the number of VMs: "
read number

while [ $number -gt 0  ]
do
    if [ "$type" == "1" ]; then
	sh ./createSimpleVM.sh 
    elif [ "$type" == "2" ]; then
        sh ./createSimplelinux.sh
    else 
 	echo "Nothing chosen"
    fi
    ((number--))
done
