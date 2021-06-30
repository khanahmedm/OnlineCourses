# Title: Inventory Management - add records
# Author: Ahmed M Khan
# Date Created: 6/28/21
# Date Modified: 6/28/21
# Description : This program adds records in the inventory

#!/bin/bash

echo -n Please enter hostname?
read hostname
echo
        grep -q $hostname /home/ahmed/scripts/database
        if [ $? -eq 0 ]
        then
        echo ERROR -- Hostname $hostname already exist
        echo
        exit 0
        fi

echo -n Please enter IP address?
read IP
echo
        grep -q $IP /home/ahmed/scripts/database
        if [ $? -eq 0 ]
        then
        echo ERROR -- IP $IP already exist
        echo
        exit 0
        fi


echo Please enter Description?
read description
echo

echo $hostname $IP $description >> /home/ahmed/scripts/database
