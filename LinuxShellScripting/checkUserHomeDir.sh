# Title: Check if user's home directory exists
# Author: Ahmed M Khan
# Date Created: 6/27/21
# Date Modified: 6/27/21
# Description : This program checks if a user's home directory exists

#!/bin/bash

echo -n 'Enter user name: '
read username

cd /home

checkuser=$(grep -c $username /etc/passwd)
if [ $checkuser -ge 1 ]
then
        for u in *
        do
                checkdir=$(grep -c /home/$u /etc/passwd)
                if [ $checkdir -ge 1 ] && [ $u == $username ]
                then
                        echo $username' has home directory assigned'
                else
                        echo $username' does not have home directory'
                fi
        done
else
        echo $username' does not exist'
fi
