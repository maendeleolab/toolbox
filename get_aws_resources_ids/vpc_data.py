#!/usr/bin/env python3
import json, os

def get_vpc_data(region='us-east-1'):                                                                                                                 
  try:
    output = os.popen('aws ec2 describe-vpcs' + ' --region '+ region).read()
    data = json.loads(output)

    for item in data['Vpcs']:
      id = item['VpcId'] 
      primary = item['CidrBlock']
      label = item['Tags'][0]['Value']
      print(f'Vpc:{label} {id} has a primary cidr:{primary}')
    print(f'Total number of objects: {len(data["Vpcs"])}')
  except Exception as err:
    print(f'Error:{err} ...')
  print('\n')
  return {
    "status_code":200,
    "subject":"Code execution complete!"
  }
