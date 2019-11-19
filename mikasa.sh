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
echo "5 :  Traceoute"

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

elif [[ $choice == "2" ]]
then
    read -p "Please enter interface: " interface
    if [[ ! -z $interface ]]
    then
        chmod +x arpmonitor
        sudo ./arpmonitor $interface
    else
        echo "Please enter correct interface"
    fi

elif [[ $choice == "3" ]]
then
    read -p "Please enter IP address: " IP
    read -p "Please enter port: " port
    if [[ ! -z $IP ]] && [[ ! -z $port ]]
    then 
        chmod +x portscan
        sudo ./portscan $IP $port
    else
        echo "Please enter IP/port correctly"
    fi

elif [[ $choice == "4" ]]
then
    read -p "Please enter Interface: " interface
    if [[ ! -z $IP ]]
    then 
        chmod +x dns_queries
        sudo ./dns_queries $interface
    else
        echo "Please enter interface"
    fi

elif [[ $choice == "5" ]]
then
    read -p "Please enter IP address: " IP

    if [[ ! -z $IP ]]
    then 
        traceroute $IP
    else
        echo "Please enter IP address"
    fi
else
    echo "No option is selected"
fi
