#! /bin/bash

# This script is very slow, but definately faster than
# just trying each lab machine individually

LabMachine=10
echo "The following lab machines are available... "
echo

while [ "$LabMachine" -lt 94 ]; do
        
        ping -c 1 "cca-ug04-09$LabMachine" > /dev/null 2>&1
        
        if [ $? -eq 0 ]; then
                echo "cca-ug04-09$LabMachine"
                (( LabMachine++ ))
        else
                (( LabMachine++ ))
        fi
done
