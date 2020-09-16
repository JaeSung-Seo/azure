#!/bin/bash
i=0

while :
do
  echo "Number: $i"
  ((i++))
  if [[ "$i" == '2' ]]; then
    break
  fi
done
