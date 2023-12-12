#!/usr/bin/env bash

if [[ -f $1 ]]; then
    if [[ -x $1 ]]; then
       echo "You have permissions to execute ${1}"
    else 
        echo "You do not have permissions to execute ${1}"
    fi 
else 
    echo "${1} is does not exist"
fi
