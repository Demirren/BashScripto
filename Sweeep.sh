#!/bin/bash
LC='\e[96m'
GREEN='\e[32m'
if [ "$1" == "" ]
then
echo -e "${LC}You forgot to enter an IP address!\n${GREEN}Example: ./ipsweep.sh 10.0.2"

else
for ip in `seq 1 254`; do
ping -c 1 $1.$ip |grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done
fi
