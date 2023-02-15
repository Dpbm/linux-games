#!/bin/bash

WINETRICKS_PREFIX=$1
GAME_PATH=$2

if [ -z $WINETRICKS_PREFIX ] || [ -z $GAME_PATH ]
then
	printf "\n\e[31mUsage: bash fix-not-open.sh WINE_PREFIX_PATH CEVILLE_PATH\e[0m\n"
	exit 1
fi

printf "Installing DLLs with winetricks...\n"
printf "Selected Prefix: $WINETRICKS_PREFIX\n\n"
WINEPREFIX=$WINETRICKS_PREFIX winetricks d3dx9 d9vk d3dx9_24 -q dotnet35

COMPLETE_GAME_PATH="$GAME_PATH/drive_c/GOG\ Games/Ceville/"
CEVILLE_SCRIPT="ceville.sh"

printf "\nCreating $CEVILLE_SCRIPT...\n"
echo "#!/bin/bash" > $CEVILLE_SCRIPT
echo "PREFIX=$WINETRICKS_PREFIX" >> $CEVILLE_SCRIPT
echo "GAME_PATH=$COMPLETE_GAME_PATH" >> $CEVILLE_SCRIPT
echo "cd $COMPLETE_GAME_PATH" >> $CEVILLE_SCRIPT
echo "WINEPREFIX=\$PREFIX wine ${COMPLETE_GAME_PATH}Ceville.exe" >> $CEVILLE_SCRIPT

printf "Adding executable permissions to $CEVILLE_SCRIPT...\n"
chmod +x $CEVILLE_SCRIPT

printf "Moving $CEVILLE_SCRIPT to $COMPLETE_GAME_PATH...\n"
eval mv $CEVILLE_SCRIPT $COMPLETE_GAME_PATH
