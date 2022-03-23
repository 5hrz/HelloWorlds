#!/bin/bash

for class in $(ls *.c);
do
  if [ -f $class ]; then
    echo "$ gcc ${class} -o ${class}.out" >> ${class}.log
    gcc $class -o ${class}.out >> ${class}.log
        if [ -e ${class}.in ]; then
        echo "$ ./${class} < ${class}.in" >> ${class}.log
        ./${class} < ${class}.in >> ${class}.log
    else
        echo "$ ./${class}" >> ${class}.log
        ./$class >> ${class}.log
    fi
  fi
done
