#!/bin/bash

for subfolder in /om2/user/$USER/data/patch_data_cluster/$1/*; do
        if [[ $(basename $subfolder) == *_refeeding_2_* ]]; then
                mv $subfolder /om2/user/$USER/data/patch_data_cluster/$1_unsplit
        fi
done
