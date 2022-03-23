#!/bin/bash

for class in $(ls *.java);
do
  if [ -f $class ]; then
    if [ -e ${class}.in ]; then
        echo "$ java ${class} < ${class}.in" >> ${class}.log
        java ${class} < ${class}.in >> ${class}.log
    else
        echo "$ java ${class}" >> ${class}.log
        java $class >> ${class}.log
    fi
  fi
done
