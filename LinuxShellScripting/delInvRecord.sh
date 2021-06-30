# Title: Inventory Management - delete records
# Author: Ahmed M Khan
# Date Created: 6/28/21
# Date Modified: 6/28/21
# Description : This program deletes records in the inventory

#!/bin/bash

echo -n Please enter hostname or IP address?
read host
echo

        grep -q $host /home/ahmed/scripts/database
        if [ $? -eq 0 ]
        then
        echo
        sed -i '/'$host'/d' /home/ahmed/scripts/database
        echo $host has been deleted
        else
        echo Record does not exist
        fi
