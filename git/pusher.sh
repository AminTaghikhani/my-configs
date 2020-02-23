#!/bin/bash

pushGit(){
	echo ""
	echo "start ----- $1 -----"
	echo "branches"
    cd $1 && git push origin master
    echo "tags"
    cd $1 && git push origin master --tags
	echo "end   ----- $1 -----"
}

# pushGit projectDir
