#!/bin/bash

###
#John the ripper demo for Epiphany/MPI
#To use: ./demo_e <input passwd file>
set -e

if [ "$#" -ne 1 ]; then
  echo "usage ./demo_e <input file>"
  exit 0
fi
python split.py $1 4
./transfer_files.sh
mpiexec -f ../machinefile -n 4 ./john_mpi
./get_files.sh
cat cracked*.txt > $1.cracked
./clean_up.sh

