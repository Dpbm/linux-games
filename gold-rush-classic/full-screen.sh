#!/bin/bash

STEAM_LIBRARY=$1

if [ -z $STEAM_LIBRARY ]
then
	printf "\n\e[31mUsage: sh full-screen.sh PATH_TO_YOUR_STEAM_LIBRARY_FOLDER\e[0m\n"
	exit 1
fi

TARGET_FOLDER="$STEAM_LIBRARY/steamapps/common/Gold\ Rush\ -\ Classic/"

printf "\nCopying dosbox.conf file to $TARGET_FOLDER...\n"
eval cp ./dosbox.conf $TARGET_FOLDER 
