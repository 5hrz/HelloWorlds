#!/bin/bash

for class in $(ls *.py);
do
  if [ -f $class ]; then
    if [ -e ${class}.in ]; then
        echo "$ python ${class} < ${class}.in" >> ${class}.log
        python ${class} < ${class}.in >> ${class}.log
    else
        echo "$ python ${class}" >> ${class}.log
        python $class >> ${class}.log
    fi
  fi
done
