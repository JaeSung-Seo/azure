#!/bin/bash

i=5

while :
do
	echo "number: $i "
	((i--))
	if [[ "$i" == "0" ]] ; then
		break
	fi
done	
