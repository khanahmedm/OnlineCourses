# Title: Disable inactive users
# Author: Ahmed M Khan
# Date Created: 6/27/21
# Date Modified: 6/27/21
# Description : This program finds and disables inactive users

#!/bin/bash

a=`lastlog | tail -n+2 | grep user1 | awk '{print $1}'`
echo $a

# disables using for loop
for i in $a
do
usermod -L $i
done




# disables using xargs

lastlog | tail -n+2 | grep user2 | awk '{print $1}' | xargs -I{} echo {}

lastlog | tail -n+2 | grep user2 | awk '{print $1}' | xargs -I{} usermod -L {}
