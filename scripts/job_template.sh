#! /bin/bash

#SBATCH --job-name=
#SBATCH -A CLASS-ECOEVO283
#SBATCH -p standard
#SBATCH --cpus-per-task=1
#SBATCH --error=.err
#SBATCH --output=.out

#print date
date

#load modules

#change paths
cd $SLURM_SUBMIT_DIR

