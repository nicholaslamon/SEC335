#!/bin/bash

# use "bash portscanner.bash [hosts file] [port file]

hostfile=$1
portfile=$2

echo "host,port" > portOP.txt
for host in $(cat $hostfile); do
        for port in $(cat $portfile); do
                timeout .1 bash -c "echo >/dev/tcp/$host/$port" 2>/dev/null &&
                        echo "$host,$port"
        done
done >> portOP.txt
