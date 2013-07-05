#!/bin/bash

clear

echo -e "\e[1;34mSetting up aliases.\e[0m"
cp /opt/scripts/kali/alias /root/.bash_aliases
source /root/.bash_aliases

echo
echo -e "\e[1;34mInstalling Filezilla.\e[0m"
apt-get install filezilla

echo
echo -e "\e[1;34mInstalling gedit.\e[0m"
apt-get install gedit

echo
echo -e "\e[1;34mInstalling xdotool.\e[0m"
apt-get install xdotool

echo
echo -e "\e[1;34mInstalling arp-scan.\e[0m"
apt-get install arp-scan

echo
echo
