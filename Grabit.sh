#!/bin/bash
set -e

# Check dependencies
command -v tesseract >/dev/null 2>&1 || { echo >&2 "Tesseract OCR is required but not installed. Aborting."; exit 1; }
command -v convert >/dev/null 2>&1 || { echo >&2 "ImageMagick is required but not installed. Aborting."; exit 1; }
command -v gnome-screenshot >/dev/null 2>&1 || { echo >&2 "gnome-screenshot is required but not installed. Aborting."; exit 1; }
command -v xclip >/dev/null 2>&1 || { echo >&2 "xclip is required but not installed. Aborting."; exit 1; }

# Language selection menu
tesseract_lang="eng"

# Create temporary directory
temp_dir=$(mktemp -d)

# Capture screenshot
gnome-screenshot -a -f "$temp_dir/screenshot.png"

# Improve image quality
convert -modulate 100,0 -resize 400% "$temp_dir/screenshot.png" "$temp_dir/processed.png"

# Perform OCR
tesseract "$temp_dir/processed.png" "$temp_dir/result" &>/dev/null

# Copy result to clipboard using xclip
cat "$temp_dir/result.txt" | xclip -selection clipboard

# Cleanup
rm -rf "$temp_dir"

exit 0
