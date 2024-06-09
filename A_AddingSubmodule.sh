#!/bin/sh
if ["basename $(pwd)" != "me"]; then
    echo "This script must be run from the me directory."
    exit 1
fi

git submodule add ../AbyssWorkshopOrigins/PartnerRepo plugins/partner
echo "Check the state of ./plugins/partner/. Does it contain partner files?"

read -n 1 -s


git status
echo "What has changed? What is the status of the submodule?"

read -n 1 -s

git status --ignore-submodules=none
echo "What is the status of the submodule now?"

read -n 1 -s

git add -A
git commit -m "Add submodule"
git push
echo "Publishing newly added submodule is very intuitive."