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

     echo "robtex.com                (24/$total)"
     wget -q http://top.robtex.com/$domain.html#records -O robtex-records.htm
     wget -q http://top.robtex.com/$domain.html#shared -O robtex-shared.htm

     x=$(ls -l | grep 'robtex' | awk '{print $5,$8}' | sort | head -1 | awk '{print $2}')
     mv $x tmp

