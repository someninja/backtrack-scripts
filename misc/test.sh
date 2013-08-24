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

     echo "mydnstools.info           (21/$total)"
     wget -q http://www.mydnstools.info/nslookup/$domain/ANY -O tmp
     sed -n '/ANSWER SECTION/,/WHEN:/p' tmp | egrep -v '(DNSKEY|DS|NSEC3PARAM|Query time|RRSIG|SEC3|SECTION|SERVER|SSEC|TYPE51|WHEN)' | sed 's/;; //g; s/&quot;//g; s/\$domain./\$domain/g; s/$domain./$domain/g; s/.com./.com/g; s/.edu./.edu/g; s/.gov./.gov/g; s/.info./.info/g; s/.net./.net/g; s/.org./.org/g; s/.uk./.uk/g; s/IN//g' | awk '{print $1,$3,$4,$5,$6,$7,$8,$9,$10}' | column -t | sort -u -k2 -k1 > records


