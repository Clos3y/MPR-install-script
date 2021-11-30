#!/bin/dash

if [ apt list --installed | grep build-essential | wc -l -lt 1 ]
then
echo "Warning! build-essential not installed! Aborting!"
exit 1
else
fi

echo "Installing makedeb stable"

dash install_makedeb.sh

clear

echo "Would you prefer tap (1, default) or stoke (2) as your MPR helper?"

read mpr_helper

if [ $mpr_helper = 2] || [ $mpr_helper = "stoke"]
then
dash install_stoke.sh
else 
dash install_tap.sh
fi

# Tidying
sudo rm /etc/apt/sources.list.d/makedeb.list

# Install makedeb from tap
tap install makedeb
