#!/bin/bash

echo "Hey there."
echo "Code Archiver"

echo
echo "---------------------------------------"
echo

read -r -p "Archving All? [Y/n] " ALL
read -r -p "Archving Changes? [Y/n] " Changes

if [[ $ALL =~ ^[yY][eE][sS]|[yY]$ ]];then
    echo "start archiving"
    tar -czf archive.tar.gz
fi

if [[ $Changes =~ ^[yY][eE][sS]|[yY]$ ]];then
    echo "start archiving from changes.txt"
    tar -czf archive.changes.tar.gz -T changes.txt
fi



echo
echo "---------------------------------------"
echo
echo "Don't Worry. Be Happy."
echo "BitAmin"
