#!/bin/bash

# Variables
line="=================================================="

f_error(){
echo
echo -e "\e[1;31m$line\e[0m"
echo
echo -e "\e[1;31m   *** Invalid choice or entry. ***\e[0m"
echo
echo -e "\e[1;31m$line\e[0m"
echo
echo
exit
}

clear

echo
echo
echo "Parse robtex.htm."
echo
echo -n "Enter the location of your file: "
read location

# Check for no answer (an empty response)
if [ -z $location ]; then
     f_error
fi

# Check for wrong answer
if [ ! -f $location ]; then
     f_error
fi

# sed '/FOO/,/BAR/d'

# FOO = <base href="http://dns.robtex.com
# BAR = </script>
sed '/<base href="http:\/\/dns.robtex.com/,/<\/script>/d' $location > tmp

# FOO = <script type="text/javascript"><!--
# BAR = <div id="h0">
sed '/<script type="text\/javascript"><!--/,/<div id="h0">/d' tmp > tmp2

# FOO = <div id="h5">
# BAR = <div style="display:none">
sed '/<div id="h5">/,/<div style="display:none">/d' tmp2 > robtex2.htm

rm tmp*

echo
echo

firefox robtex2.htm &

