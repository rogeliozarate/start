#!/bin/bash
if [ $1 ]
then
  echo "String \"$1\" is not null."
  BASE_DIR=/Users/cobi/Documents/code/
  echo $BASE_DIR$1
else  
  echo "app name is null, leaving the script"
  exit
fi


