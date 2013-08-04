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

firefox &
sleep 2
firefox -new-tab images.google.com &
sleep 1
firefox -new-tab arin.net &
sleep 1
firefox -new-tab toolbar.netcraft.com/site_report?url=http://www.$domain &
sleep 1
firefox -new-tab uptime.netcraft.com/up/graph?site=www.$domain &
sleep 1
firefox -new-tab shodanhq.com/search?q=$domain &
sleep 1
firefox -new-tab jigsaw.com/ &
sleep 1
firefox -new-tab pastebin.com/ &
sleep 1
firefox -new-tab google.com/#q=filetype%3Axls+OR+filetype%3Axlsx+site%3A$domain &
sleep 1
firefox -new-tab google.com/#q=filetype%3Appt+OR+filetype%3Apptx+site%3A$domain &
sleep 1
firefox -new-tab google.com/#q=filetype%3Adoc+OR+filetype%3Adocx+site%3A$domain &
sleep 1
firefox -new-tab google.com/#q=filetype%3Apdf+site%3A$domain &
sleep 1
firefox -new-tab google.com/#q=filetype%3Atxt+site%3A$domain &
sleep 1
firefox -new-tab sec.gov/edgar/searchedgar/companysearch.html &
sleep 1
firefox -new-tab google.com/finance/ &
sleep 1
firefox -new-tab reuters.com/finance/stocks
echo
echo

