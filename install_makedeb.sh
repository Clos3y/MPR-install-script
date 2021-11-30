#!/bin/dash


# Add makedeb repo (from https://makedeb.hunterwittenborn.com/home/installing/apt-repository/ inline with GPL v1.3 license)
wget -qO - 'https://proget.hunterwittenborn.com/debian-feeds/makedeb.pub' | \
gpg --dearmor | \
sudo tee /usr/share/keyrings/makedeb-archive-keyring.gpg &> /dev/null

echo 'deb [signed-by=/usr/share/keyrings/makedeb-archive-keyring.gpg arch=all] https://proget.hunterwittenborn.com/ makedeb main' | \
sudo tee /etc/apt/sources.list.d/makedeb.list

# Update repos
sudo apt update

# Install makedeb stable
sudo apt install makedeb
