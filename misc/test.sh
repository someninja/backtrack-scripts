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

echo "robtex.com"
wget -q http://top.robtex.com/$domain.html#records -O robtex-records.htm
wget -q http://top.robtex.com/$domain.html#shared -O robtex-shared.htm

x=$(ls -l | grep 'robtex' | awk '{print $5,$8}' | sort | head -1 | awk '{print $2}')
mv $x tmp

sed '/<!DOCTYPE html>/,/<div id="c0a">/d' tmp | sed '/nopad sortable nospan/,/<\/html>/d' | sed '/<div id="c0b1">/,/DNS Records/d' | sed 's/<h2 class="h2s">Graph<\/h2>//g; s/<h2 class="h2s">Shared<\/h2>//g; s/"7.00"/"10.00"/g; s/"9.00"/"12.00"/g' > tmp2

echo "          </div>" >> tmp2
echo "     </div>" >> tmp2
echo "</div>" >> tmp2
echo "" >> tmp2
echo "</body>" >> tmp2
echo "" >> tmp2
echo "</html>" >> tmp2

cat tmp2 >> /$user/$domain/pages/robtex.htm

firefox /$user/$domain/pages/robtex.htm &

