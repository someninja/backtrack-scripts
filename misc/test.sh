#!/bin/bash

user=$(whoami)

clear

#echo
#echo
#echo "Usage: target.com"
#echo
#echo -n "Domain: "
#read domain
#echo
#echo

sed 's/Pass/<center><img src="..\/images\/icons\/green.png" height="50" width="50"><\/center>/g; 
s/Warning/<center><img src="..\/images\/icons\/yellow.png" height="50" width="50"><\/center>/g;
s/Fail/<center><img src="..\/images\/icons\/red.png" height="50" width="50"><\/center>/g;
s/ class="info"//g; s/ class="rfail"//g; s/ class="rinfo"//g; s/ class="rpass"//g; s/ class="rsecu"//g; s/ class="rwarn"//g;
s/Checking domain format/Domain format/g; s/Checking for parent nameservers/Parent nameservers/g;
s/Checking for parent glue/Parent glue/g; s/Your NS records at your parent nameserver are://g; s/Your NS records at your nameservers are://g;
s/I found the following MX records://g' tmp > tmp2

echo
echo

