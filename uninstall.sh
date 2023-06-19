#!/bin/bash

files=("yt" "yt-music")  # List of files to check

for file in "${files[@]}"; do
    if [ -f "/usr/bin/$file" ]; then
        echo "Removing $file..."
        sudo rm "/usr/bin/$file"
        echo "$file removed."
    else
        echo "$file does not exist in /usr/bin/."
    fi
done
