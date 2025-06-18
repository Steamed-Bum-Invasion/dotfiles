#!/bin/sh

# Get the folder where this script is located
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# Clone LazyVim into ./nvim (in same dir as script)
git clone https://github.com/LazyVim/starter "$SCRIPT_DIR/nvim"

echo "✅ LazyVim config downloaded to: $SCRIPT_DIR/nvim"
