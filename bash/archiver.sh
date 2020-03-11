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
read -r -p "server port: " PORT

if [[ $ALL =~ ^[yY][eE][sS]|[yY]$ ]];then
    echo "start archiving"
    tar -czf archive.tar.gz
    echo "start uploading"
    scp -P $PORT ./archive.tar.gz $USER@$IP:~/
fi

if [[ $Changes =~ ^[yY][eE][sS]|[yY]$ ]];then
    echo "start archiving from changes.txt"
    tar -czf archive.changes.tar.gz -T changes.txt
    echo "start uploading from changes.txt"
    scp -P $PORT ./archive.changes.tar.gz $USER@$IP:~
fi



echo
echo "---------------------------------------"
echo
echo "Don't Worry. Be Happy."
echo "BitAmin"
