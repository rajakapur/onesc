#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
clear
echo "Checking VPS"
clear
read -p "Username SSH to Delete : " Pengguna

if getent passwd $Pengguna > /dev/null 2>&1; then
        userdel $Pengguna
        echo -e "User $Pengguna was removed."
else
        echo -e "Failure: User $Pengguna Not Exist."
fi