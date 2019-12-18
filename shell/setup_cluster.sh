#!/bin/bash

# Run on cluster. 

# 1. Make bin folder and add all shell scripts for easy access.
mkdir ~/bin
for file in ~/patch/shell/*; do # Add all shell scripts to bin
	cp $file ~/bin/
done
source ~/.bash_profile # Activate changes

# 2. Make folders for data and move all measureCam files there
mkdir /om2/user/$USER/data/
mkdir /om2/user/$USER/data/patch_videos_cluster/
for file in ~/patch/measure/*; do
	cp $file /om2/user/$USER/data/patch_videos_cluster/
done

# 3. Make log folder to store analysis logs (i.e. the files containing MATLAB output for each tracking job).
mkdir ~/log/
