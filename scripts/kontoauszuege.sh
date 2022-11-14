#!/bin/bash

YEAR=2021

for f in *\ *.pdf; do mv "$f" "${f// /_}"; done

for i in $(find ./ -print | grep -e "7559119_${YEAR}_Nr.[0-9][0-9][0-9]_Kontoauszug.*.pdf")
do
    mv -i $i ~/Documents/nextcloud/max/__MF__/__BANKING__/VRB/$YEAR/
done

for i in $(find ./ -print | grep -e "377559119_${YEAR}_Nr.[0-9][0-9][0-9]_Kontoauszug.*.pdf")
do
    mv -i $i ~/Documents/nextcloud/max/__MF__/__BANKING__/VRB/$YEAR/
done

for i in $(find ./ -print | grep -e "7559119_${YEAR}_.*.pdf")
do
    mv -i $i ~/Documents/nextcloud/max/__MF__/__BANKING__/VRB/Mitteilungen/
done
