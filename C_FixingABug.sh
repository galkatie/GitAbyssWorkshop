#!/bin/sh
if [ "$(basename $(pwd))" != "me" ]; then
    echo "This script must be run from the me directory."
    exit 1
fi

echo "Fixing the bug"
echo ".$(cat plugins/partner/remote.css)" > plugins/partner/remote.css
git status
read -n 1 -s

echo "Entering the submodule directory."
cd plugins/partner

echo "Committing the fix."
git commit -am "Fixed the bug"
git push


