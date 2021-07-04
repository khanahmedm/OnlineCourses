# Title: Trap signals
# Author: Ahmed M Khan
# Date Created: 7/04/21
# Date Modified: 7/04/21
# Description : This program shows use of trapping an interrupt signal when we press Ctrl + C

#!/bin/bash

ctrlc=0

function trap_ctrlc {
        let ctrlc++
        echo
        if [[ $ctrlc == 1 ]]; then
                echo 'Stop doing that.'
        elif [[ $ctrlc == 2 ]]; then
                echo 'I warned you...'
        else
                echo 'Throwing in the towel.'
                exit
        fi
}

trap trap_ctrlc SIGINT

while true
do
        echo 'Sleeping....'
        sleep 10
done
