#!/usr/bin/env bash

##installing network utilities needed to perform network performance tests
sudo apt update
sudo apt install dnsutils -y
sudo apt install traceroute -y
sudo apt install mtr -y
sudo apt install iperf -y
sudo apt install hping3 -y
sudo apt install fping -y
sudo apt install inet-tools -y 

