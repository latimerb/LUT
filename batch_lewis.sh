#!/bin/bash

#SBATCH -p Lewis,hpc5
#SBATCH -N 1
#SBATCH -n 5
#SBATCH --qos=normal
#SBATCH --job-name=LUT
#SBATCH --output=LUT%j.out
#SBATCH --time 0-04:30

module load intel/intel-2016-update2
module load nrn/nrn-mpi-7.4
module load openmpi/openmpi-2.0.0

module list
echo "Starting model at $(date)"

mpirun nrniv -mpi main.hoc

echo "Simulation over at $(date)"



