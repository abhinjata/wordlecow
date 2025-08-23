#!/bin/bash
set -e

# Where to install
INSTALL_DIR="$HOME/.local/bin"
mkdir -p "$INSTALL_DIR"

# Download latest wordlecow.sh
curl -fsSL https://raw.githubusercontent.com/abhinjata/wordlecow/main/script/wordlecow.sh -o "$INSTALL_DIR/wordlecow"
chmod +x "$INSTALL_DIR/wordlecow"

# Check if cowsay exists
if ! command -v cowsay >/dev/null 2>&1; then
    echo "⚠️  cowsay not found. Please install it:"
    echo "   - Debian/Ubuntu: sudo apt install cowsay"
    echo "   - Fedora: sudo dnf install cowsay"
    echo "   - Arch: sudo pacman -S cowsay"
    echo "   - Termux: pkg install cowsay"
fi

echo "✅ Installed WordleCow!"
echo "   Run it with: wordlecow"

