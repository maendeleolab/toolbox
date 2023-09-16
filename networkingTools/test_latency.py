#!/usr/bin/python3

Goal = '''
to test latency using hping3 utility
Author: Pat@Maendeleolab
'''

#Module imports
import logging, sys, os, json
from datetime import datetime
from time import sleep

#logging
logging.basicConfig(format='%(asctime)s %(message)s', datefmt='%m/%d/%Y %I:%M:%S %p ',\
                                                                              filename='hping3_monitoring.log', level=logging.INFO)


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


#Replace google.com with your destination endpoint
test_hping3('maendeleolab.com', '443')
