#!/bin/sh

# Atom Shell Installer (latest version)
# for Fedora 24+ Linux x86_x64

# Miscellaneous
B=`tput bold`
N=`tput sgr0`

# Installation
ATOM_RPM="atom.x86_x64.rpm"
BINPATH="`type -P atom`"


echo "${B}Atom x86_x64 Installer ${N}"
echo "${B}-------------------------${N}"

if [ -s $BINPATH ]; then
  echo "Removing old Atom package..."
  echo 
  
  sudo dnf remove atom
fi

echo "Downloading latest package..."
echo

curl -L "https://atom.io/download/rpm" -o $ATOM_RPM

echo
echo "Installing..."
echo

sudo rpm -ivh $ATOM_RPM

rm $ATOM_RPM
echo "`atom -v`"
