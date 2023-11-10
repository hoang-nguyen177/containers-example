#!/bin/bash
#SBATCH --job-name=container-master
#SBATCH --ntasks-per-node=1
#SBATCH --nodes=1
#SBATCH --time=2:00:00
#SBATCH --account=tandemai
#SBATCH --mem=1G

echo ">>>>>>This is master<<<<<<<<"
echo "first argument: $1"
echo "second argument: $2"

echo "hostname:"
hostname

echo "slurm job id:$SLURM_JOB_ID"

echo "\n----------------------------------------"
echo "start worker from master"
module load apptainer/1.1.3
echo "source $1"
source $1

apptainer exec -B $2 test.sif /test/entry.sh $1 $2 worker

echo "done worker"
