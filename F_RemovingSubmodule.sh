#!/bin/sh
if [ "$(basename $(pwd))" != "coworker" ]; then
    ./echo "This script must be run from the coworker directory."
    exit 1
fi

git pull
./echo "Getting the removal. What is status of repo?"

#read -n 1 -s

git status --ignore-submodules=none

#read -n 1 -s

./echo "Removing the unnecesary files."
rm  plugins/partner
