# MIKASA
Security made Simple

## About :                    
A Tool for simple and efficient Intrusion Detection & Network Traffic Analysis.

## INTRODUCTION :

We are implementing a command line based tool which will be having multiple network analysis features such as SYN scanner, ARP monitoring & spoofing, HTTP request/ response follower, DNS query sniffer & spoofer along with additional tools such as Wifi deauthentication & WLAN cracker, we will be implementing these tools using a C++ library called libtins which is built over libpcap, a portable C/C++ library for network traffic capture. 


### LIBTINS :   

libtins is a high-level multiplatform C++ network packet sniffing and crafting library.
Its main purpose is to provide the C++ developer an easy, efficient, platform and endianness-independent way to create tools which need to send, receive and manipulate specially crafted packets. 
We will be using this library in this project in order to implement packet sniffing. 


## FEATURES OF OUR APPLICATION : 

- **SYN scanner** : for a variable number of ports as command line arguments it will verify if the particular host has those ports open or not. 
- **ARP Monitoring**: ARP Monitor keeps track of mappings between IP addresses and hardware addresses.
- **HTTP request/response follower** : It captures and reassembles TCP streams, showing for each request, the HTTP method, URL, host and the server's response code. 
- **DNS queries sniffer** : Sniffs DNS queries and prints the domain names being queried.
- **Traceroute** : It is a computer network diagnostic tool for displaying the route and measure transit delays of packets across an Internet Protocol network. 

## SETUP

Setup libtins using [this](http://libtins.github.io/download/)
