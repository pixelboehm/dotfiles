#!/bin/bash

YEAR=2022

cd ~/Downloads
for i in $(ls | grep -e KW.*.$YEAR.pdf)
do
    mv -i $i ~/Google\ Drive/__02_WORK/ES-Work/Documents/Timesheets/$YEAR/
done
