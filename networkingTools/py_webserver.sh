#!/usr/bin/env bash

# Installs tmux, if you don't have it yet
sudo apt-get update
sudo apt-get install tmux -y

# Create a new tmux session named "test_web"
tmux new-session -d -s test_web

# Run a command inside the "test_web" session.
# Remember to change the target region to the one you are using.
# The command uses python http module to start a web server listening on TCP port number.
tmux send-keys -t test_web 'sudo python3 -m http.server 443' C-m
