#!/bin/bash

echo "Input the number of your Linux distro";
echo "1: Debian/Ubuntu/Linux Mint";
echo "2: ArchLinux/Manjaro";
echo "3: SUSE";
echo "4: Fedora/CentOS/RHEL";

read -p "What's your Linux distro?: " choice
int_choice=$((choice + 0));

case $int_choice in
  1) distro=1 ;;
  2) distro=2 ;;
  3) distro=3 ;;
  4) distro=4 ;;
  *)
esac

if [ "$distro" -eq 1 ]; then
  apt install -y openvpn dialog python3-pip python3-setuptools
  pip3 install protonvpn-cli
elif [ "$distro" -eq 2 ]; then
  pacman -S openvpn dialog python-pip python-setuptools
  pip3 install protonvpn-cli
elif [ "$distro" -eq 3 ]; then
  zypper in -y openvpn dialog python3-pip python3-setuptools
  pip3 install protonvpn-cli
elif [ "$distro" -eq 4 ]; then
  dnf install -y openvpn dialog python3-pip python3-setuptools
  pip3 install protonvpn-cli
fi

protonvpn init