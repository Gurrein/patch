#!/bin/bash

# 1. Copy shell scripts to bin for better accessibility.
echo "Need password to move patch shell scripts into your bin folder, which is a folder always in your path."
echo "This will allow access to each shell script without having to enter in the path. You need this convenience in your life."
sudo cp ~/download_data.sh  /bin/
sudp cp ~/upload_data.sh /bin/
echo "Great. Now you can just type in 'upload_data.sh <date> <username>' without referencing the path to the script file. Good job."

