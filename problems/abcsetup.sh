#!/bin/bash

if ! [[ "$1" =~ ^[1-9][0-9]{,2}$ ]]; then
  echo "Usage: $0 2xx (x=[0-9])" 1>&2
  exit 1
fi

if [ ! -e ABC ]; then
  echo "Error: directory 'ABC' not exists." 1>&2
  exit 1
fi

mkdir -p ABC/$1
for alpha in a b c d e f g h
do
  for i in 1 2 3 4 5 6 7 8
  do
    cur=`echo $2 | cut -c $i`
    if [ ${#cur} -ge 1 ]; then
      if [ $cur = $alpha ]; then
        cp -n template.cpp ABC/$1/$cur.cpp
      fi
    fi
  done
done

exit 0