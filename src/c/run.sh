#!/bin/bash

for class in $(ls *.c);
do
  if [ -f $class ]; then
    echo "$ gcc ${class} -o ${class}.out" >> ${class}.log
    gcc $class -o ${class}.out >> ${class}.log
    echo "$ ./${class}.out" >> ${class}.log
    ./${class}.out >> ${class}.log
  fi
done
