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

awk '{print $3}' /$user/$domain/data/records.txt | grep -v '[A-Za-z]' | grep -E '[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}' -o | sort -u > tmp
awk '{print $2}' /$user/$domain/data/subdomains.txt | grep -v '[A-Za-z]' | sort -u > tmp2
grep -v ':' /$user/$domain/data/zonetransfer.txt | grep -E '[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}' -o | sort -u > tmp3
cat tmp tmp2 tmp3 | sort -n -u -t . -k 1,1 -k 2,2 -k 3,3 -k 4,4 | sed '/^$/d' > zhosts

wc -l tmp
wc -l tmp2
wc -l tmp3
wc -l zhosts

echo
echo

