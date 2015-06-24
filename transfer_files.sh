#!/bin/bash

####
#File: transfer.sh
#To Use: ./transfer.sh <file>
#where <file> is the file
#you want to transfer to nodes
#comment out your IP prior to use
###
echo "transfering: $1"
cp node_pass* ~/parallella-examples/john/run/.
for i in 0 1 2 3
do
scp "node_pass$i.txt" 192.168.1.100:parallella-examples/john/run/.
scp "node_pass$i.txt" 192.168.1.101:parallella-examples/john/run/.
scp "node_pass$i.txt" 192.168.1.102:parallella-examples/john/run/.
#scp "node_pass$i.txt" 192.168.1.103:parallella-examples/john/run/.
done
