#!/bin/bash

#SBATCH --nodes=1
#SBATCH --ntasks-per-node=5
#SBATCH --qos=normal
#SBATCH --job-name=LUT
#SBATCH --output=LUT%j.out
#SBATCH --time 0-06:00


echo "Starting model at $(date)"


mpirun nrniv -mpi main.hoc
