#!/bin/bash

sbatch mpi_hello_fortran.sbatch
echo Submitted MPI Job for Hello Fortran program...

while true
do
	squeue -u $USER
	echo "Press [CTRL+C] to stop.."
	sleep 0.5
done
