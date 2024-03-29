#!/usr/bin/python3

Goal = '''
to test latency using hping3 utility
Author: Pat@Maendeleolab
https://github.com/maendeleolab
'''
Usage = '''
This script measures network latency between a source and a destination host.
If the response time takes more than 1 second, the result is logged in file 'hping3_monitoring.log'
This helps when tshooting latency/slowness.
You run the script as follows:
./test_latency.py <target ip/dnsname> <target port>
In addition, you can run the script in a loop as shown in the example below.
Example: 'while true; do ./test_latency.py <target ip/dnsname> <target port>; sleep 1; done'
'''

#Module imports
import logging, sys, os, json
from datetime import datetime
from time import sleep

#logging
logging.basicConfig(format='%(asctime)s %(message)s', datefmt='%m/%d/%Y %I:%M:%S %p ',\
                                                                              filename='hping3_monitoring.log', level=logging.INFO)

dst_ip = sys.argv[1] # target ip/dnsname
dst_port = sys.argv[2] # target port

def test_hping3(target_url, target_port):
  ''' Measures latency using Hping3 '''
  try:
    output = os.popen('sudo hping3 -S -c 1 '+target_url+' -p '+target_port).read()
    output_list = output.split()
    value = output_list[-2].split('=')
    if float(value[-1]) > 1000 :
      logging.info(f'rtt={value[-1]} is greater than 1 second')
  except Exception as err:
    logging.info(err)
    print(f'Error: {err} ...')

# Calling the function
test_hping3(dst_ip, dst_port)
