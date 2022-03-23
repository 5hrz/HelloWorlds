#!/bin/bash

for class in $(ls *.bash);
do
  if [ -f $class ]; then
    if [ -e ${class}.in ]; then
        echo "$ ./${class} < ${class}.in" >> ${class}.log
        ./${class} < ${class}.in >> ${class}.log
    else
        echo "$ ./${class}" >> ${class}.log
        ./$class >> ${class}.log
    fi
  fi
done
