#!/bin/dash

if [ $(apt list --installed | grep build-essential | wc -l) -lt 1 ]
then
    echo "Warning! build-essential not installed! Would you like to install now? (y/n)"
    read answer
    if [ "$answer" = "yes" ] || [ "$answer" = "y" ];
    then
        sudo apt update
        sudo apt install build-essential
    else
        echo "You answered no! Aborting!"
        exit 1
    fi
else
    :
fi

echo "Installing makedeb stable"

dash install_makedeb.sh

clear

echo "Would you prefer tap (1, default) or stoke (2) as your MPR helper?"

read mpr_helper

if  [ "$mpr_helper" = "2" ]||  [ "$mpr_helper" = "stoke"  ];
then
    echo "stoke is presently broken in my testing: aborting!"

    exit 1

    dash install_stoke.sh

    # Tidying
    sudo rm /etc/apt/sources.list.d/makedeb.list

    stoke install makedeb

else
    dash install_tap.sh

    # Tidying
    sudo rm /etc/apt/sources.list.d/makedeb.list

    # Install makedeb from tap
    tap install makedeb

fi

