#!/bin/bash

YEAR=2023
COUNT=0

cd ~/Downloads
for i in $(ls | grep -e KW.*.$YEAR.pdf)
do
    mv -i $i ~/Google\ Drive/__02_WORK/ES-Work/Documents/Timesheets/$YEAR/ 
    COUNT=$((COUNT=COUNT+1))
done

echo "Processed $COUNT files."
