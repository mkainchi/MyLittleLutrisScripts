#!/bin/bash

cdpath="$1"
echo $cdpath

if [ ! -d "drive_c/Program Files/Starcraft" ]
then
cd "drive_c/Program Files"
ln -s "../Program Files (x86)/Starcraft" "Starcraft"
echo 'ln -s "../Program Files (x86)/Starcraft" "Starcraft"'
else
cd "drive_c/Program Files (x86)"
ln -s "../Program Files/Starcraft" "Starcraft"
echo 'ln -s "../Program Files/Starcraft" "Starcraft"'
fi

if [ $cdpath ]
then
find $cdpath/* -iname install.exe | xargs -I {} cp {} starcraft.mpq
echo $cdpath'/* -iname install.exe | xargs -I {} cp {} starcraft.mpq'
fi
