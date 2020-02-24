#!/bin/bash

echo "Hey there."
echo "Code Archiver and Uploader"

echo
echo "---------------------------------------"
echo


echo "start archiving"
tar -czf server.tar.gz --exclude="logs/*" --exclude="node_modules/*"
echo "start uploading"
scp ./server.tar.gz $USER@$IP:/opt/sources

echo
echo "---------------------------------------"
echo
echo "Don't Worry. Be Happy."
echo "BitAmin"
