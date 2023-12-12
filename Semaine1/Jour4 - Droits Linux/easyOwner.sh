#!/usr/bin/env bash

printf "Files to update :\n> "
read -a files
read -p "New owner :\n>" newOwner
for file in ${files[@]}
do
    formerOwner=$(ls -l $file | awk '{print $3}') 
    sudo chown $newOwner ${file}
    echo "${file} owner \"${formerOwner}\" changed to \"${newOwner}\""
done
printf "Task completed\n"
