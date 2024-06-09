#!/bin/sh
if [ "$(basename $(pwd))" != "me" ]; then
    ./echo "This script must be run from the me directory."
    exit 1
fi


./echo "Removing the submodule."
git rm plugins/partner 

#read -n 1 -s

./echo "Committing the removal."
git add –A
git commit
git push
