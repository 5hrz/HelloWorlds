#!/bin/bash

for class in $(ls *.cpp);
do
  if [ -f $class ]; then
    echo "$ g++ ${class} -o ${class}.out" >> ${class}.log
    g++ $class -o ${class}.out >> ${class}.log
    if [ -e ${class}.in ]; then
        echo "$ ./${class} < ${class}.in" >> ${class}.log
        ./${class} < ${class}.in >> ${class}.log
    else
        echo "$ ./${class}" >> ${class}.log
        ./$class >> ${class}.log
    fi
  fi
done
