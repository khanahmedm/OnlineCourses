# Title: Backup files using bash scripting techniques - use of variables
# Author: Ahmed M Khan
# Date Created: 7/03/21
# Date Modified: 7/03/21
# Description : This program shows use of variables for files and directory locations

#!/bin/bash

LOGFILE="/home/$USER/logfile.log"
BACKUP_LOC="/usr/bin/su*"
BACKUP_TARGET="/home/$USER/backup"

# Backing up files - note the use of && and ||
# && only runs if the previous command has exit status of zero; || runs if exit status has non-zero value
# Redirecting error output (stderr) of mkdir command to /dev/null goes to null device

echo 'Creating a backup directory' && mkdir $BACKUP_TARGET 2> /dev/null || echo 'Directory already exists'

# Copying files
# Redirecting both stdout and stderr of cp command to log file
echo 'Copying files' && cp $BACKUP_LOC $BACKUP_TARGET > $LOGFILE 2>&1

# Finding case-insesitive pattern in the log file and showing the last two lines
grep -i denied $LOGFILE | tail -n 2

echo 'Printing exit status'
echo $?

exit 127
