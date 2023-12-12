#!/usr/bin/env bash

if [ -d "$1" ];then
    for element in $1*
    do
        if [[ -f $element ]];then
            echo $element
            owner = $(stat -c '%G' $element)
            owners[owner]
        fi
    done
fi

