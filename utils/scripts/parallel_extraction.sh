#!/bin/bash
#SBATCH --tasks-per-node=24
#SBATCH -N 5
#SBATCH --cpu_bind=verbose,cores
#SBATCH --exclusive
#SBATCH -t 30
cd $SLURM_SUBMIT_DIR
srun --cpu_bind=verbose,cores ./data_training.sh