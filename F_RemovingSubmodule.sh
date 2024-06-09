#!/bin/sh
if [ "$(basename $(pwd))" != "coworker" ]; then
    ./echo "This script must be run from the coworker directory."
    exit 1
fi

echo "git pull"
git pull
./echo "Getting the removal. What is status of repo?"

read -n 1 -s
echo "git status"
git status

read -n 1 -s

./echo "Removing the unnecesary files."
echo "rm -rf  plugins/partner"
rm -rf  plugins/partner
