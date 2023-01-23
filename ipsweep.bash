#!/bin/bash

# Augment the sequence and ip address ranges for whatever network this is pointing at.

for ip in $(seq 2 50);
do
ping -c 1 -t 64 "10.0.5.$ip" > /dev/null 2>&1 && 
echo "Ping Status of 10.0.5.$ip : Success" || 
echo "Ping Status of 10.0.5.$ip : Failed" 
done > output.txt
