#! /bin/bash

#SBATCH --job-name=problem1
#SBATCH -A CLASS-ECOEVO283
#SBATCH -p standard
#SBATCH --cpus-per-task=1
#SBATCH --error=problem1.err
#SBATCH --output=problem1.out

#Change paths
cd $SLURM_SUBMIT_DIR

#Grab file
wget https://wfitch.bio.uci.edu/~tdlong/problem1.tar.gz

#Uncompress file
tar -xvf problem1.tar.gz

#Remove the compressed file
rm problem1.tar.gz

#Get first 10 lines, then get the last line
head -n 10 problem1/p.txt | tail -n 1 > problem1_solution.txt
head -n 10 problem1/f.txt | tail -n 1 >> problem1_solution.txt

