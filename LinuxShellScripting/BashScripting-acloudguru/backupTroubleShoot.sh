#!/bin/bash -x
# Title: Backup files using bash scripting techniques - use of set -x
# Author: Ahmed M Khan
# Date Created: 7/06/21
# Date Modified: 7/06/21
# Description : This program shows use of set -x. Instead of specifying set -x, shebang has -x

if [ -z $1 ]
then
        echo 'You need to enter log file name. Please try running the script again.'
        exit 255
fi

# $1 in LOGFILE stores the argument passed on the command line for log file name
LOGFILE="/home/$USER/$1"
BACKUP_LOC="/usr/bin"
BACKUP_TARGET="/home/$USER/backup"

# Backing up files - note the use of && and ||
# && only runs if the previous command has exit status of zero; || runs if exit status has non-zero value
# Redirecting error output (stderr) of mkdir command to /dev/null goes to null device

# Function for creating a backup directory and setting local variable

function createBackupDir {

# Using if statement to check if the directory already exists
        if [ -d $BACKUP_TARGET ]
        then
                echo 'Directory already exists.'
                echo "$(date +"%x %r %Z")" >> $LOGFILE
                return 1
        else
                echo 'Creating a backup directory'
                mkdir $BACKUP_TARGET
                echo "$(date +"%x %r %Z")" >> $LOGFILE
                return 0
        fi

}

# Function for tail command
tail () {
        command tail -n $1
}

cleanup () {
        rm -rf $BACKUP_TARGET
        echo "RECEIVED CTRLC" >> $LOGFILE
}

if (createBackupDir)
then
        echo 'Directory did not exist.'
else
        echo 'Directory did exist.'
fi

trap cleanup SIGINT

# Copying files
# Redirecting both stdout and stderr of cp command to log file
#echo 'Copying files' && cp -v $BACKUP_LOC $BACKUP_TARGET >> $LOGFILE 2>&1

# Copying file using for loop
cd $BACKUP_LOC
for i in $( ls su* )
do
        cp -v $i $BACKUP_TARGET/$i-backup >> $LOGFILE 2>&1
done

# Finding case-insesitive pattern in the log file and showing the last two lines
grep -i denied $LOGFILE | tail 2

echo 'Printing exit status'
echo $?

# Setting exit code
exit 127
