#!/bin/bash

echo "Hey there."
echo "Code Archiver and Uploader"

echo
echo "---------------------------------------"
echo

read -r -p "Archving All? [Y/n] " ALL
read -r -p "Archving Changes? [Y/n] " Changes

read -r -p "user: " USER
read -r -p "server ip: " IP

if [[ $ALL =~ ^[yY][eE][sS]|[yY]$ ]];then
    echo "start archiving"
    tar -czf archive.tar.gz
    echo "start uploading"
    scp -P 1242 ./archive.tar.gz $USER@$IP:~/
fi

if [[ $Changes =~ ^[yY][eE][sS]|[yY]$ ]];then
    echo "start archiving from changes.txt"
    tar -czf archive.changes.tar.gz -T changes.txt
    echo "start uploading from changes.txt"
    scp -P 1242 ./archive.changes.tar.gz $USER@$IP:~
fi



echo
echo "---------------------------------------"
echo
echo "Don't Worry. Be Happy."
echo "BitAmin"
