# Title: Backup files using bash scripting techniques - use of functions
# Author: Ahmed M Khan
# Date Created: 7/03/21
# Date Modified: 7/03/21
# Description : This program shows use of variables for files and directory locations

#!/bin/bash

# $1 in LOGFILE stores the argument passed on the command line for log file name
LOGFILE="/home/$USER/$1"
BACKUP_LOC="/usr/bin/su*"
BACKUP_TARGET="/home/$USER/backup"

# Backing up files - note the use of && and ||
# && only runs if the previous command has exit status of zero; || runs if exit status has non-zero value
# Redirecting error output (stderr) of mkdir command to /dev/null goes to null device

# Function for creating a backup directory
function createBackupDir {
echo 'Creating a backup directory' && mkdir $BACKUP_TARGET 2> /dev/null || echo 'Directory already exists'
}

# Function for tail command
tail () {
        command tail -n $1
}

createBackupDir

# Copying files
# Redirecting both stdout and stderr of cp command to log file
echo 'Copying files' && cp $BACKUP_LOC $BACKUP_TARGET > $LOGFILE 2>&1

# Finding case-insesitive pattern in the log file and showing the last two lines
grep -i denied $LOGFILE | tail 2

echo 'Printing exit status'
echo $?

exit 127
