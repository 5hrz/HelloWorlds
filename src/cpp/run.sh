#!/bin/bash

for class in $(ls *.cpp);
do
  if [ -f $class ]; then
    g++ $class -o ${class}.out
    ./${class}.out >> ${class}.log
  fi
done
