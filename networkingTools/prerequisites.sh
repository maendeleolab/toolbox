#!/usr/bin/env bash

#chaining commands 
sudo apt update && sudo apt upgrade -y && sudo apt install dnsutils traceroute mtr iperf hping3 fping inet-tools -y 
#installing network utilities needed to perform network performance tests 
sudo apt update && sudo apt upgrade -y && sudo apt install dnsutils traceroute mtr iperf hping3 fping netcat -y 
