#!/bin/sh
if [ "$(basename $(pwd))" != "coworker" ]; then
    echo "This script must be run from the coworker directory."
    exit 1
fi

git submodule update
echo "Getting the fix. What is content of the remote.css file?"

read -n 1 -s

cd plugins/partner/
git pull     
echo "Trying once again to get the fix. What is content of the remote.css file now?"
read -n 1 -s

echo "Checking the status of the submodule. Do you see something different?"
git status
#Detached HEAD state
