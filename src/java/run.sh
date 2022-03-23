#!/bin/bash

for class in $(ls *.java);
do
  if [ -f $class ]; then
    java $class >> ${class}.log
  fi
done
