#!/bin/bash

for class in $(ls *.c);
do
  if [ -f $class ]; then
    gcc $class -o ${class}.out
    ./${class}.out >> ${class}.log
  fi
done
