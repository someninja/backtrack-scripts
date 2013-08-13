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

     echo
     echo "Loadbalancing             (6/$total)"
     /pentest/enumeration/web/lbd/lbd.sh $domain > tmp 2>/dev/null
     egrep -v '(5.0_Pub|\[2J|Apache|Checks|does NOT use|Microsoft-IIS|Might|Written)' tmp > tmp2
     # Remove leading whitespace from file
     awk '!d && NF {sub(/^[[:blank:]]*/,""); d=1} d' tmp2 > tmp3
     # Remove leading whitespace from each line
     sed 's/^[ \t]*//' tmp3 > tmp4
     # Remove blank lines from end of file
     awk '/^[[:space:]]*$/{p++;next} {for(i=0;i<p;i++){printf "\n"}; p=0; print}' tmp4 > tmp5
     # Clean up
     cat -s tmp5 > zloadbalancing

