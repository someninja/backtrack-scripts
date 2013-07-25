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

cp -R /opt/scripts/report/ /$user/$domain

echo "robtex.com                (24)"
wget -q http://top.robtex.com/$domain.html#records -O robtex-records.htm
wget -q http://top.robtex.com/$domain.html#shared -O robtex-shared.htm

x=$(ls -l | grep 'robtex' | awk '{print $5,$8}' | sort | head -1 | awk '{print $2}')
mv $x tmp

sed '/<!DOCTYPE html>/,/<div id="c0a">/d' tmp > tmp2
sed '/nopad sortable nospan/,/<\/html>/d' tmp2 > tmp3

cat tmp3 >> /$user/$domain/pages/robtex.htm
echo "          </div>" >> /$user/$domain/pages/robtex.htm
echo "     </div>" >> /$user/$domain/pages/robtex.htm
echo "</div>" >> /$user/$domain/pages/robtex.htm
echo "" >> /$user/$domain/pages/robtex.htm
echo "</body>" >> /$user/$domain/pages/robtex.htm
echo "" >> /$user/$domain/pages/robtex.htm
echo "</html>" >> /$user/$domain/pages/robtex.htm

firefox /$user/$domain/index.htm &
