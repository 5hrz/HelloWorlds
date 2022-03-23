#!/bin/bash

for class in $(ls *.java);
do
  if [ -f $class ]; then
    echo "$ java ${class}" >> ${class}.log
    java $class >> ${class}.log
  fi
done
