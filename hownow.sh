#!/usr/bin/env bash

if [ -z "$1" ]; then
  echo -n "Path to files["$PWD"]: "
  read COUNTIN
fi

if [ -z "$2" ]; then
  echo -n "Delayed, sec[5]: "
  read DELAY
  DELAY=${DELAY:-5}
fi

while true; do
COUNT=`find $COUNTIN -type f -maxdepth 1 | wc -l` && echo $COUNT &
sleep $DELAY
done

