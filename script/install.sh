#!/bin/bash
set -e

INSTALL_DIR="$HOME/bin"
SCRIPT_NAME="wordlecow"

mkdir -p "$INSTALL_DIR"
cp "$(dirname "$0")/../wordlecow.sh" "$INSTALL_DIR/$SCRIPT_NAME"
chmod +x "$INSTALL_DIR/$SCRIPT_NAME"

if ! echo "$PATH" | grep -q "$HOME/bin"; then
    echo "⚠️ $HOME/bin is not in PATH. Add this to your shell config:"
    echo 'set -U fish_user_paths $HOME/bin $fish_user_paths'
fi

echo "✅ Installed WordleCow!"
echo "👉 Run it with: wordlecow"

