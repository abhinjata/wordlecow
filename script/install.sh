#!/bin/bash
set -e

# Path where we'll install the command
INSTALL_DIR="/usr/local/bin"
SCRIPT_NAME="wordlecow"

# Copy and rename script
cp "$(dirname "$0")/../wordlecow.sh" "$INSTALL_DIR/$SCRIPT_NAME"

# Make it executable
chmod +x "$INSTALL_DIR/$SCRIPT_NAME"

echo "✅ Installed WordleCow!"
echo "👉 Run it with: wordlecow"

