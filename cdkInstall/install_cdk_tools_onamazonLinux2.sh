#!/usr/bin/env bash

# NOTES: This script works well on Amazon Linux2

#update latest packages
sudo yum update && sudo yum upgrade -y

#install nvm (node version manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

#activate nvm
. ~/.nvm/nvm.sh

#install nvm version 16
#find out why here https://docs.aws.amazon.com/sdk-for-javascript/v2/developer-guide/setting-up-node-on-ec2-instance.html
nvm install 16

#test install is correct
node -e "console.log('Running Node.js ' + process.version)"

#Install NodeJs and npm
sudo yum install -y nodejs

#output version
node -v
npm -v

#install the latest version of npm
sudo npm install -g npm@latest

#list npm versions available
#npm view webpack versions --json

#install CDK toolkit
sudo npm install -g aws-cdk 
#show CDK version
cdk --version

#make sure the latest pip is installed
pip install pip --upgrade

#create a directory for CDK projects
#mkdir $1

#notify user to configure aws cli credentials
echo "Do not forget to run aws configure to setup your credentials"

# ----------------------- End ------------------
