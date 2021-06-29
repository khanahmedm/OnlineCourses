# Title: Back up all files in the folder
# Author: Ahmed M Khan
# Date Created: 6/27/21
# Date Modified: 6/27/21
# Description : This program backs up all the files in a directory specified

#!/bin/bash

dir='/home/ahmed/scripts'

tar cvf /tmp/backup.tar $dir
gzip /tmp/backup.tar

find /tmp/backup.tar.gz -type f -mtime -1 -print &> /dev/null

if [ $? -eq 0 ]
then
        echo 'Backup was successful'
        echo 'Copying the backup file'
        cp /tmp/backup.tar.gz /tmp/backup
else
        echo 'Backup failed'
fi

# uncompress the file in the backup directory

tar -xvf /tmp/backup/backup.tar.gz -C /tmp/backup/backup
