#!/bin/sh

if ["basename $(pwd)" != "coworker"]; then
    echo "This script must be run from the coworker directory."
    exit 1
fi

git pull
echo "You pulled the changes with submodule - what changed? Is page working properly?"

read -n 1 -s

git submodule init
echo "Maybe now you can see the changes in the submodule?"

read -n 1 -s

git submodule update
echo "Now you have the changes in the submodule. Is everything working properly?"