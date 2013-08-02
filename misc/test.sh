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

#wget -q http://www.urlvoid.com/scan/$domain/ -O /root/tmp
#sed -n '/Website Blacklist Report/,/<\/table>/p' /root/tmp > /root/tmp2

sed 's/<img src="http:\/\/www.urlvoid.com\/images\/valid.ico" alt="Clean" title="Clean" \/> NOT FOUND/<center><img src="..\/images\/icons\/green.png" height="25" width="25"><\/center>/g' /root/tmp2 > /root/tmp3

echo
echo

