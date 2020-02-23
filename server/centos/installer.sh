#!/bin/bash

#
# Created Date: Thursday, January 23rd 2020, 7:56:59 pm
# Author: Amin Taghikhani
#
# Copyright (c) 2020 BitAmin Soft
#

echo "Hey there."
echo "Config CentOs Server"

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
    sudo yum update -y
fi

if [[ $CURL =~ ^[yY][eE][sS]|[yY]$ ]];then
    echo 'Install Curl'
    sudo yum install curl -y
fi

if [[ $WGET =~ ^[yY][eE][sS]|[yY]$ ]];then
    echo 'Install WGet'
    sudo yum install wget -y
fi

if [[ $GIT =~ ^[yY][eE][sS]|[yY]$ ]];then
    echo 'Install Git'
    sudo yum install git -y
fi

if [[ $VIM =~ ^[yY][eE][sS]|[yY]$ ]];then
    echo 'Install Vim'
    sudo yum install vim -y
fi

if [[ $NODE =~ ^[yY][eE][sS]|[yY]$ ]];then
    curl -sL https://rpm.nodesource.com/setup_12.x | sudo bash -
    sudo yum install -y nodejs gcc-c++ make
fi

if [[ $MongoDb =~ ^[yY][eE][sS]|[yY]$ ]];then
    sudo touch /etc/yum.repos.d/mongodb-org.repo
    sudo echo "[mongodb]" >> /etc/yum.repos.d/mongodb-org.repo
    sudo echo "name=MongoDB Repository" >> /etc/yum.repos.d/mongodb-org.repo
    sudo echo "baseurl=https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/4.2/$basearch/" >> /etc/yum.repos.d/mongodb-org.repo
    sudo echo "gpgcheck=1" >> /etc/yum.repos.d/mongodb-org.repo
    sudo echo "enabled=1" >> /etc/yum.repos.d/mongodb-org.repo
    sudo echo "gpgkey=https://www.mongodb.org/static/pgp/server-4.2.asc" >> /etc/yum.repos.d/mongodb-org.repo
    sudo yum repolist
    sudo yum install mongodb-org
    sudo systemctl start mongod
    sudo systemctl enable mongod
fi

echo
echo "---------------------------------------"
echo
echo "Don't Worry. Be Happy."
echo "BitAmin"
