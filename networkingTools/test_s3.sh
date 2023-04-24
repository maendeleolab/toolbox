#!/usr/bin/env bash

# Installs tmux, if you don't have it yet
sudo apt-get update
sudo apt-get install tmux -y

# Create a new tmux session named "test_s3"
tmux new-session -d -s test_s3

# Run a command inside the "test_s3" session
# Remember to change the target region to the one you are using.
# The command does a DNS lookup of s3 public endpoint in us-east-1 and redirects the output in the terminal and the log_file
# It runs in a while loop 
tmux send-keys -t test_s3 'while true; do nslookup s3.us-east-1.amazonaws.com; date; sleep 3; done 2>&1 | tee log_file' C-m
