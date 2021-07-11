#!/bin/bash

echo -n 'Enter full directory path and file name for soft link: '
read fname

echo -n 'Provide the path where you need the link file: '
read fpath

cd $fpath

ln -s $fname

find $fpath -maxdepth 1 -type l -ls
