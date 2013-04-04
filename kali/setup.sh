#!/bin/bash

# MODIFIED by The DataSec ... v.0.1 2003-04-04

clear

# *******************
# Setup for BackTrack
# *******************

if [ `uname -a | awk '{print $2}'` = "bt" ]
   then 

echo
echo -e "\e[1;34mCreating SSH keys.\e[0m"
sshd-generate

echo
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
echo -e "\e[1;34m##################################\e[0m"
echo
echo -e "\e[1;34mRemoving nmap files and folders.\e[0m"

rm -rf /root/.zenmap/
rm -rf /root/nmap-svn/
rm -rf /usr/local/share/ncat/
rm -rf /usr/local/share/nmap/
rm -rf /usr/local/share/zenmap/
rm /usr/local/bin/ncat
rm /usr/local/bin/ndiff
rm /usr/local/bin/nmap
rm /usr/local/bin/nmap-update
rm /usr/local/bin/nmapfe
rm /usr/local/bin/nping
rm /usr/local/bin/uninstall_zenmap
rm /usr/local/bin/xnmap
rm /usr/local/bin/zenmap
rm /usr/local/share/nmap
rm /usr/local/share/zenmap

apt-get remove nmap

echo
echo -e "\e[1;34mInstalling nmap.\e[0m"
svn co https://svn.nmap.org/nmap/ /root/nmap-svn/
cd /root/nmap-svn/
./configure && make && make install

echo
echo -e "\e[1;34mUpdating .bashrc.\e[0m"
grep -v "export PATH=\$PATH:/etc/alternatives/gem-bin" /root/.bashrc > /root/tmp
echo "export PATH=\$PATH:/etc/alternatives/gem-bin:root/nmap-svn/" >> /root/tmp
mv /root/tmp /root/.bashrc

echo
echo
fi


# **************
# Setup for Kali
# **************
if [ `uname -a | awk '{print $2}'` = "kali" ]
	then 
# REMOVED by The DataSec
# COMMENT by The DataSec ... Doesn't appear to be needed in Kali, but leaving here just in case.
#echo
#echo -e "\e[1;34mCreating SSH keys.\e[0m"
#sshd-generate

# COMMENT by The DataSec ... Pulls from local directory instead of /opt/scripts
# COMMENT by The DataSec ... Alias file now contains "updatekali", but is not in svn for backtrack-scripts yet.
echo
echo -e "\e[1;34mSetting up aliases.\e[0m"
touch /root/.bash_aliases
cp ./alias /root/.bash_aliases
source /root/.bash_aliases

echo
echo -e "\e[1;34mInstalling Filezilla.\e[0m"
apt-get install filezilla

echo
echo -e "\e[1;34mInstalling xdotool.\e[0m"
apt-get install xdotool

echo
echo -e "\e[1;34mInstalling dnsenum.\e[0m"
apt-get install dnsenum

echo
echo -e "\e[1;34mInstalling theharvester.\e[0m"
apt-get install theharvester

echo
echo -e "\e[1;34mInstalling arp-scan.\e[0m"
apt-get install arp-scan

# TODO by The DataSec ... removed ntpdate temporarily. Not a signed package in repository. Replace with ntpd -q -p time.nist.gov or something lighter.
#echo
#echo -e "\e[1;34mInstalling ntpdate.\e[0m"
#apt-get install ntpdate

echo
echo -e "\e[1;34mInstalling Ghost Phisher.\e[0m"
svn co http://ghost-phisher.googlecode.com/svn/Ghost-Phisher/ /usr/share/ghost-phisher/

echo
echo -e "\e[1;34mInstalling recon-ng.\e[0m"
git clone https://bitbucket.org/LaNMaSteR53/recon-ng.git /usr/share/recon-ng/

echo
echo -e "\e[1;34mInstalling goohost.\e[0m"
mkdir /usr/share/goohost/
cd /usr/share/goohost/
wget http://dl.dropbox.com/u/10761700/goohost.sh
chmod +x goohost.sh

echo
echo -e "\e[1;34mInstalling lbd.\e[0m"
mkdir /usr/share/lbd
cd /usr/share/lbd
wget -o lbd.sh http://ge.mine.nu/code/lbd
chmod +x lbd.sh

# ADDED by The DataSec
echo
echo -e "\e[1;34mUpdating locate database.\e[0m"
updatedb

# REMOVED by The DataSec
# COMMENT by The DataSec ... Doesn't appear to be needed in Kali, but leaving here just in case.
#echo
#echo -e "\e[1;34mUpdating .bashrc.\e[0m"
#grep -v "export PATH=\$PATH:/etc/alternatives/gem-bin" /root/.bashrc > /root/tmp
#echo "export PATH=\$PATH:/etc/alternatives/gem-bin:root/nmap-svn/" >> /root/tmp
#mv /root/tmp /root/.bashrc

echo
echo

fi
