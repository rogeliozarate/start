#!/bin/bash
if [ $1 ]
then
  echo "String \"$1\" is not null."
  BASE_DIR=/Users/cobi/Documents/code/
  DIR=$BASE_DIR$1
  if [ -d "$DIR" ]; then
    # Control will enter here if $DIRECTORY exists
    echo "Directory ${DIR} exist. Choose a different name"
    exit
  else
    echo "Directory ${DIR} does not exist"	
  fi
else  
  echo "app name is null, leaving the script"
  exit
fi


