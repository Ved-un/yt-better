#!/bin/bash

# Define the source and destination paths
source_file="scripts/yt"
source_file_music="scripts/yt-music"
destination_dir="/usr/bin"

# chmod
chmod +x $source_file
chmod +x $source_file_music

## yt
# Check if the file exists
if [ -f "$source_file" ]; then
    # Move the file to the destination directory
    mv "$source_file" "$destination_dir"

    # Check if the move operation was successful
    if [ $? -eq 0 ]; then
        echo "File moved successfully to $destination_dir."
    else
        echo "Failed to move the file."
    fi
else
    echo "File '$source_file' not found."
fi

## yt music
# Check if the file exists
if [ -f "$source_file_music" ]; then
    # Move the file to the destination directory
    mv "$source_file_music" "$destination_dir"

    # Check if the move operation was successful
    if [ $? -eq 0 ]; then
        echo "File moved successfully to $destination_dir."
    else
        echo "Failed to move the file."
    fi
else
    echo "File '$source_file_music' not found."
fi