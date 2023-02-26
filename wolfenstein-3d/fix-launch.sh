#!/bin/bash

STEAM_LIBRARY=$1

if [ -z $STEAM_LIBRARY ]
then
	printf "\n\e[31mUsage: sh fix-launch.sh PATH_TO_YOUR_STEAM_LIBRARY_FOLDER\e[0m\n"
	exit 1
fi

TARGET_FOLDER="$STEAM_LIBRARY/steamapps/common/Wolfenstein\ 3D/base/launcher/"

printf "\nCopying start.bat file to $TARGET_FOLDER...\n"
eval cp ./start.bat $TARGET_FOLDER 


