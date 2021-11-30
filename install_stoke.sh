#!/bin/dash

# Clone stoke
git clone https://mpr.hunterwittenborn.com/stoke-git.git

# Enter directory
cd stoke-git/

# Build package
makedeb -si

# Leave directory
cd ..

# Install stoke through stoke (essential before anything else)
stoke install stoke

sudo rm -rf stoke-git/
