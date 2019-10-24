#!/bin/bash

function printTitle(){
    echo ""
    echo "*****************"
    echo ""
    echo "$1 $2"
    echo ""
    echo "*****************"
    echo ""
}

function installAPT(){
    printTitle "installing apt" "$1"
    sudo apt-get install $1 -y
}

function updateAPT(){
    sudo apt-get update
}

function installDeb{
    printTitle "installing deb" "$1"
    sudo dpkg -i $1
}

function gitClone(){
    printTitle "cloning" "$1"
    git clone "$1"
}

function wgetUrl(){
    printTitle "download" "$1"
    wget $1 -o $2
}

function installVimPlug(){
    printTitle "vim plug"
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
}

function installZshSpaceship(){
    gitClone "https://github.com/denysdovhan/spaceship-prompt.git \"$ZSH_CUSTOM/themes/spaceship-prompt\""
    ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
}

function installVSCode(){
    printTitle "installing" "vscode"
    wgetUrl "https://go.microsoft.com/fwlink/?LinkID=760868" "/tmp/vscode.deb"
    installDeb "/tmp/vscode.deb"
}

function installNode(){
    printTitle "installing" "node"
    curl -sL https://deb.nodesource.com/setup_$1.x | sudo -E bash -
    sudo apt-get install -y nodejs
}

function installNVM(){
    printTitle "installing" "nvm"
    curl -o- "https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.0/install.sh" | bash
}

function installDocker(){
    printTitle "installing" "docker"
    curl -fsSL https://get.docker.com -o /tmp/get-docker.sh
    sh /tmp/get-docker.sh
}

function installMongoDb(){
    printTitle "installing" "mongodb"
    wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -
    echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list    
    updateAPT
    installAPT "mongodb-org"
}

function installPostgres(){
    printTitle "installing" "postgresql"
    deb http://apt.postgresql.org/pub/repos/apt/ bionic-pgdg main
    wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
    updateAPT
    installAPT "postgresql-11"
}
# --------------------------------------------------------------------------------------------------------------------------------------------

installAPT "git"
installAPT "curl"
installAPT "wget"
installAPT "htop"
installAPT "net-tools"
installAPT "filezilla"
installAPT "vim"
installVimPlug
installAPT "zsh"
installZshSpaceship
installVSCode
installNode "10"
installNVM
installAPT "mysql-server"
installMongoDb
installDocker