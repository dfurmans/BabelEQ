#!/bin/bash

# Navigate to the project root (one folder up from the script's location)
cd "$(dirname "$0")/.." || exit 1

# Define standard and Flatpak EasyEffects base directories
NATIVE_BASE="$HOME/.config/easyeffects"
FLATPAK_BASE="$HOME/.var/app/com.github.wwmm.easyeffects/config/easyeffects"

# Check if the presets folder exists in the project root
if [ ! -d "presets" ]; then
    echo "Error: 'presets' directory not found. Please ensure the repository structure is intact."
    exit 1
fi

# Determine which EasyEffects directory exists on the user's system
if [ -d "$NATIVE_BASE" ]; then
    TARGET_BASE="$NATIVE_BASE"
elif [ -d "$FLATPAK_BASE" ]; then
    TARGET_BASE="$FLATPAK_BASE"
else
    echo "Error: EasyEffects config directory not found."
    echo "Please open EasyEffects at least once so it can generate its configuration folders."
    exit 1
fi

echo "EasyEffects configuration found at: $TARGET_BASE"

# Function to install presets for a specific pipeline (input or output)
install_presets() {
    local preset_type=$1
    local source_dir="presets/$preset_type"
    local target_dir="$TARGET_BASE/$preset_type"

    # Check if the source directory (input/output) actually exists in the project
    if [ -d "$source_dir" ]; then
        # Ensure the destination folder exists (EasyEffects might not have created it yet)
        mkdir -p "$target_dir"
        
        echo "Installing $preset_type presets to $target_dir..."
        # Find and copy all JSON files to the target
        find "$source_dir" -type f -name "*.json" -exec cp {} "$target_dir/" \;
    else
        echo "Notice: 'presets/$preset_type' not found, skipping $preset_type presets."
    fi
}

# Install both input and output presets
install_presets "input"
install_presets "output"

echo "Success! Presets installed."
