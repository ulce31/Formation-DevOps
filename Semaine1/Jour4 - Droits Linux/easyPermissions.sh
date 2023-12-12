#!/usr/bin/env bash

printf "Files to update :\n> "
read -a  files
unset newPermission
until [[ $newPermission == +([0-7]) ]]; do 
    printf "New permission :\n> " 
    read newPermission
done
for file in ${files[@]}
do
    sudo chmod ${newPermission} ${file}
    echo "${file} permissions changed to ${newPermission}"
done
