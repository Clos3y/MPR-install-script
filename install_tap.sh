#!/bin/dash


if [ $(apt list --installed | grep python3-setuptools | wc -l) -lt 1 ]
then
echo "Warning! python3-setuptools not installed! Would you like to install now? (y/n)"
read answer
if [ "$answer" = "yes" ] || [ "$answer" = "y" ]; 
then 
sudo apt update 
sudo apt install python3-setuptools
else 
echo "You answered no! Aborting!"
exit 1
fi
else fi

# Clone tap
git clone https://mpr.hunterwittenborn.com/tap.git

# Enter directory
cd tap/

# Build package
makedeb -si

# Leave directory
cd ..

# Install tap through tap (essential before anything else)
tap install tap

sudo rm -rf tap/
