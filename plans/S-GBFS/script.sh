#!/bin/bash

folder_path="sailing"

for file in "$folder_path"/*; do
    if [[ -f $file ]]; then
        # Check the number of lines in the file
        line_count=$(wc -l < "$file")
        
        if (( line_count > 100 )); then
            # Trim the file to 100 lines and add the message
            head -n 100 "$file" > "${file}.tmp" && echo "[file too large]" >> "${file}.tmp"
            mv "${file}.tmp" "$file"
        else
            echo "$file is already under 100 lines."
        fi
    fi
done
