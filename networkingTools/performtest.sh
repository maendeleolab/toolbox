#!/usr/bin/env bash

#perform hping and iperf test 
sudo hping3 -V -S 99.99.99.100/32 

iperf -c 99.99.99.100/32 

mtr -w -T -P 1438 77.75.38.186

#tcpdump with 5 rotating files (-W 5), capture will rotate files after 100MB (-C 100)
tcpdump -i eth0 host 77.75.38.186 -W 5 -C 100 -w aws_capture_file.pcap

Kindly use these commands on-premises (77.75.38.186).
#tcpdump with 5 rotating files (-W 5), capture will rotate files after 100MB (-C 100)
tcpdump -i eth0 '((host 3.127.207.64) or (host 3.127.51.175) or (host 18.195.218.87))' -W 5 -C 100 -w on_premises.pcap

while true; do nc -z -v 77.75.38.186 1438 -w 3; done &> monitoring_sql

success log: Successful connections will look like this "Connection to 77.75.38.186 1438 port [tcp/*] succeeded!"
error message: Bad connections "nc: connect to 77.75.38.186 port 1438 (tcp) timed out: Operation now in progress"


#Use this command to get the default value to read buffer memory
cat /proc/sys/net/core/rmem_max
#Use this command to get the default value to write buffer memory
cat /proc/sys/net/core/wmem_max

#the following settings going to increase memory usage on your server.
echo 'net.core.wmem_max=16777216' >> /etc/sysctl.conf
echo 'net.core.rmem_max=16777216' >> /etc/sysctl.conf
#set minimum size, initial size, and maximum size in bytes
echo 'net.ipv4.tcp_rmem= 10240 87380 16777216' >> /etc/sysctl.conf
echo 'net.ipv4.tcp_wmem= 10240 87380 16777216' >> /etc/sysctl.conf
#reload the changes
sysctl -p


