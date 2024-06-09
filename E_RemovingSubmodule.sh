#!/bin/sh
if [ "$(basename $(pwd))" != "me" ]; then
    ./echo "This script must be run from the me directory."
    exit 1
fi


./echo "Removing the submodule."
echo "git rm plugins/partner"
git rm plugins/partner 

read -n 1 -s

./echo "Committing the removal."
echo "git add -A"
git add –A
echo "git commit -m \"Remove submodule\""
git commit -m "Remove submodule"
echo "git push"
git push
