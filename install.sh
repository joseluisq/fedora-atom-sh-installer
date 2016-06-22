#!/bin/sh

# Atom Installer
# for Fedora Linux x86_x64

# Miscellaneous
B=`tput bold`
N=`tput sgr0`

# Installation
atom_rpm="atom.x86_x64.rpm"

echo "${B}Atom x86_x64 Installer ${N}"
echo "${B}-------------------------${N}"
echo "Downloading latest package..."
curl -L "https://atom.io/download/rpm" -o $atom_rpm
echo "Installing..."
sudo rpm -ivh $atom_rpm
rm $atom_rpm
echo "`atom -v`"
