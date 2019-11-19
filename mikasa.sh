#! /bin/bash

RED="\e[31m"
printf "${RED}"

figlet -f standard "MIKASA"
STOP="\e[0m"
printf "${STOP}"
echo "Select the following options"
echo "1 :  HTTP Request Response"
echo "2 :  ARP Monitoring"
echo "3 :  SYN Scanning"
echo "4 :  DNS Query Sniffer"
echo "4 :  Traceoute"

read -p "Enter your choice: " choice

if [[ $choice == "1" ]]
then
    read -p "Please enter interface: " interface
    if [[ ! -z $interface ]]
    then
        chmod +x http_requests
        sudo ./http_requests $interface
    else
        echo "Please enter correct interface"    
    fi
fi
