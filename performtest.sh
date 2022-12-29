#!/usr/bin/env bash

#create new tmux sessions and execute scripts 
tmux new -s hpingTest && sudo hping3 -V -S 99.99.99.100/32 && tmux new -s iperfTest && iperf -c 99.99.99.100/32 
