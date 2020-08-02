#!/bin/bash

#SBATCH --job-name=mpi_fortran_batch_job
#SBATCH --output=/home/s.chakravarty/fortran/result_mpi_fortran.out
#SBATCH --error=/home/s.chakravarty/fortran/fault_mpi_fortran.err
#SBATCH --partition express
#SBATCH --nodes=1
#SBATCH --time=0:05:00

module load openmpi
mpif90 mpi_hello_fortran.f90 -o hello_fortran_mpi.exe
mpirun -np 2 -oversubscribe ./hello_fortran_mpi.exe 
mpirun -np 4 -oversubscribe ./hello_fortran_mpi.exe
mpirun -np 8 -oversubscribe ./hello_fortran_mpi.exe
mpirun -np 16 -oversubscribe ./hello_fortran_mpi.exe
mpirun -np 32 -oversubscribe ./hello_fortran_mpi.exe
