#!/bin/bash

clear

echo
echo

echo -ne "\e[1;33mDo you want to use the bleeding edge repos? [y/n].\e[0m "
read repo

if [ $repo = 'y' ]; then
     echo -e "\e[1;33mSetting up bleeding edge repos.\e[0m"
     echo deb http://repo.kali.org/kali kali-bleeding-edge main >> /etc/apt/sources.list
fi

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
apt-get -y install arp-scan
echo

echo -e "\e[1;33mInstalling Filezilla.\e[0m"
apt-get -y install filezilla
echo

echo -e "\e[1;33mInstalling gedit.\e[0m"
apt-get -y install gedit
echo

echo -e "\e[1;33mInstalling recon-ng.\e[0m"
apt-get -y install recon-ng
echo

echo -e "\e[1;33mInstalling xdotool.\e[0m"
apt-get -y install xdotool
echo

echo -e "\e[1;33mUpdating Kali distro.\e[0m"
apt-get -y update ; apt-get -y upgrade

echo
echo

