#!/bin/sh
#SBATCH -N 1
gcc -fopenmp -o quake superQuakeV2.c -lm
export OMP_NUM_THREADS=16
time ./quake < quake.in > FinalOri1.txt
