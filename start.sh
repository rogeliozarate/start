#!/bin/bash
if [ $1 ]
then
  echo "String \"$1\" is not null."
  BASE_DIR=/Users/cobi/Documents/code/
  DIR=$BASE_DIR$1
  APP_NAME=$1
  if [ -d "$DIR" ]; then
    # Control will enter here if $DIRECTORY exists
    echo "Directory ${DIR} exist. Choose a different name"
    exit
  else
    read -p "Are you sure you wat to create the app structure? [yY]" -n 1 -r
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
	    echo
	    echo "Creating structure"
	    mkdir $DIR
	    cd $DIR
	    git init . 
	    rvm use 1.9.2@$APP_NAME --create --rvmrc
	    touch Gemfile
	    touch .gitignore
	    echo "Script finished at $(date)"
	    echo "Future is yours"
	 else
		echo
		echo "Second thougts eh? at $(date)"
		exit
	fi
  fi
else  
  echo "app name is null, leaving the script"
  exit
fi


