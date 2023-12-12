#!/usr/bin/env bash

for ARG in "$@"
do
    if [ -d $ARG ] ; then
        echo "${ARG} is a directory"
    elif [ -f "${ARG}" ] ; then
        echo "${ARG} is a regular file"
    else 
        if [ -z "${ARG}" ] ; then
            echo "Missing argument"
        else  
            echo "Invalid path"
        fi 
    fi
done
