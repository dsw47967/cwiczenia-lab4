#!/bin/bash

case $1 in
  --help | -h)
    echo 
    "
    --help, -h  twyswietla pomoc
    --date, -d  wyswietla aktualna date
    --logs, -l  tworzy 100 plikow log(x).txt
    --logs, -l <liczba>  tworzy X plikow log(x).txt
    --error, -e <liczba> tworzy X plików error(x).txt
    "
    ;;

  --date | -d)
    echo "$(date +'%m/%d/%Y')"
    ;;

  --logs | -l)
    if [ -z "$2" ]
      then
      x=100
    else
      x=$2
    fi
    rm -rf "log$x"
    mkdir "log$x"
    for i in {1..$x}
    do
      echo "log$i.txt $0 $(date +'%m/%d/%Y')" >> "log$x/log$i.txt"
    done
    ;;

  --error | -e)
    if [ -z "$2" ]
      then
      x=100
    else
      x=$2
    fi
    rm -rf "error$x"
    mkdir "error$x"
    for i in {1..$x}
    do
      echo "error$i.txt $0 $(date +'%m/%d/%Y')" >> "error$x/error$i.txt"
    done
    ;;

esac