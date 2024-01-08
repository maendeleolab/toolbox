#!/bin/bash
sudo apt update
sudo apt upgrade -y
sudo apt install tmux -y
sudo apt install net-tools -y
sudo apt install dnsutils -y
sudo apt install iperf -y
#Note: the interface is ens5 b/c the test instance should be a nitro instance
#If you decide to use a different instance type, remember to change ens5
echo 'net.ipv4.conf.ens5.force_igmp_version=2' | sudo tee -a /etc/sysctl.conf
#reread config file to set new settings
sudo sysctl -p
#check new settings
cat /proc/net/igmp
#enabling Multicast and ICMP
sudo sysctl -w net.ipv4.icmp_echo_ignore_broadcasts=0
#join and test multicast
sudo ip addr add 224.10.10.10/24 dev ens5 autojoin
#verify the join
sudo ip -f inet maddr show dev ens5
#Be sure to start a multicast ping from another host
#and the one from which you've bound to the multicast address.
#Also be sure to issue ping -t 16 224.10.10.10 otherwise
#all packets will leave with a TTL=1.
#https://gist.github.com/PhilipSchmid/2597c23c68f21d938779aa92683d30b2

#tmux session
tmux new -s mcast
#following suggested approach to accomplish PING
ping -t 16 224.10.10.10
ping -t 16 224.0.0.1
