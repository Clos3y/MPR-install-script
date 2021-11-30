# MPR-install-script
A script to install `makedeb` and an MPR helper (either `tap` or `stoke` at present) for accessing the makedeb package repository (a.k.a. debian user repository)

## Prerequisites

* `build-essential` for makedeb
* `python3-setuptools` for tap

## Usage

0. Read and check the prerequisites are on your system
1. Clone the repository to your system via `git clone https://github.com/Clos3y/MPR-install-script.git` and enter the directory
2. Either make the `installer.sh` executable via
```
#: chmod +x installer.sh
```
or run it using your preferred shell (it is intended to be run with `dash`). The rest of the script will explain itself.
