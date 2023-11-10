#!/bin/bash

echo ">>>>>>@entry<<<<<<<<<<"
echo $@


echo "source $1"
source $1

if [[ "$3" == "master" ]]; then
    echo "sbatch master"
    sbatch /test/master.sh $1 $2
else
    echo "sbatch worker"
    sbatch --wait /test/worker.sh $1 $2
fi
