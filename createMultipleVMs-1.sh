#!/bin/bash

number=2

echo -n "Choose OS type:(1: Windows, 2: Ubuntu): "
read type

echo -n "Enter the number of VMs: "
windoows="./createSimpleVM.sh"
ubuntu="./createSimplelinux.sh"

case $type in
  1)
   runscript="/Users/jaesung/OneDrive\ -\ Conestoga\ College/cert/script/createSimpleVM.sh"
   #runscript="/Users/jaesung/createSimpleVM.sh"
   echo " script: $runscript"
   ;;
  2)
   runcript='/Users/jaesung/"OneDrive - Conestoga College"/cert/script/createSimplelinux.sh'
   ;;

esac

while :
do
    echo "script: $runscript"
    "$runscript"
    ((number--))
    if [[ "$number" == 0 ]]; then
	break
    fi
    sleep 3
done
