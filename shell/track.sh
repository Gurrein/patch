#!/bin/bash
for subfolder in /om2/user/$USER/data/patch_data_cluster/$1/*; do
	sbatch /home/$USER/patch/shell/subtrack.sh $1 $(basename $subfolder)
done
