
#!/usr/bin/env bash

# NOTES: This scrip works well on Ubuntu version below
# Distributor ID: Ubuntu
# Description:    Ubuntu 20.04.4 LTS
# Release:        20.04

#access cdk folder
cd $1

#create cdk project
cdk init app --language python

#create virtual environment, this one is named labs
python3 -m venv .labs
source .labs/bin/activate

#run this command everytime you add a requirement
pip install -r requirements.txt

# run cdk synth
cdk synth 

#read more on bootstrap https://docs.aws.amazon.com/cdk/v2/guide/bootstrapping.html
cdk bootstrap

