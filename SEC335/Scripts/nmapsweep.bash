#!/bin/bash

# Augment IP range for other projects.

IPS_UP=$(nmap -sn 10.0.5.0/24 2>/dev/null -og - |grep "Up$" | awk '{printf "%s ", $2}')
