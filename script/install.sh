#!/bin/bash

# Copy the script from the script/ folder to /usr/local/bin as "worldecow"
cp "$(dirname "$0")/wordlecow.sh" /usr/local/bin/worldecow
chmod +x /usr/local/bin/worldecow

echo "✅ Installed! Now you can run 'worldecow' from anywhere."

