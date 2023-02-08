#!/bin/bash

STEAM_LIBRARY=$1

if [ -z $STEAM_LIBRARY ]
then
	printf "\n\e[31mUsage: sh fix-black-screen.sh PATH_TO_YOUR_STEAM_LIBRARY_FOLDER\e[0m\n"
	exit 1
fi

TARGET_FILE=$STEAM_LIBRARY/steamapps/common/Syberia/.player.ini


printf "\nCreating $TARGET_FILE...\n"
echo "800 600 32 0 BaseCMO.cmo" > $TARGET_FILE
