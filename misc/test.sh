#!/bin/bash

user=$(whoami)

clear

echo
echo
echo "Usage: target.com"
echo
echo -n "Domain: "
read domain
echo
echo

wget -q http://www.urlvoid.com/scan/$domain/ -O tmp
sed -n '/Website Blacklist Report/,/<\/table>/p' tmp > tmp2
sed 's/<img src="http:\/\/www.urlvoid.com\/images\/valid.ico" alt="Clean" title="Clean" \/> NOT FOUND/<center><img src="..\/images\/icons\/green.png" height="25" width="25"><\/center>/g; s/rel="nofollow" //g; s/ title="View more details" target="_blank"//g; s/<img src="http:\/\/www.urlvoid.com\/images\/link.ico" alt="Link" \/>//g; s/ class="tasks"//g; s/<th>Info<\/th>//g' tmp2 | grep -v 'Blacklist Report' > tmp3
# Remove leading whitespace from each line
sed 's/^[ \t]*//' tmp3 > black-listed

firefox black-listed &

