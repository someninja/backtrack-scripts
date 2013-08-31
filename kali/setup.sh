#!/bin/bash

clear

echo
echo

echo -ne "\e[1;33mDo you want to use the bleeding edge repos? [y/n].\e[0m "
read repo

if [ $repo = 'y' ]; then
     echo -e "\e[1;33mSetting up bleeding edge repos.\e[0m"
     echo deb http://repo.kali.org/kali kali-bleeding-edge main >> /etc/apt/sources.list
     echo
     echo -e "\e[1;33mUpdating Repositories.\e[0m"
     apt-get -y update ; apt-get -y upgrade; apt-get -y dist-upgrade
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
echo -ne "\e[1;33mDo you want to enable metasploit service at startup? [y/n].\e[0m "
read service

if [ $service = 'y' ]; then
     echo -e "\e[1;33mSetting up metasploit service.\e[0m"
     sleep 3
     update-rc.d postgresql enable && update-rc.d metasploit enable
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
echo

