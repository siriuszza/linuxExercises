#!/bin/bash

# Create the 'five' directory
mkdir -p five

# Iterate through dir1 to dir5
for dir in {1..5}; do
    sub_dir="five/dir$dir"
    mkdir -p "$sub_dir"

    # Iterate through file1 to file4
    for file in {1..4}; do
        filename="$sub_dir/file$file"
        lines=$(seq $file)
        
        # Create the file with lines containing the corresponding digit
        for line in $lines; do
            echo "$file" >> "$filename"
        done
    done
done
