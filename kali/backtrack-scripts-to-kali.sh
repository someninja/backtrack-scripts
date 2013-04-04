#!/bin/bash

# backtrack-scripts-to-kali.sh
# CREATED by The DataSec ... v.0.1 2013-04-04


clear

echo 
echo -e "\e[1;34mInstalling BackTrack-Scripts.\e[0m"
svn co https://backtrack-scripts.googlecode.com/svn/ /opt/scripts
chmod +x /opt/scripts/ -R

echo 
echo -e "\e[1;34mRunning setup.sh\e[0m"
chmod +x ./setup.sh
./setup.sh

# MOVED by The DataSec ... Should be in setup.sh script
echo
echo -e "\e[1;34mSetting up aliases.\e[0m"
echo -e "\e[1;34mUse [1;31muptdatekali\e[0m"

touch /root/.bash_aliases
cp ./alias /root/.bash_aliases
source /root/.bash_aliases

echo
echo -e "\e[1;34mGunzip RockYou wordlist.\e[0m"
gunzip /usr/share/wordlists/rockyou.txt.gz

echo
echo -e "\e[1;34mModifying paths in scripts.\e[0m"
sed -i 's#/pentest/passwords#/usr/share#g' /opt/scripts/crack-wifi.sh
sed -i 's#/pentest/enumeration/google/goofile/goofile.py#goofile#g' /opt/scripts/discover.sh
sed -i 's#/pentest/enumeration/google/goohost/goohost.sh#/usr/share/goohost/goohost.sh#g' /opt/scripts/discover.sh
sed -i 's#/pentest/enumeration/theharvester/theHarvester.py#theharvester#g' /opt/scripts/discover.sh
sed -i 's#/pentest/enumeration/web/urlcrazy/urlcrazy#urlcrazy#g' /opt/scripts/discover.sh
sed -i 's#/pentest/enumeration/dns/dnsrecon/dnsrecon.py#dnsrecon.py#g' /opt/scripts/discover.sh 
sed -i 's#/pentest/enumeration/dns/dnsrecon/namelist.txt#/usr/share/dnsrecon/namelist.txt#g' /opt/scripts/discover.sh
sed -i 's#/pentest/enumeration/dns/dnsenum/dnsenum.pl#/usr/share/dnsenum/dnsenum.pl#g' /opt/scripts/discover.sh 
sed -i 's#/pentest/enumeration/web/lbd/lbd.sh#/usr/share/lbd/lbd.sh#g' /opt/scripts/discover.sh
sed -i 's#cd /pentest/web/nikto/program/ && ./nikto.pl#nikto#g' /opt/scripts/discover.sh
sed -i 's#/pentest/database#/usr/share#g' /opt/scripts/resource/http.rc
sed -i 's#/pentest/enumeration/dns/dnsenum/dns.txt#/usr/share/dnsenum/dns.txt#g' /opt/scripts/old/dns-forward.sh

echo
echo -e "\e[1;34mExit Terminal and open a new one.\e[0m"
echo -e "\e[1;34mRun the new alias to update the distro and commonly used applications.\e[0m"
echo -e "\e[1;34mThis should be ran daily.\e[0m"
echo -e "   \e[1;31mroot@kali\e[0m:\e[1;34m~\e[0m# update"

echo
echo
