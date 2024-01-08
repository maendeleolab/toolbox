#!/bin/bash
sudo apt update
sudo apt upgrade -y
sudo apt install tmux -y
sudo apt install net-tools -y
sudo apt install dnsutils -y
sudo apt install iperf -y
echo 'net.ipv4.conf.eth0.force_igmp_version=2' | sudo tee -a /etc/sysctl.conf
#mcast session
tmux new -s mcast
#run iperf as a multicast receiver. 239.10.100.10 is default multicast group
iperf -s -u -B 239.10.100.10 -i 1
