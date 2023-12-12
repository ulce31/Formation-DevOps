#!/usr/bin/env bash

if test ! -d ./picturesToRename; then 
    mkdir ./picturesToRename
    echo "Folder created"
fi
if ! [ -d $1  ] ; then
    if [ -f $1 ]; then
        if [ $1 == *.jpg ]; then
            mv $1 ./picturesToRename/$(date '+%Y-%m-%d')-$(basename "${1}") 
        else
            echo "File with an invalid extension"
        fi
    else
        echo "File does not exist"
    fi
fi
