#!/bin/dash

# Clone tap
git clone https://mpr.hunterwittenborn.com/stoke-git.git

# Enter directory
cd stoke-git/

# Build package
makedeb -si

# Leave directory
cd ..

# Install tap through tap (essential before anything else)
stoke install stoke

sudo rm -rf stoke-git/
