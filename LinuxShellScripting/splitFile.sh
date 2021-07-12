#!/bin/bash

echo -n 'Enter file name of the file to split: '
read fname

echo -n 'Enter the number of splits: '
read nsplits

echo -n 'Enter split file name: '
read fsplit

split -l $nsplits $fname $fsplit
