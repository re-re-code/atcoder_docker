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
len=`echo $2`
i=1
for alpha in a b c d e f g h
do
  cur=`echo $2 | cut -c $i`
  if [ ${#len} -ge $i ]; then
    if [ -n $cur ]; then
      if [ $cur = $alpha ]; then
        cp -n template.cpp ABC/$1/$cur.cpp
      fi
    fi
  fi
  i=$(($i+1))
done

exit 0