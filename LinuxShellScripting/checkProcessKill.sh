# Title: Find process id(s) and kill it (them)
# Author: Ahmed M Khan
# Date Created: 6/28/21
# Date Modified: 6/28/21
# Description : This program finds process ids and kill those processes

#!/bin/bash

echo -n 'Enter process name to search for: '
read pname

echo 'Printing process id(s)'
ps -ef|grep $pname | grep -v grep | awk '{print $2}' | xargs -I{} echo {}


ps -ef|grep $pname | grep -v grep | awk '{print $2}' | xargs -I{} kill {}

echo $pname'  processes have been terminated'
