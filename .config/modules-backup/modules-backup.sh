#!/bin/bash

if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root."
else
    pacman -Qqe | grep -v "$(pacman -Qqm)" > packages.txt
    pacman -Qqm > packages-aur.txt
fi

