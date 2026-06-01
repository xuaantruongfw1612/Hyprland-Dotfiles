#!/bin/bash
# xuantruong config

# Create the Notes directory if it doesn't exist
NOTES_DIR="$HOME/Notes"
mkdir -p "$NOTES_DIR"

# Change to the Notes directory
cd "$NOTES_DIR" || exit 1  # exit if cd fails

# Create a filename based on the current timestamp
TIMESTAMP=$(date +"%Y%m%d_%Hh")
NOTE_FILE="Note-$TIMESTAMP.md"

# Open nvim with the new file in kitty
kitty -e nvim "$NOTE_FILE"

