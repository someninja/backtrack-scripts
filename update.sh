#!/bin/bash

clear
echo
echo

echo -e "\e[1;34mUpdating date/time.\e[0m"
cd /etc/network/if-up.d/ ; ntpdate time.nist.gov
echo

echo -e "\e[1;34mUpdating BackTrack.\e[0m"
apt-get update ; apt-get -y upgrade ; apt-get -y dist-upgrade ; apt-get -y autoremove ; apt-get -y autoclean; echo

if [ -d /pentest/wireless/aircrack-ng/.git ]; then
     echo -e "\e[1;34mUpdating aircrack-ng.\e[0m"
     cd /pentest/wireless/aircrack-ng/ ; git pull
     echo
else 
     echo -e "\e[1;33mInstalling aircrack-ng.\e[0m"
     rm -rf /pentest/wireless/aircrack-ng/
     git clone git://github.com/aircrack-ng/aircrack-ng.git /pentest/wireless/aircrack-ng/
     echo
fi

if [ -d /pentest/web/beef/.git ]; then 
     echo -e "\e[1;34mUpdating BeEF.\e[0m"
     cd /pentest/web/beef/ ; ./update-beef
     echo
else 
     echo -e "\e[1;33mInstalling BeEF.\e[0m"
     rm -rf /pentest/web/beef/
     git clone git://github.com/beefproject/beef.git /pentest/web/beef/
     echo
fi

if [ -d /pentest/bluetooth/bluediving/.git ]; then 
     echo -e "\e[1;34mUpdating Bluediving.\e[0m"
     cd /pentest/bluetooth/bluediving/ ; git pull
     echo
else 
     echo -e "\e[1;33mInstalling Bluediving.\e[0m"
     rm -rf /pentest/bluetooth/bluediving/
     git clone git://github.com/balle/bluediving.git /pentest/bluetooth/bluediving/
     echo
fi

if [ -d /pentest/bluetooth/bluelog/.git ]; then 
     echo -e "\e[1;34mUpdating Bluelog.\e[0m"
     cd /pentest/bluetooth/bluelog/ ; git pull
     echo
else
     echo -e "\e[1;33mInstalling Bluelog.\e[0m"
     rm -rf /pentest/bluetooth/bluelog/
     git clone git://github.com/MS3FGX/Bluelog.git /pentest/bluetooth/bluelog/
     echo
fi

if [ -d /pentest/bluetooth/bluepot/.svn ]; then 
     echo -e "\e[1;34mUpdating Bluepot.\e[0m"
     cd /pentest/bluetooth/bluepot/ ; svn up
     echo
else 
     echo -e "\e[1;33mInstalling Bluepot.\e[0m"
     rm -rf /pentest/bluetooth/bluepot/
     svn co http://bluepot.googlecode.com/svn/BluePot/BluePot/ /pentest/bluetooth/bluepot/
     echo
fi

if [ -d /pentest/fuzzers/bed/.git ]; then 
     echo -e "\e[1;34mUpdating Bed.\e[0m"
     cd /pentest/fuzzers/bed/ ; git pull
     echo
else
     echo -e "\e[1;33mInstalling Bed.\e[0m"
     rm -rf /pentest/fuzzers/bed/
     git clone git://github.com/wireghoul/bed.git /pentest/fuzzers/bed/
     echo
fi

if [ -d /pentest/passwords/chntpw/.git ]; then
     echo -e "\e[1;34mUpdating chntpw.\e[0m"
     cd /pentest/passwords/chntpw/ ; git pull
     echo
else 
     echo -e "\e[1;33mInstalling chntpw.\e[0m"
     rm -rf /pentest/passwords/chntpw/
     git clone git://github.com/Tody-Guo/chntpw.git /pentest/passwords/chntpw/
     echo
fi

if [ -d /pentest/enumeration/web/cms-explorer/.svn ]; then
     echo -e "\e[1;34mUpdating CMS Explorer.\e[0m"
     cd /pentest/enumeration/web/cms-explorer/ ; svn up
     echo
else 
     echo -e "\e[1;33mInstalling CMS Explorer.\e[0m"
     rm -rf /pentest/enumeration/web/cms-explorer/
     svn co http://cms-explorer.googlecode.com/svn/trunk/ /pentest/enumeration/web/cms-explorer/
     echo
fi

if [ -d /pentest/passwords/creddump/.svn ]; then
     echo -e "\e[1;34mUpdating creddump.\e[0m"
     cd /pentest/passwords/creddump/ ; svn up
     echo
else 
     echo -e "\e[1;33mInstalling creddump.\e[0m"
     rm -rf /pentest/passwords/creddump/
     svn co http://creddump.googlecode.com/svn/trunk/ /pentest/passwords/creddump/
     echo
fi

if [ -d /pentest/misc/creepy/.git ]; then
     echo -e "\e[1;34mUpdating creepy.\e[0m"
     cd /pentest/misc/creepy/ ; git pull
     echo
else 
     echo -e "\e[1;33mInstalling creepy.\e[0m"
     rm -rf /pentest/misc/creepy/
     git clone git://github.com/ilektrojohn/creepy.git /pentest/misc/creepy/
     echo
fi

if [ -d /pentest/passwords/cupp/.git ]; then
     echo -e "\e[1;34mUpdating cupp.\e[0m"
     cd /pentest/passwords/cupp/ ; git pull
     echo
else 
     echo -e "\e[1;33mInstalling cupp.\e[0m"
     rm -rf /pentest/passwords/cupp/
     git clone git://github.com/Mebus/cupp.git /pentest/passwords/cupp/
     echo
fi

if [ -d /pentest/backdoors/dbd/.git ]; then 
     echo -e "\e[1;34mUpdating dbd.\e[0m"
     cd /pentest/backdoors/dbd/ ; git pull
     echo
else
     echo -e "\e[1;33mInstalling dbd.\e[0m"
     rm -rf /pentest/backdoors/dbd/
     git clone git://github.com/gitdurandal/dbd.git /pentest/backdoors/dbd/
     echo
fi

echo -e "\e[1;34mUpdating deadicated.\e[0m" ; cd /pentest/telephony/dedected ; svn up ; echo

if [ -d /pentest/scanners/deblaze/.git ]; then
     echo -e "\e[1;34mUpdating deblaze.\e[0m"
     cd /pentest/scanners/deblaze/ ; git pull
     echo
else 
     echo -e "\e[1;33mInstalling deblaze.\e[0m"
     rm -rf /pentest/scanners/deblaze/
     git clone git://github.com/SpiderLabs/deblaze.git /pentest/scanners/deblaze/
     echo
fi

if [ -d /pentest/stressing/dhcpig/.git ]; then
     echo -e "\e[1;34mUpdating DHCPig.\e[0m"
     cd /pentest/stressing/dhcpig/ ; git pull
     echo
else 
     echo -e "\e[1;33mInstalling DHCPig.\e[0m"
     rm -rf /pentest/stressing/dhcpig/
     git clone git://github.com/kamorin/DHCPig.git /pentest/stressing/dhcpig/
     echo
fi

if [ -d /pentest/web/dotdotpwn/.git ]; then 
     echo -e "\e[1;34mUpdating dotdotpwn.\e[0m"
     cd /pentest/web/dotdotpwn/ ; git pull
     echo
else 
     echo -e "\e[1;33mInstalling dotdotpwn.\e[0m"
     rm -rf /pentest/web/dotdotpwn/
     git clone git://github.com/wireghoul/dotdotpwn.git /pentest/web/dotdotpwn/
     echo
fi

if [ -d /pentest/enumeration/dns/dnsenum/.svn ]; then 
     echo -e "\e[1;34mUpdating dnsenum.\e[0m"
     cd /pentest/enumeration/dns/dnsenum/ ; svn up
     echo
else 
     echo -e "\e[1;33mInstalling dnsenum.\e[0m"
     rm -rf /pentest/enumeration/dns/dnsenum/
     svn co http://dnsenum.googlecode.com/svn/trunk/ /pentest/enumeration/dns/dnsenum/
     echo
fi

if [ -d /pentest/enumeration/dns/dnsmap/.git ]; then 
     echo -e "\e[1;34mUpdating dnsmap.\e[0m"
     cd /pentest/enumeration/dns/dnsmap/ ; git pull
     echo
else 
     echo -e "\e[1;33mInstalling dnsmap.\e[0m"
     rm -rf /pentest/enumeration/dns/dnsmap/
     git clone git://github.com/makefu/dnsmap.git /pentest/enumeration/dns/dnsmap/
     echo
fi

if [ -d /pentest/enumeration/dns/dnsrecon/.git ]; then
     echo -e "\e[1;34mUpdating dnsrecon.\e[0m"
     cd /pentest/enumeration/dns/dnsrecon/ ; git pull
     echo
else 
     echo -e "\e[1;33mInstalling dnsrecon.\e[0m"
     rm -rf /pentest/enumeration/dns/dnsrecon/
     git clone git://github.com/darkoperator/dnsrecon.git /pentest/enumeration/dns/dnsrecon/
     echo
fi

if [ -d /pentest/enumeration/dns/dnswalk/.git ]; then 
     echo -e "\e[1;34mUpdating dnswalk.\e[0m"
     cd /pentest/enumeration/dns/dnswalk/ ; git pull
     echo
else 
     echo -e "\e[1;33mInstalling dnswalk.\e[0m"
     rm -rf /pentest/enumeration/dns/dnswalk/
     git clone git://github.com/davebarr/dnswalk.git /pentest/enumeration/dns/dnswalk/
     echo
fi

if [ -d /pentest/scanners/easy-creds/ ]; then 
     rm -rf /pentest/scanners/easy-creds/
fi

if [ -d /pentest/sniffers/easy-creds/.git ]; then
     echo -e "\e[1;34mUpdating easy-creds.\e[0m"
     cd /pentest/sniffers/easy-creds/ ; git pull
     echo
else 
     echo -e "\e[1;33mInstalling easy-creds.\e[0m"
     rm -rf /pentest/sniffers/easy-creds/
     git clone https://github.com/brav0hax/easy-creds.git /pentest/sniffers/easy-creds/
     echo
fi

echo -e "\e[1;34mUpdating exploit-db.\e[0m" ; cd /pentest/exploits/exploitdb ; svn up ; echo

if [ -d /pentest/exploits/fasttrack/ ]; then 
     rm -rf /pentest/exploits/fasttrack/
fi

echo -e "\e[1;34mUpdating Fern WiFi Cracker.\e[0m" ; cd /pentest/wireless/fern-wifi-cracker ; svn up ; echo

if [ -d /pentest/web/fimap/.svn ]; then
     echo -e "\e[1;34mUpdating Fimap.\e[0m"
     cd /pentest/web/fimap/ ; svn up
     echo
else 
     echo -e "\e[1;33mInstalling Fimap.\e[0m"
     rm -rf /pentest/web/fimap/
     svn co http://fimap.googlecode.com/svn/trunk/ /pentest/web/fimap/
     echo
fi

if [ -d /pentest/passwords/findmyhash/.svn ]; then
     echo -e "\e[1;34mUpdating findmyhash.\e[0m"
     cd /pentest/passwords/findmyhash/ ; svn up
     echo
else 
     echo -e "\e[1;33mInstalling findmyhash.\e[0m"
     rm -rf /pentest/passwords/findmyhash/
     svn co http://findmyhash.googlecode.com/svn/trunk/ /pentest/passwords/findmyhash/
     echo
fi

if [ -d /pentest/wireless/freeradius-wpe/.git ]; then 
     echo -e "\e[1;34mUpdating FreeRADIUS.\e[0m"
     cd /pentest/wireless/freeradius-wpe/ ; git pull
     echo
else 
     echo -e "\e[1;33mInstalling FreeRADIUS.\e[0m"
     rm -rf /pentest/wireless/freeradius-wpe/
     git clone git://git.freeradius.org/freeradius-server.git /pentest/wireless/freeradius-wpe/
     echo
fi

if [ -d /pentest/sniffers/ghost-phisher/.svn ]; then
     echo -e "\e[1;34mUpdating Ghost Phisher.\e[0m"
     cd /pentest/sniffers/ghost-phisher/ ; svn up
     echo
else 
     echo -e "\e[1;33mInstalling Ghost Phisher.\e[0m"
     rm -rf /pentest/sniffers/ghost-phisher/
     svn co http://ghost-phisher.googlecode.com/svn/Ghost-Phisher/ /pentest/sniffers/ghost-phisher/
     echo
fi

echo -e "\e[1;34mUpdating GISKismet.\e[0m" ; cd /pentest/wireless/giskismet/ ; svn up ; echo

if [ -d /pentest/web/golismero/.git ]; then 
     echo -e "\e[1;34mUpdating golismero.\e[0m"
     cd /pentest/web/golismero/ ; git pull
     echo
else 
     echo -e "\e[1;33mInstalling golismero.\e[0m"
     rm -rf /pentest/web/golismero/
     git clone git://github.com/cr0hn/golismero.git /pentest/web/golismero/
     echo
fi

if [ -d /pentest/enumeration/google/goofile/.svn ]; then 
     echo -e "\e[1;34mUpdating goofile.\e[0m"
     cd /pentest/enumeration/google/goofile/ ; svn up
     echo
else 
     echo -e "\e[1;33mInstalling goofile.\e[0m"
     rm -rf /pentest/enumeration/google/goofile/
     svn co http://goofile.googlecode.com/svn/trunk/ /pentest/enumeration/google/goofile/
     echo
fi

if [ -d /pentest/enumeration/theharvester/.svn ]; then
     echo -e "\e[1;34mUpdating theHarvester.\e[0m"
     cd /pentest/enumeration/theharvester/ ; svn up
     echo
else 
     echo -e "\e[1;33mInstalling theHarvester.\e[0m"
     rm -rf /pentest/enumeration/theharvester/
     svn co http://theharvester.googlecode.com/svn/trunk/ /pentest/enumeration/theharvester/
     echo
fi

if [ -d /pentest/passwords/hash-identifier/.svn ]; then 
     echo -e "\e[1;34mUpdating Hash Identifier.\e[0m"
     cd /pentest/passwords/hash-identifier/ ; svn up
     echo
else 
     echo -e "\e[1;33mInstalling Hash Identifier.\e[0m"
     rm -rf /pentest/passwords/hash-identifier/
     svn co http://hash-identifier.googlecode.com/svn/trunk/ /pentest/passwords/hash-identifier/
     echo
fi

if [ -d /pentest/enumeration/hexorbase/ ]; then 
     rm -rf /pentest/enumeration/hexorbase/
fi

if [ -d /pentest/database/hexorbase/.svn ]; then 
     echo -e "\e[1;34mUpdating HexorBase.\e[0m"
     cd /pentest/database/hexorbase/ ; svn up
     echo
else 
     echo -e "\e[1;33mInstalling HexorBase.\e[0m"
     svn co http://hexorbase.googlecode.com/svn/HexorBase/ /pentest/database/hexorbase/
     echo
fi

if [ -d /pentest/wireless/horst/.git ]; then 
     echo -e "\e[1;34mUpdating HORST.\e[0m"
     cd /pentest/wireless/horst/ ; git pull
     echo
else 
     echo -e "\e[1;33mInstalling HORST.\e[0m"
     rm -rf /pentest/wireless/horst/
     git clone git://github.com/br101/horst.git /pentest/wireless/horst/
     echo
fi

if [ -d /pentest/backdoors/iodine/.git ]; then 
     echo -e "\e[1;34mUpdating iodine.\e[0m"
     cd /pentest/backdoors/iodine/ ; git pull
     echo
else
     echo -e "\e[1;33mInstalling iodine.\e[0m"
     rm -rf /pentest/backdoors/iodine/
     git clone git://github.com/yarrick/iodine.git /pentest/backdoors/iodine/
     echo
fi

if [ -d /pentest/backdoors/intersect/.git ]; then 
     echo -e "\e[1;34mUpdating Intersect.\e[0m"
     cd /pentest/backdoors/intersect/ ; git pull
     echo
else
     echo -e "\e[1;33mInstalling Intersect.\e[0m"
     rm -rf /pentest/backdoors/intersect/
     git clone git://github.com/ohdae/Intersect-2.5.git /pentest/backdoors/intersect/
     echo
fi

if [ -d /pentest/exploits/jboss-autopwn/.git ]; then
     echo -e "\e[1;34mUpdating JBoss Autopwn.\e[0m"
     cd /pentest/exploits/jboss-autopwn/ ; git pull
     echo
else 
     echo -e "\e[1;33mInstalling JBoss Autopwn.\e[0m"
     rm -rf /pentest/exploits/jboss-autopwn/
     git clone git://github.com/SpiderLabs/jboss-autopwn.git /pentest/exploits/jboss-autopwn/
     echo
fi

echo -e "\e[1;34mUpdating JoomScan.\e[0m" ; cd /pentest/web/joomscan/ ; ./joomscan.pl update ; echo

if [ -d /pentest/passwords/keimpx/.git ]; then 
     echo -e "\e[1;34mUpdating keimpx.\e[0m"
     cd /pentest/passwords/keimpx/ ; git pull
     echo
else 
     echo -e "\e[1;33mInstalling keimpx.\e[0m"
     rm -rf /pentest/passwords/keimpx/
     git clone git://github.com/inquisb/keimpx.git /pentest/passwords/keimpx/
     echo
fi

if [ -d /pentest/wireless/killerbee/.git ]; then 
     echo -e "\e[1;34mUpdating killerbee.\e[0m"
     cd /pentest/wireless/killerbee/ ; git pull
     echo
else 
     echo -e "\e[1;33mInstalling killerbee.\e[0m"
     rm -rf /pentest/wireless/killerbee/
     git clone git://github.com/rezeusor/killerbee.git /pentest/wireless/killerbee/
     echo
fi

if [ -d /pentest/enumeration/lanmap2/.git ]; then 
     echo -e "\e[1;34mUpdating lanmap2.\e[0m"
     cd /pentest/enumeration/lanmap2/ ; git pull
     echo
else 
     echo -e "\e[1;33mInstalling lanmap2.\e[0m"
     rm -rf /pentest/enumeration/lanmap2/
     git clone git://github.com/rflynn/lanmap2.git /pentest/enumeration/lanmap2/
     echo
fi

if [ -d /pentest/libs/libhijack/.git ]; then 
     echo -e "\e[1;34mUpdating Libhijack.\e[0m"
     cd /pentest/libs/libhijack/ ; git pull
     echo
else 
     echo -e "\e[1;33mInstalling Libhijack.\e[0m"
     rm -rf /pentest/libs/libhijack/
     git clone git://github.com/lattera/libhijack.git /pentest/libs/libhijack/
     echo
fi

if [ -d /pentest/enumeration/google/metagoofil/.svn ]; then 
     echo -e "\e[1;34mUpdating MetaGoofil.\e[0m"
     cd /pentest/enumeration/google/metagoofil/ ; svn up
     echo
else 
     echo -e "\e[1;33mInstalling MetaGoofil.\e[0m"
     rm -rf /pentest/enumeration/google/metagoofil/
     svn co http://metagoofil.googlecode.com/svn/trunk/ /pentest/enumeration/google/metagoofil/
     echo
fi

if [ -d /opt/metasploit/msf3/.git ]; then 
     echo -e "\e[1;34mUpdating Metasploit.\e[0m"
     cd /opt/metasploit/msf3/ ; git pull
     echo
else 
     echo -e "\e[1;33mInstalling Metasploit.\e[0m"
     rm -rf /opt/metasploit/msf3/
     git clone git://github.com/rapid7/metasploit-framework.git /opt/metasploit/msf3/
     echo
fi

if [ -d /pentest/enumeration/miranda/.git ]; then 
     echo -e "\e[1;34mUpdating miranda.\e[0m"
     cd /pentest/enumeration/miranda/ ; git pull
     echo
else
     echo -e "\e[1;33mInstalling miranda.\e[0m"
     rm -rf /pentest/enumeration/miranda/
     git clone git://github.com/billwood09/miranda.git /pentest/enumeration/miranda/
     echo
fi

if [ -d /pentest/sniffers/mitmproxy/.git ]; then 
     echo -e "\e[1;34mUpdating mitmproxy.\e[0m"
     cd /pentest/sniffers/mitmproxy/ ; git pull
     echo
else
     echo -e "\e[1;33mInstalling mitmproxy.\e[0m"
     rm -rf /pentest/sniffers/mitmproxy/
     git clone git://github.com/cortesi/mitmproxy.git /pentest/sniffers/mitmproxy/
     echo
fi

if [ -f /opt/nessus/sbin/nessus-update-plugins ]; then 
     echo -e "\e[1;34mUpdating Nessus.\e[0m"
     /opt/nessus/sbin/nessus-update-plugins
     echo
fi

if [ -d /pentest/exploits/netgear-telnetenable/.svn ]; then
     echo -e "\e[1;34mUpdating netgear-telnetenable.\e[0m"
     cd /pentest/exploits/netgear-telnetenable/ ; svn up
     echo
else 
     echo -e "\e[1;33mInstalling netgear-telnetenable.\e[0m"
     rm -rf /pentest/exploits/netgear-telnetenable/
     svn co http://netgear-telnetenable.googlecode.com/svn/trunk/ /pentest/exploits/netgear-telnetenable/
     echo
fi

if [ -d /pentest/web/nikto/.git ]; then
     echo -e "\e[1;34mUpdating nikto.\e[0m"
     cd /pentest/web/nikto/ ; git pull
     echo
else
     echo -e "\e[1;33mInstalling nikto.\e[0m"
     rm -rf /pentest/web/nikto/
     git clone git://github.com/sullo/nikto.git /pentest/web/nikto/
     echo
fi

if [ -d /opt/nmap-svn/.svn ]; then
	echo -e "\e[1;34mUpdating Nmap.\e[0m"
	cd /opt/nmap-svn/ ; svn cleanup ; svn up
	cp /opt/nmap-svn/nmap /usr/local/bin/
	cp /opt/nmap-svn/nmap-mac-prefixes /usr/local/share/nmap/
	cp /opt/nmap-svn/nmap-os-db /usr/local/share/nmap/
	cp /opt/nmap-svn/nmap-payloads /usr/local/share/nmap/
	cp /opt/nmap-svn/nmap-protocols /usr/local/share/nmap/
	cp /opt/nmap-svn/nmap-rpc /usr/local/share/nmap/
	cp /opt/nmap-svn/nmap-service-probes /usr/local/share/nmap/
	cp /opt/nmap-svn/nmap-services /usr/local/share/nmap/
	cp /opt/nmap-svn/nse_main.lua /usr/local/share/nmap/
	cp -r /opt/nmap-svn/nselib/ /usr/local/share/nmap/
	cp -r /opt/nmap-svn/scripts/ /usr/local/share/nmap/
     echo
else
	rm -rf /root/.zenmap/
	rm -rf /root/nmap-svn/
	rm -rf /opt/nmap-svn/
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

	apt-get remove -y nmap
	echo
	echo -e "\e[1;33mInstalling nmap from svn.\e[0m"
	svn co https://svn.nmap.org/nmap/ /opt/nmap-svn/
	cd /opt/nmap-svn/
	./configure && make && make install && make clean
	echo
fi

if [ -d /pentest/voip/ohrwurm/.git ]; then 
     echo -e "\e[1;34mUpdating ohrwurm.\e[0m"
     cd /pentest/voip/ohrwurm/ ; git pull
     echo
else
     echo -e "\e[1;33mInstalling ohrwurm.\e[0m"
     rm -rf /pentest/voip/ohrwurm/
     git clone git://github.com/mazzoo/ohrwurm.git /pentest/voip/ohrwurm/
     echo
fi

echo -e "\e[1;34mUpdating OpenVAS.\e[0m" ; openvas-nvt-sync ; echo

if [ -d /pentest/web/padbuster/.git ]; then 
     echo -e "\e[1;34mUpdating PadBuster.\e[0m"
     cd /pentest/web/padbuster/ ; git pull
     echo
else
     echo -e "\e[1;33mInstalling PadBuster.\e[0m"
     rm -rf /pentest/web/padbuster/
     git clone git://github.com/GDSSecurity/PadBuster.git /pentest/web/padbuster/
     echo
fi

if [ -d /pentest/forensics/peepdf/.svn ]; then 
     echo -e "\e[1;34mUpdating peepdf.\e[0m"
     cd /pentest/forensics/peepdf/ ; svn up
     echo
else
     echo -e "\e[1;33mInstalling peepdf.\e[0m"
     rm -rf /pentest/forensics/peepdf/
     svn co http://peepdf.googlecode.com/svn/trunk/ /pentest/forensics/peepdf/
     echo
fi

if [ -d /pentest/passwords/pipal/.git ]; then 
     echo -e "\e[1;34mUpdating Pipal.\e[0m"
     cd /pentest/passwords/pipal/ ; git pull
     echo
else
     echo -e "\e[1;33mInstalling Pipal.\e[0m"
     rm -rf /pentest/passwords/pipal/
     git clone git://github.com/digininja/pipal.git /pentest/passwords/pipal/
     echo
fi

if [ -d /pentest/backdoors/powersploit/.git ]; then 
     echo -e "\e[1;34mUpdating PowerSploit.\e[0m"
     cd /pentest/backdoors/powersploit/ ; git pull
     echo
else
     echo -e "\e[1;33mInstalling PowerSploit.\e[0m"
     rm -rf /pentest/backdoors/powersploit/
     git clone git://github.com/mattifestation/PowerSploit.git /pentest/backdoors/powersploit/
     echo
fi

if [ -d /pentest/tunneling/pwnat/.git ]; then
     echo -e "\e[1;34mUpdating pwnat.\e[0m"
     cd /pentest/tunneling/pwnat/ ; git pull
     echo
else
     echo -e "\e[1;33mInstalling pwnat.\e[0m"
     rm -rf /pentest/tunneling/pwnat/
     git clone git://github.com/samyk/pwnat.git /pentest/tunneling/pwnat/
     echo
fi

if [ -d /pentest/wireless/reaver/.svn ]; then
     echo -e "\e[1;34mUpdating Reaver.\e[0m"
     cd /pentest/wireless/reaver/ ; svn up
     echo
else
     echo -e "\e[1;33mInstalling Reaver.\e[0m"
     svn co http://reaver-wps.googlecode.com/svn/trunk/ /pentest/wireless/reaver/
     cd /pentest/wireless/reaver/src/
     ./configure ; make ; make install
     echo
fi

if [ -d /pentest/exploits/rebind/.svn ]; then
     echo -e "\e[1;34mUpdating Rebind.\e[0m"
     cd /pentest/exploits/rebind/ ; svn up
     echo
else
     echo -e "\e[1;33mInstalling Rebind.\e[0m"
     rm -rf /pentest/exploits/rebind/
     svn co http://rebind.googlecode.com/svn/trunk/ /pentest/exploits/rebind/
     echo
fi

if [ -d /pentest/enumeration/recon-ng/.git ]; then
     echo -e "\e[1;34mUpdating recon-ng.\e[0m"
     cd /pentest/enumeration/recon-ng/ ; git pull
     echo
else
     echo -e "\e[1;33mInstalling recon-ng.\e[0m"
     git clone https://bitbucket.org/LaNMaSteR53/recon-ng.git /pentest/enumeration/recon-ng/
     echo
fi

if [ -d /pentest/rfid/RFIDIOt/.git ]; then
     echo -e "\e[1;34mUpdating RFIDIOt.\e[0m"
     cd /pentest/rfid/RFIDIOt/ ; git pull
     echo
else
     echo -e "\e[1;33mInstalling RFIDIOt.\e[0m"
     rm -rf /pentest/rfid/RFIDIOt/
     git clone git://github.com/AdamLaurie/RFIDIOt.git /pentest/rfid/RFIDIOt/
     echo
fi

if [ -d /pentest/forensics/samdump/.git ]; then
     echo -e "\e[1;34mUpdating samdump.\e[0m"
     cd /pentest/forensics/samdump/ ; git pull
     echo
else
     echo -e "\e[1;33mInstalling samdump.\e[0m"
     rm -rf /pentest/forensics/samdump/
     git clone git://github.com/geocar/samdump.git /pentest/forensics/samdump/
     echo
fi

if [ -d /opt/scripts/.git ]; then
     echo -e "\e[1;34mUpdating scripts.\e[0m"
     cd /opt/scripts/ ; git pull
     echo
else
     echo -e "\e[1;33mInstalling scripts from new github repo.\e[0m"
     mv /opt/scripts/ /opt/scripts-old/
     git clone git://github.com/leebaird/backtrack-scripts.git /opt/scripts/
     echo
fi

if [ -d /pentest/exploits/set/.git ]; then
     echo -e "\e[1;34mUpdating SET.\e[0m"
     cd /pentest/exploits/set/ ; git pull
     echo
else 
     echo -e "\e[1;33mInstalling SET.\e[0m"
     rm -rf /pentest/exploits/set/
     git clone https://github.com/trustedsec/social-engineer-toolkit.git /pentest/exploits/set/
     echo
fi

if [ -d /pentest/fuzzers/sickfuzz/.svn ]; then
     echo -e "\e[1;34mUpdating sickfuzz.\e[0m"
     cd /pentest/fuzzers/sickfuzz/ ; svn up
     echo
else 
     echo -e "\e[1;33mInstalling sickfuzz.\e[0m"
     rm -rf /pentest/fuzzers/sickfuzz/
     svn co http://sickfuzz.googlecode.com/svn/trunk/ /pentest/fuzzers/sickfuzz
     echo
fi

if [ -d /pentest/web/skipfish/.git ]; then
     echo -e "\e[1;34mUpdating skipfish.\e[0m"
     cd /pentest/web/skipfish/ ; git pull
     echo
else 
     echo -e "\e[1;33mInstalling skipfish.\e[0m"
     rm -rf /pentest/web/skipfish/
     git clone git://github.com/spinkham/skipfish.git /pentest/web/skipfish/
     echo
fi

if [ -d /pentest/exploits/smartphone-pentest-framework/.git ]; then 
     echo -e "\e[1;34mUpdating Smartphone-Pentest-Framework.\e[0m"
     cd /pentest/exploits/smartphone-pentest-framework/ ; git pull
     echo
else
     echo -e "\e[1;33mInstalling Smartphone-Pentest-Framework.\e[0m"
     rm -rf /pentest/exploits/smartphone-pentest-framework/
     git clone git://github.com/georgiaw/Smartphone-Pentest-Framework.git /pentest/exploits/smartphone-pentest-framework/
     echo
fi

if [ -d /pentest/passwords/smbexec/.git ]; then 
     echo -e "\e[1;34mUpdating smbexe.\e[0m"
     cd /pentest/passwords/smbexec/ ; git pull
     echo
else
     echo -e "\e[1;33mInstalling smbexe.\e[0m"
     rm -rf /pentest/passwords/smbexec/
     git clone git://github.com/brav0hax/smbexec.git /pentest/passwords/smbexec/
     echo
fi

if [ -d /pentest/database/sqlbrute/.git ]; then
	echo -e "\e[1;34mUpdating SQLBrute.\e[0m"
	cd /pentest/database/sqlbrute/
	git pull ; echo
else 
	echo -e "\e[1;33mInstalling SQLBrute.\e[0m"
	rm -rf /pentest/database/sqlbrute/
	git clone git://github.com/GDSSecurity/SQLBrute.git /pentest/database/sqlbrute/
	echo
fi

if [ -d /pentest/database/sqlmap/.git ]; then
     echo -e "\e[1;34mUpdating sqlmap.\e[0m"
     cd /pentest/database/sqlmap/ ; git pull
     echo
else
     echo -e "\e[1;33mInstalling sqlmap.\e[0m"
     rm -rf /pentest/database/sqlmap/
     git clone git://github.com/sqlmapproject/sqlmap.git /pentest/database/sqlmap/
     echo
fi

if [ -d /pentest/database/sqlninja/.svn ]; then
     echo -e "\e[1;34mUpdating Sqlninja.\e[0m"
     cd /pentest/database/sqlninja/ ; svn up
     echo
else
     echo -e "\e[1;33mInstalling Sqlninja.\e[0m"
     rm -rf /pentest/database/sqlninja/
     svn co https://sqlninja.svn.sourceforge.net/svnroot/sqlninja /pentest/database/sqlninja/
     echo
fi

if [ -d /pentest/web/sslstrip/.git ]; then
     echo -e "\e[1;34mUpdating sslstrip.\e[0m"
     cd /pentest/web/sslstrip/ ; git pull
     echo
else
     echo -e "\e[1;33mInstalling sslstrip.\e[0m"
     rm -rf /pentest/web/sslstrip/
     git clone git://github.com/moxie0/sslstrip.git /pentest/web/sslstrip/
     echo
fi

if [ -d /pentest/web/sslyze/.git ]; then
     echo -e "\e[1;34mUpdating SSLyze.\e[0m"
     cd /pentest/web/sslyze/ ; git pull
     echo
else 
     echo -e "\e[1;33mInstalling SSLyze.\e[0m"
     rm -rf /pentest/web/sslyze/
     git clone git://github.com/iSECPartners/sslyze.git /pentest/web/sslyze/
     echo
fi

echo -e "\e[1;34mUpdating Subterfuge.\e[0m"
cd /usr/share/subterfuge ; svn cleanup ; svn up ; echo 

if [ -d /pentest/enumeration/smtp/swaks/.git ]; then 
     echo -e "\e[1;34mUpdating swaks.\e[0m"
     cd /pentest/enumeration/smtp/swaks/ ; git pull
     echo
else
     echo -e "\e[1;33mInstalling swaks.\e[0m"
     rm -rf /pentest/enumeration/smtp/swaks/
     git clone git://github.com/pld-linux/swaks.git /pentest/enumeration/smtp/swaks/
     echo
fi

if [ -d /pentest/exploits/termineter/.git ]; then
     echo -e "\e[1;34mUpdating Termineter.\e[0m"
     cd /pentest/exploits/termineter/ ; git pull
     echo
else 
     echo -e "\e[1;33mInstalling Termineter.\e[0m"
     rm -rf /pentest/exploits/termineter/
     git clone git://github.com/zeroSteiner/termineter.git /pentest/exploits/termineter/
     echo
fi

if [ -d /pentest/forensics/testdisk/.git ]; then
     echo -e "\e[1;34mUpdating testdisk.\e[0m"
     cd /pentest/forensics/testdisk/ ; git pull
     echo
else
     echo -e "\e[1;33mInstalling testdisk.\e[0m"
     rm -rf /pentest/forensics/testdisk/
     git clone git://github.com/mqudsi/testdisk.git /pentest/forensics/testdisk/
     echo
fi

if [ -d /pentest/web/uniscan/.git ]; then 
	echo -e "\e[1;34mUpdating Uniscan.\e[0m"
	cd /pentest/web/uniscan 
	git pull
	echo
else 
	echo -e "\e[1;33mInstalling Uniscan.\e[0m"
	rm -rf /pentest/web/uniscan
	git clone http://git.code.sf.net/p/uniscan/code /pentest/web/uniscan
	echo 
fi

if [ -d /pentest/backdoors/unix-privesc-check/.svn ]; then
     echo -e "\e[1;34mUpdating unix-privesc-check.\e[0m"
     cd /pentest/backdoors/unix-privesc-check/ ; svn up
     echo
else 
     echo -e "\e[1;33mInstalling unix-privesc-check.\e[0m"
     rm -rf /pentest/backdoors/unix-privesc-check/
     svn co http://unix-privesc-check.googlecode.com/svn/trunk/ /pentest/backdoors/unix-privesc-check/
     echo
fi

if [ -d /pentest/fuzzers/voip/voiper/.git ]; then
     echo -e "\e[1;34mUpdating voiper.\e[0m"
     cd /pentest/fuzzers/voip/voiper/ ; git pull
     echo
else
     echo -e "\e[1;33mInstalling voiper.\e[0m"
     rm -rf /pentest/fuzzers/voip/voiper/
     git clone git://github.com/gremwell/voiper.git /pentest/fuzzers/voip/voiper/
     echo
fi

if [ -d /pentest/web/w3af/.git ]; then
     echo -e "\e[1;34mUpdating w3af.\e[0m"
     cd /pentest/web/w3af/ ; git pull
     echo
else
     echo -e "\e[1;33mInstalling w3af.\e[0m"
     rm -rf /pentest/web/w3af/
     git clone git://github.com/andresriancho/w3af.git /pentest/web/w3af/
     cd /pentest/web/w3af/
     apt-get install python-pip
     pip install PyGithub GitPython esmre chardet pdfminer futures guess-language cluster msgpack-python python-ntlm
     pip install -e git+git://github.com/ramen/phply.git#egg=phply
     pip install xdot
     echo
fi

if [ -d /pentest/web/waffit/.svn ]; then
     echo -e "\e[1;34mUpdating waffit.\e[0m"
     cd /pentest/web/waffit/ ; svn up
     echo
else
     echo -e "\e[1;33mInstalling waffit.\e[0m"
     rm -rf /pentest/web/waffit/
     svn co http://waffit.googlecode.com/svn/trunk/ /pentest/web/waffit/
     echo
fi

if [ -d /pentest/telephony/warvox/.git ]; then
     echo -e "\e[1;34mUpdating WarVox.\e[0m"
     cd /pentest/telephony/warvox/ ; git pull
     echo
else
     echo -e "\e[1;33mInstalling WarVox.\e[0m"
     rm -rf /pentest/telephony/warvox/
     git clone https://github.com/rapid7/warvox.git /pentest/telephony/warvox
     echo
fi

if [ -d /pentest/web/webslayer/.git ]; then
     echo -e "\e[1;34mUpdating WebSlayer.\e[0m"
     cd /pentest/web/webslayer/ ; git pull
     echo
else 
     echo -e "\e[1;33mInstalling WebSlayer.\e[0m"
     rm -rf /pentest/web/webslayer/
     git clone git://github.com/Malphaet/webslayer.git /pentest/web/webslayer/
     echo
fi

if [ -d /pentest/backdoors/web/weevely/.git ]; then 
     echo -e "\e[1;34mUpdating Weevely.\e[0m"
     cd /pentest/backdoors/web/weevely/ ; git pull
     echo
else
     echo -e "\e[1;33mInstalling Weevely.\e[0m"
     rm -rf /pentest/backdoors/web/weevely/
     git clone git://github.com/epinna/Weevely.git /pentest/backdoors/web/weevely/
     echo
fi

if [ -d /pentest/enumeration/web/whatweb/.git ]; then
     echo -e "\e[1;34mUpdating WhatWeb.\e[0m"
     cd /pentest/enumeration/web/whatweb/ ; git pull
     echo
else
     echo -e "\e[1;33mInstalling WhatWeb.\e[0m"
     rm -rf /pentest/enumeration/web/whatweb/
     git clone git://github.com/urbanadventurer/WhatWeb.git /pentest/enumeration/web/whatweb/
     echo
fi

if [ -d /pentest/sniffers/wifitap/.git ]; then
     echo -e "\e[1;34mUpdating wifitap.\e[0m"
     cd /pentest/sniffers/wifitap/ ; git pull
     echo
else
     echo -e "\e[1;33mInstalling wifitap.\e[0m"
     rm -rf /pentest/sniffers/wifitap/
     git clone git://github.com/GDSSecurity/wifitap.git /pentest/sniffers/wifitap/
     echo
fi

if [ -d /pentest/wireless/wifite/.svn ]; then
     echo -e "\e[1;34mUpdating WiFite.\e[0m"
     cd /pentest/wireless/wifite/ ; svn up
     echo
else
     echo -e "\e[1;33mInstalling WiFite.\e[0m"
     rm -rf /pentest/wireless/wifite/
     svn co http://wifite.googlecode.com/svn/trunk/ /pentest/wireless/wifite/
     echo
fi

if [ -d /pentest/web/wpscan/.git ]; then 
     echo -e "\e[1;34mUpdating WPScan.\e[0m"
     cd /pentest/web/wpscan/ ; ./wpscan.rb --update
     echo
else 
     echo -e "\e[1;33mInstalling WPScan.\e[0m"
     rm -rf /pentest/web/wpscan/
     apt-get -y install libcurl4-gnutls-dev libopenssl-ruby libxml2 libxml2-dev libxslt1-dev ruby-dev
     git clone https://github.com/wpscanteam/wpscan.git /pentest/web/wpscan/
     cd /pentest/web/wpscan
     gem install bundler && bundle install --without test development
     echo
fi

cp /opt/scripts/alias /root/.bash_aliases ; source /root/.bash_aliases

echo -e "\e[1;34mUpdating locate database.\e[0m" ; echo ; updatedb ; cd /root/
echo
echo -e "\e[1;31mIMPORTANT NOTES\e[0m"
echo "[*] If you discover you cannot run msfconsole after updating, please see notes.txt for the fix."
echo "[*] The new repo for BackTrack Scripts is now located at https://github.com/leebaird/backtrack-scripts."
echo
echo
