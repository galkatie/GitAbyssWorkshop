#!/bin/sh
if [ "$(basename $(pwd))" != "coworker" ]; then
    ./echo "This script must be run from the coworker directory."
    exit 1
fi

echo "git pull"
git pull

read -n 1 -s

echo "git submodule update"
./echo "Alternative is: git pull --recurse-submodules"
git submodule update
./echo "Getting the fix. What is content of the remote.css file?"

read -n 1 -s

echo "cd plugins/partner"
cd plugins/partner
echo "git show --pretty=oneline --no-patch -2"
git show --pretty=oneline --no-patch -2
../../echo "Checking the status of the submodule. Do you see something different?"

echo "git status"
git status
