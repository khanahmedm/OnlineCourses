# Title: Selecting options using case statement
# Author: Ahmed M Khan
# Date Created: 6/27/21
# Date Modified: 6/27/21
# Description : This program lets a user select one of the options to demostrate how to use case statements

#!/bin/bash

echo
echo Please chose one of the options below
echo
echo 'a = Display Date and Time'
echo 'b = List file and directories'
echo 'c = List users logged in'
echo 'd = Check System uptime'
echo

read choices

case $choices in

        a) date;;
        b) ls;;
        c) who;;
        d) uptime;;
        *) echo Invalid choice - Bye.
esac
