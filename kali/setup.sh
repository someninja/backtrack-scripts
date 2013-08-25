#!/bin/bash

clear

echo
echo

echo -ne "\e[1;33mDo you want to set up aliases? [y/n].\e[0m "
read input

if [ $input = 'y' ]; then
     echo -e "\e[1;33mSetting up aliases.\e[0m"
     cp /opt/scripts/kali/alias /root/.bash_aliases
     source /root/.bash_aliases
fi

echo
echo -e "\e[1;33mInstalling arp-scan.\e[0m"
apt-get install arp-scan
echo

echo -e "\e[1;33mInstalling Filezilla.\e[0m"
apt-get install filezilla
echo

echo -e "\e[1;33mInstalling gedit.\e[0m"
apt-get install gedit
echo

echo -e "\e[1;33mInstalling recon-ng.\e[0m"
apt-get install recon-ng
echo

echo -e "\e[1;33mInstalling xdotool.\e[0m"
apt-get install xdotool

echo
echo
