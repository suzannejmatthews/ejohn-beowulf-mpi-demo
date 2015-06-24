#!/bin/bash

####
#File: transfer.sh
#To Use: ./transfer.sh
#transfers john_mpi executable
#to all worker nodes and mpi_testing
#directory on  master machine.
#comment out your IP prior to use
###
cp john_mpi ~/mpi_testing/john_e_demo/.
scp john_mpi 192.168.1.100:mpi_testing/john_e_demo/.
scp john_mpi 192.168.1.102:mpi_testing/john_e_demo/.
#scp john_mpi 192.168.1.101:mpi_testing/john_e_demo/.
scp john_mpi 192.168.1.103:mpi_testing/john_e_demo/.
