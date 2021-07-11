#!/bin/bash

echo -n 'Enter full directory path and file name for soft link: '
read fname

echo -n 'Provide the path where you need the link file: '
read fpath

cd $fpath

ln $fname

filename=`ls $fname | xargs -n 1 basename`

ls -l $fpath/$filename
