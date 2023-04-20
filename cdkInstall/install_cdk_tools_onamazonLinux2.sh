#!/usr/bin/env bash

# NOTES: This script works well on Amazon Linux2

echo "update latest packages"
sudo yum update && sudo yum upgrade -y

echo "install nvm (node version manager)"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

echo "activate nvm"
. ~/.nvm/nvm.sh

echo "install nvm version 16"
#find out why here https://docs.aws.amazon.com/sdk-for-javascript/v2/developer-guide/setting-up-node-on-ec2-instance.html
sudo nvm install 16

echo "testing if install is correct"
node -e "console.log('Running Node.js ' + process.version)"

echo "Install NodeJs and npm"
sudo yum install -y nodejs

echo "output version"
node -v
npm -v

echo "install the latest version of npm"
sudo npm install -g npm@latest

#list npm versions available
#npm view webpack versions --json

echo "install CDK toolkit"
sudo npm install -g aws-cdk 
echo "show CDK version"
cdk --version

echo "make sure the latest pip is installed"
pip3 install pip --upgrade

#create a directory for CDK projects
#mkdir $1

#notify user to configure aws cli credentials
echo "Do not forget to run aws configure to setup your credentials"

# ----------------------- End ------------------
