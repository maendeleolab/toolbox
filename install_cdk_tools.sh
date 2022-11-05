#!/usr/bin/env bash

# NOTES: This scrip works well on Ubuntu version below
# Distributor ID: Ubuntu
# Description:    Ubuntu 20.04.4 LTS
# Release:        20.04

#update latest packages
sudo apt update && sudo apt upgrade -y

#installing Linux utilities needed to install awscli version2
sudo apt install -y unzip

#install aws cli
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

#install Node.js
sudo apt install npm -y
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt install -y nodejs
#show Node.js version
node --version
npm --version

#install CDK toolkit
sudo npm install -g aws-cdk
#show CDK version
cdk --version

#install python virtual env
sudo apt install python3.8-venv

#perform the commands below manually
#create folder for cdk
mkdir $1 