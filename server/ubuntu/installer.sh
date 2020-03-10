#!/bin/bash

#
# Created Date: Thursday, January 23rd 2020, 7:56:59 pm
# Author: Amin Taghikhani
#
# Copyright (c) 2020 BitAmin Soft
#

echo "Hey there."
echo "Config Ubuntu Server"

echo
echo "---------------------------------------"
echo

# Config
read -r -p "Do UPDATE? [Y/n] " UPDATE
read -r -p "Install CURL? [Y/n] " CURL
read -r -p "Install WGET? [Y/n] " WGET
read -r -p "Install GIT? [Y/n] " GIT
read -r -p "Install VIM? [Y/n] " VIM
read -r -p "Install NODE? [Y/n] " NODE
read -r -p "Install MongoDb? [Y/n] " MongoDb


# Start Jobs
if [[ $UPDATE =~ ^[yY][eE][sS]|[yY]$ ]];then
    echo 'System Update'
    sudo apt-get update
    sudo apt-get upgrade -y
fi

if [[ $CURL =~ ^[yY][eE][sS]|[yY]$ ]];then
    echo 'Install Curl'
    sudo apt-get install curl -y
fi

if [[ $WGET =~ ^[yY][eE][sS]|[yY]$ ]];then
    echo 'Install WGet'
    sudo apt-get install wget -y
fi

if [[ $GIT =~ ^[yY][eE][sS]|[yY]$ ]];then
    echo 'Install Git'
    sudo apt-get install git -y
fi

if [[ $VIM =~ ^[yY][eE][sS]|[yY]$ ]];then
    echo 'Install Vim'
    sudo apt-get install vim -y
fi

if [[ $NODE =~ ^[yY][eE][sS]|[yY]$ ]];then
    curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
    sudo apt-get install -y nodejs gcc c++ make
fi

if [[ $MongoDb =~ ^[yY][eE][sS]|[yY]$ ]];then
    wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -
    echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list
    sudo apt-get update
    sudo apt-get install -y mongodb-org
    sudo systemctl start mongod
    sudo systemctl enable mongod
fi

echo
echo "---------------------------------------"
echo
echo "Don't Worry. Be Happy."
echo "BitAmin"
