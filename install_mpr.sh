#!/bin/dash

# Add makedeb repo
wget -qO - 'https://proget.hunterwittenborn.com/debian-feeds/makedeb.pub' | \
gpg --dearmor | \
sudo tee /usr/share/keyrings/makedeb-archive-keyring.gpg &> /dev/null

echo 'deb [signed-by=/usr/share/keyrings/makedeb-archive-keyring.gpg arch=all] https://proget.hunterwittenborn.com/ makedeb main' | \
sudo tee /etc/apt/sources.list.d/makedeb.list

sudo apt update

sudo apt install makedeb

# Install tap
git clone https://mpr.hunterwittenborn.com/tap.git
cd tap/
makedeb -si

tap install tap
tap update

cd

sudo rm -rf tap/

# Remove makedeb repo
sudo rm /etc/apt/sources.list.d/makedeb.list

# Install makedeb from tap
tap install makedeb
