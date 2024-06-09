#!/bin/sh
if [ "$(basename $(pwd))" != "me" ]; then
    ./echo "This script must be run from the me directory."
    exit 1
fi

./echo "Fixing the bug"
echo "echo \"\$(cat plugins/partner/remote.css)\" > plugins/partner/remote.css" > plugins/partner/remote.css
echo ".$(cat plugins/partner/remote.css)" > plugins/partner/remote.css

echo "git status"
git status
#read -n 1 -s

./echo "Entering the submodule directory."
echo "cd plugins/partner"
cd plugins/partner
echo "git status"
git status

read -n 1 -s

./echo "Committing the fix in submodule."
echo "git add -A\ngit commit -m \"Fixing the bug in submodule\"\ngit push"
git add -A
git commit -m "Fixing the bug in submodule"
git push


read -n 1 -s

./echo "Committing the fix in main."
echo "cd ../.."
cd ../..
echo "git add -A\ngit commit -am \"Updating submodule to fixed commit\"\ngit push"
git add -A
git commit -m "Updating submodule to fixed commit"
git push


