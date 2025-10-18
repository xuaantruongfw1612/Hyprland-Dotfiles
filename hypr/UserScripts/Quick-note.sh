#!/bin/bash

# Tạo thư mục notes nếu chưa có
NOTES_DIR="$HOME/Notes"
mkdir -p "$NOTES_DIR"

# Tạo tên file theo timestamp hiện tại
TIMESTAMP=$(date +"%Hh_%d%m%y")
NOTE_FILE="$NOTES_DIR/Note-$TIMESTAMP.md"

# Mở nvim với file mới
kitty -e nvim "$NOTE_FILE"
