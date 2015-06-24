#!/bin/bash

####
#File: get_files.sh
#To Use: ./get_files.sh
#Gets cracked password files from
#each of the nodes.
#comment out your IP prior to use
###
echo "transfering: $1"
cp ~/parallella-examples/john/run/cracked* .
scp 192.168.1.100:parallella-examples/john/run/cracked* .
scp 192.168.1.101:parallella-examples/john/run/cracked* .
scp 192.168.1.102:parallella-examples/john/run/cracked* .
#scp 192.168.1.103:parallella-examples/john/run/cracked* .
