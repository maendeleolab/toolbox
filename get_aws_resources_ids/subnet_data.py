#!/usr/bin/env python3
import json, os
from pprint import pprint

def get_subnet_data(region='us-east-1'):                                                                                                                 
  try:
    output = os.popen('aws ec2 describe-subnets' + ' --region '+ region).read()
    data = json.loads(output)

    for item in data['Subnets']:
      id = item['SubnetId'] 
      az = item['AvailabilityZone']
      cidr_block = item['CidrBlock']
      available_ip = item['AvailableIpAddressCount']
      label = item['Tags'][0]['Value']
      print(f'Subnet:{label} {id}-{cidr_block} in {az} has {available_ip} left')
    print(f'Total number of objects: {len(data["Subnets"])}')
  except Exception as err:
    print(f'Error:{err} ...')
  print('\n')
  return {
    "status_code":200,
    "subject":"Code execution complete!"
  }
