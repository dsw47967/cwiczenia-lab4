#!/bin/bash

case $1 in
  --help)
    echo 
    "
    --help  twyswietla pomoc
    --date  wyswietla aktualna date
    --logs  tworzy 100 plikow log(x).txt
    --logs <liczba>  tworzy X plikow log(x).txt
    "
    ;;

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