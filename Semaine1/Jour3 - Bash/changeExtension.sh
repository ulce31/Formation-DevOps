#!/usr/bin/env bash
EXTENSION=$1 
for file in "$(pwd)"/*;do
    if [ -f "$file" ]; then
        mv $file $(basename $file | awk -F. '{print $1}').$EXTENSION
    fi
done


