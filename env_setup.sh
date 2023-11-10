#!/bin/bash
# this setup.sh should be specific to each cluster
echo "slurm:x:450:450::/cm/local/apps/slurm:/bin/bash" >> /etc/passwd
echo "slurm:x:450:" >> /etc/group
echo "change path"
export PATH=$PATH:/cm/shared/apps/slurm/current/bin
# for some reasons loading apptainer in apptainer does not work, but works with things like cuda
export PATH=$PATH:/cm/shared/apps/apptainer/1.1.3/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/cm/shared/apps/apptainer/1.1.3/libexec
export LIBRARY_PATH=$LIBRARY_PATH:/cm/shared/apps/apptainer/1.1.3/libexec
echo $PATH