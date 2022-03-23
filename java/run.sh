#!/bin/bash

for class in $(ls);
do
  if [ -f $class ]; then
    java $class >> ${class}.log
  fi
done
