#!/bin/bash


# Check if script is run as root
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

username=$(id -u -n 1000)
builddir=$(pwd)

# Update package list and update system
pacman -Syu --noconfirm

