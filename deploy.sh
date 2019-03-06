#!/bin/bash

ARGUMENT=$1

if [ "$ARGUMENT" = "vars" ]; then
    ls -lrth Formula/ | egrep -v 'drwx|total' > before.compare
    ./updateBrew
    ls -lrth Formula/ | egrep -v 'drwx|total' > after.compare
    
    BEFORE=$(sha1sum before.compare | awk '{print $1}')
    AFTER=$(sha1sum after.compare | awk '{print $1}')
    rm -f *.compare
    
    if [ "$BEFORE" = "$AFTER" ]; then
        echo 'export CHANGED=0'
    else
        echo 'export CHANGED=1'
    fi
    exit 0
fi

if [ "$ARGUMENT" = "check" ]; then
    if [ $CHANGED -eq 1 ]; then
        git remote set-url origin https://jbvmio:${GITHUB_TOKEN}@github.com/jbvmio/homebrew-tap.git
        git add .
        git commit -m "syncing devel formulas"
        git branch temp
        git checkout master
        git merge temp
        git push origin master
    fi
fi
