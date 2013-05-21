#!/bin/bash

clear

echo -e "\e[1;34mSetting up aliases.\e[0m"
touch /root/.bash_aliases
cp /opt/scripts/alias /root/.bash_aliases
source /root/.bash_aliases

echo
echo -e "\e[1;34mInstalling Filezilla.\e[0m"
apt-get install filezilla

echo
echo -e "\e[1;34mInstalling xdotool.\e[0m"
apt-get install xdotool

echo
echo -e "\e[1;34mUpdating .bashrc.\e[0m"
grep -v "export PATH=\$PATH:/etc/alternatives/gem-bin" /root/.bashrc > /root/tmp
mv /root/tmp /root/.bashrc

echo
echo
