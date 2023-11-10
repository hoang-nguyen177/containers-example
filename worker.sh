#!/bin/bash
#SBATCH --job-name=worker
#SBATCH --ntasks-per-node=1
#SBATCH --nodes=1
#SBATCH --time=1:00:00
#SBATCH --account=tandemai
#SBATCH --mem=1G
echo "$@"

echo "sleep inside container"
sleep 100

echo "hostname:"
hostname

echo "slurm job id:$SLURM_JOB_ID"

echo ">>>>>>>>>>>>This is woeker<<<<<<<<"
echo "listing /"
ls /
echo "listing ."
ls .
echo "whoami"
whoami
echo "pwd"
pwd

