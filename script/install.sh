#!/bin/bash

set -e

# Where to install
INSTALL_DIR="$HOME/.local/bin"

# Ensure the directory exists
mkdir -p "$INSTALL_DIR"

# Copy the script
cp "$(dirname "$0")/wordlecow.sh" "$INSTALL_DIR/worldecow"
chmod +x "$INSTALL_DIR/worldecow"

echo "✅ Installed! Now you can run 'worldecow' from anywhere."
echo "ℹ️ Make sure $HOME/.local/bin is in your PATH."

