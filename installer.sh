#!/bin/dash

echo "Installing makedeb stable"

exec dash install_makedeb.sh

echo "Would you prefer tap (1, default) or stoke (2) as your MPR helper?"

read mpr_helper

if [$mpr_helper = 2] || [$mpr_helper = "stoke"]
then
exec dash install_stoke.sh
else 
exec dash install_tap.sh
fi

# Tidying
sudo rm /etc/apt/sources.list.d/makedeb.list

# Install makedeb from tap
tap install makedeb
