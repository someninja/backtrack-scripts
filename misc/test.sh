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

##########

name=/root/test/
sourceport=53

##########

echo
echo $line
echo
echo -e "\e[1;34mRunning default nmap scan.\e[0m"

nmap -iL $name/hosts.txt -Pn -n -sSV -sUV -p U:53,67-69,111,123,135,137-139,161,162,445,500,514,520,523,631,998,1434,1701,1900,4500,5353,6481,17185,31337,49152,49154,T:13,21-23,25,37,42,49,53,67,69,79-81,88,105,109-111,113,123,135,137-139,143,161,179,222,384,389,407,443,445,465,500,512-515,523,524,540,548,554,617,623,631,689,705,783,873,910,912,921,993,995,1000,1024,1050,1080,1099,1100,1158,1220,1300,1311,1344,1352,1433-1435,1494,1521,1524,1533,1581-1582,1604,1720,1723,1755,1900,2000,2049,2100,2103,2121,2202,2207,2222,2323,2380,2525,2533,2598,2628,2638,2947,2967,3000,3031,3050,3057,3128,3260,3306,3389,3500,3628,3632,3690,3780,3790,4000,4369,4445,5019,5051,5060-5061,5093,5168,5250,5353,5400,5405,5432-5433,5554-5555,5666,5672,5800,5850,5900-5910,5984,6000-6005,6050,6060,6070,6080,6101,6106,6112,6379,6405,6502-6504,6660,6666-6667,6697,7080,7144,7210,7510,7634,7777,7787,8000,8008-8009,8028,8030,8080-8081,8090,8091,8180,8222,8300,8332-8333,8400,8443-8444,8787,8800,8880,8888,8899,9080-9081,9090,9100,9111,9152,9160,9999-10000,10050,10202-10203,10443,10616,10628,11000,11211,12174,12203,12345,13500,14330,17185,18881,19150,19300,19810,20031,20222,22222,25000,25025,26000,26122,27017,28222,30000,35871,38292,39292,41025,41523-41524,41364,43729,44334,44813,48992,49663,50000-50004,50013,50030,50060,50070,50075,50090,55852,57772,59034,60010,60030,62078,62514,65535 --open -O --osscan-guess --max-os-tries 1 --version-intensity 0 --host-timeout 5m --min-hostgroup 100 --max-rtt-timeout 600ms --initial-rtt-timeout=300ms --min-rtt-timeout 300ms --max-retries 3 --min-rate 150 --stats-every 10s -g $sourceport -oA $name/nmap

# Clean up nmap output
egrep -v '(1 hop|All|CPE|elapsed|filtered|fingerprint|guesses|GUESSING|hops|initiated|latency|matches|NEXT|Not|NSE|OS:|Please|remaining|RTTVAR|scanned|SF|Skipping|specialized|Starting|Timing|unrecognized|Warning|WARNING)' $name/nmap.nmap > tmp
sed 's/Nmap scan report for //' tmp > tmp2
sed '/^$/! b end; n; /^$/d; : end' tmp2 > $name/nmap.txt

rm $name/nmap.nmap

# Show open ports
grep 'open' $name/nmap.txt | awk '{print $1}' | sort -u | sort -n > $name/ports.txt
grep 'tcp' $name/ports.txt | cut -d '/' -f1 > $name/ports-tcp.txt
grep 'udp' $name/ports.txt | cut -d '/' -f1 > $name/ports-udp.txt

# Clean up and show banners
grep 'open' $name/nmap.txt | awk '{for (i=4;i<=NF;i++) {printf "%s%s",sep, $i;sep=" "}; printf "\n"}' | sort -u > tmp
sed 's/^ //' tmp | sort -u > tmp2

# Remove blank lines
sed '/^$/d' tmp2 > $name/banners.txt

# Remove all empty files
find $name/ -type f -empty -exec rm {} +
