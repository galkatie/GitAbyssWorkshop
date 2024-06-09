#!/bin/sh
if [ "$(basename $(pwd))" != "me" ]; then
    ./echo "This script must be run from the me directory."
    exit 1
fi

echo "git submodule add ../../AbyssWorkshopOrigins/PartnerRepo ./plugins/partner"
git submodule add ../../AbyssWorkshopOrigins/PartnerRepo ./plugins/partner
./echo "Check the state of ./plugins/partner/. Does it contain partner files?"

read -n 1 -s

echo "git status"
git status
./echo "What has changed? What is the status of the submodule?"

read -n 1 -s

echo "git config --global status.submoduleSummary true"
git config --global status.submoduleSummary true
echo "git status"
git status

./echo "What is the status of the submodule now?"

read -n 1 -s

./echo "Publishing newly added submodule is very intuitive."

echo "git add -A"
git add -A

echo "git commit -m \"Add submodule\""
git commit -m "Add submodule"

echo "git push"
git push
