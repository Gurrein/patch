#!/bin/bash

# Run on cluster. 

# 1. Download patch files from github to home directory
cd ~/
git clone https://github.com/proudofu/patch/tree/cluster

# 2. Make bin folder and add all shell scripts for easy access.
cd ~/
mkdir bin
for file in patch/shell/*; do # Add all shell scripts to bin
	cp $file bin/
done
source .bash_profile # Activate changes

# 3. Make folders for data and move all measureCam files there
mkdir /om2/user/$USER/data/
mkdir /om2/user/$USER/data/patch_videos_cluster/
for file in /home/$USER/patch/measure/*; do
	cp $file /om2/user/$USER/data/patch_videos_cluster/
done

# 4. Make log folder to store analysis logs (i.e. the files containing MATLAB output for each tracking job).
mkdir ~/log/
