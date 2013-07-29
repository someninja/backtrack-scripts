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

sed 's/Pass/<center><img src="..\/images\/pass.jpeg" height="50" width="50"><\/center>/g; 
s/Fail/<center><img src="..\/images\/fail.jpeg" height="50" width="50"><\/center>/g; 
s/ class="info"//g; s/ class="rfail"//g; s/ class="rinfo"//g; s/ class="rpass"//g; s/ class="rsecu"//g;
s/ class="rwarn"//g' tmp > /root/nwfcu.org/data/tmp2

firefox /root/nwfcu.org/data/tmp2 &
echo
echo

