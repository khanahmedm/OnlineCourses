#!/bin/bash

COUNTER=0
while [ $COUNTER -lt 10 ]
do
        touch file$COUNTER
        let COUNTER=COUNTER+1
done
