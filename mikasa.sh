#! /bin/bash


figlet "MIKASA"
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
    if [[ -z $interface ]]
    then 
        ./http_requests $interface
    fi
    echo "Exiting State"
fi
