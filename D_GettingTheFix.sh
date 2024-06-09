#!/bin/sh
if [ "$(basename $(pwd))" != "coworker" ]; then
    ./echo "This script must be run from the coworker directory."
    exit 1
fi

echo "git pull"
git pull
echo "git submodule update"
git submodule update
./echo "Getting the fix. What is content of the remote.css file?"

read -n 1 -s

echo "git pull --recurse-submodules"
git pull --recurse-submodules     
./echo "Trying once again to get the fix. What is content of the remote.css file now?"
read -n 1 -s

echo "cd plugins/partner"
cd plugins/partner
echo "git status"
git status
../../echo "Checking the status of the submodule. Do you see something different?"
