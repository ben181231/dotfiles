#!/bin/bash

# Check if delta is installed
if command -v delta &> /dev/null
then
    DIFF_PROGRAM=delta
else
    DIFF_PROGRAM=diff
fi

# Iterate over the files in the current directory
for file in .[^.]* *; do
    # Skip directories
    if [ -d "$file" ] || [ ! -e "$file" ]; then
        continue
    fi

    # Check if the file exists in the HOME directory
    if [ -e "$HOME/$file" ]; then
        echo ">>> Comparing $file with $HOME/$file <<<"
        # Use the determined diff program to compare the files
        $DIFF_PROGRAM "$file" "$HOME/$file"
    fi
done