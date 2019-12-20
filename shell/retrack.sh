#!/bin/bash

# Deletes .working files and processes each video within the given date folder.
# Argument $1 is the date to be reprocessed

for video in /om2/user/$USER/data/patch_data_cluster/$1/*; do
	if [ -e $video/*.working ]; then
		rm $video/*.working
	fi
done

sbatch /home/$USER/patch/shell/track.sh $1
