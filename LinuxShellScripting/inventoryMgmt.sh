# Title: Inventory management
# Author: Ahmed M Khan
# Date Created: 6/28/21
# Date Modified: 6/28/21
# Description : This program maintains an inventory of hostnames and ip addresses

#!/bin/bash

echo
echo Please select one of the following options:
echo
echo 'a = Add a record'
echo 'd = Delete a record'
echo

read choice

case $choice in
        a) /home/ahmed/scripts/addInvRecord.sh;;
        d) /home/ahmed/scripts/delInvRecord.sh;;
        *) echo Invalid choice - Bye.
esac
