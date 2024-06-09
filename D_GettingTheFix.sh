#!/bin/sh
if [ "$(basename $(pwd))" != "coworker" ]; then
    ./echo "This script must be run from the coworker directory."
    exit 1
fi

git pull
git submodule update
./echo "Getting the fix. What is content of the remote.css file?"

# read -n 1 -s

git pull --recurse-submodules     
./echo "Trying once again to get the fix. What is content of the remote.css file now?"
read -n 1 -s

cd plugins/partner
git status
./echo "Checking the status of the submodule. Do you see something different?"
#Detached HEAD state
