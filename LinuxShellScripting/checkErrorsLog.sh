# Title: Check errors in syslog - Ubuntu
# Author: Ahmed M Khan
# Date Created: 6/26/21
# Date Modified: 6/26/21
# Description : This program checks if there are any errors in syslog. This is for Ubuntu. In CentOS, /var/log/messages can be accessed to view errors.

#!/bin/bash

#tail -fn0 /var/log/syslog | while read line
cat /var/log/syslog | while read line

do
        echo $line | egrep -i 'refused|invalid|error|fail|lost|shut|down|offline'

        if [ $? = 0 ]
        then
                echo $line >> /tmp/errorsLog.log
        fi
done
