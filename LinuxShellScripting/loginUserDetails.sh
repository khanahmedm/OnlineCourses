# Title: Find users who logged in today on a particular day
# Author: Ahmed M Khan
# Date Created: 6/27/21
# Date Modified: 6/27/21
# Description : This program find users who were logged in today and on a particular day

#!/bin/bash

today=`date | awk '{print $1, $2, $3}'`
echo 'Users who logged in today'
last | grep "$today"

echo -n 'Please enter day (e.g., Mon): '
read -e day

echo -n 'Please enter month (e.g. Aug): '
read -e month

echo -n 'Please enter date (e.g. 28): '
read -e dt

last | grep "$day $month $dt"
