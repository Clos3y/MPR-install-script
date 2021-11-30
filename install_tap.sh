#!/bin/dash

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
