#!/bin/bash; C:/Program\ Files/Git/user/bin/sh.exe

PROTECTEDBRANCH="master"

CURRENTBRANCH=$(git rev-parse --abbrev-ref HEAD)

if [ "$PROTECTEDBRANCH" == "$CURRENTBRANCH" ]; then
    #RANDOMBRANCH=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 8 | head -n 1)
    DATE = $(date)
    RANDOMBRANCH = "update/drupal_update_$DATE"
    git checkout -b $RANDOMBRANCH master



    git add .

    DATE = $(date)

    git commit -m "changes made on $DATE"

    git push --set-upstream origin $RANDOMBRANCH

fi

