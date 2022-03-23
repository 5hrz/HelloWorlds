#!/bin/bash

for class in $(ls *.py);
do
  if [ -f $class ]; then
    echo "$ python ${class}" >> ${class}.log
    python $class >> ${class}.log
  fi
done
