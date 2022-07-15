#!/bin/bash

case $1 in
  
  --date)
    echo "$(date +'%m/%d/%Y')"
    ;;

  --logs)
    if [ -z "$2" ]
      then
      x=100
    else
      x=$2
    fi
    for i in {1..$x}
    do
      echo "log$i.txt $0 $(date +'%m/%d/%Y')" >> "log$i.txt"
    done
    ;;

esac