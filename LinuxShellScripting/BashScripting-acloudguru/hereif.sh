#!/bin/bash

#VAR="This is a string containing txt"
VAR="This is a string containing abc"

if grep -q "txt" <<< "$VAR"
then
        echo "$VAR contains the substring sequence \"txt\""
else
        echo "Nope, didn't find it"
fi
