#!/bin/bash
# this script will start master.sh as a job
# then master.sh will start worker.sh in another job
# both master.sh and worker.sh exist inside container

module load apptainer/1.1.3
apptainer exec -B /cm/shared/apps/slurm/,/usr/lib64/libmunge.so.2,/run/munge test.sif /test/entry.sh env_setup.sh /cm/shared/apps/slurm/,/usr/lib64/libmunge.so.2,/run/munge master
