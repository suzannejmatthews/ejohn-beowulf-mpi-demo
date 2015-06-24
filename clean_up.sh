#!/bin/bash

rm *.txt
rm ~/parallella-examples/john/run/*.txt
rm -f ~/parallella-examples/john/run/john.pot
ssh 192.168.1.100 "cd parallella-examples/john/run; rm *.txt john.pot"
ssh 192.168.1.101 "cd parallella-examples/john/run; rm *.txt john.pot"
ssh 192.168.1.102 "cd parallella-examples/john/run; rm *.txt john.pot"
#ssh 192.168.1.103 "cd parallella-examples/john/run; rm *.txt john.pot"


