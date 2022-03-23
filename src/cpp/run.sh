#!/bin/bash

for class in $(ls *.cpp);
do
  if [ -f $class ]; then
    echo "$ g++ ${class} -o ${class}.out" >> ${class}.log
    g++ $class -o ${class}.out >> ${class}.log
    echo "$ ./${class}.out" >> ${class}.log
    ./${class}.out >> ${class}.log
  fi
done
