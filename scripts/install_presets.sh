#!/bin/bash

# Navigate to the project root (one folder up from the script's location)
cd "$(dirname "$0")/.." || exit 1

# Define standard and Flatpak EasyEffects output preset directories
NATIVE_DIR="$HOME/.config/easyeffects/output"
FLATPAK_DIR="$HOME/.var/app/com.github.wwmm.easyeffects/config/easyeffects/output"

# Check if the presets folder exists in the project root
if [ ! -d "presets" ]; then
    echo "Error: 'presets' directory not found. Please ensure the repository structure is intact."
    exit 1
fi

# Determine which EasyEffects directory exists on the user's system
if [ -d "$NATIVE_DIR" ]; then
    TARGET_DIR="$NATIVE_DIR"
elif [ -d "$FLATPAK_DIR" ]; then
    TARGET_DIR="$FLATPAK_DIR"
else
    echo "Error: EasyEffects config directory not found."
    echo "Please open EasyEffects at least once so it can generate its configuration folders."
    exit 1
fi

echo "Installing presets to $TARGET_DIR..."

# Copy all JSON files to the EasyEffects output folder
cp presets/*.json "$TARGET_DIR/"

echo "Success! Presets installed. Open the EasyEffects app to apply them."
