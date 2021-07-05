#!/bin/bash

COUNTER=20

until [ $COUNTER -lt 10 ]
do
        touch file$COUNTER
        let COUNTER-=1
done
