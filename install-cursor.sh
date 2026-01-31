#!/bin/bash
# install-cursor.sh
# Quick installer for Cursor editor - used during Origin8 workshop setup
# Usage: bash install-cursor.sh

set -euo pipefail

echo "=== Cursor Editor Installer ==="
echo ""

# Detect OS
OS="$(uname -s)"

case "$OS" in
  Linux)
    echo "Detected: Linux"
    echo "Downloading Cursor..."
    curl -fsSL https://cursor.com/install | bash
    ;;
  Darwin)
    echo "Detected: macOS"
    echo "Downloading Cursor..."
    curl -fsSL https://cursor.com/install | bash
    ;;
  *)
    echo "Unsupported OS: $OS"
    echo "Please install Cursor manually from https://cursor.com"
    exit 1
    ;;
esac

echo ""
echo "=== Installation complete ==="
echo "Next steps:"
echo "  1. Open Cursor"
echo "  2. Sign in with your GitHub account"
echo "  3. Open the workshop-practice folder"
echo "  4. Verify GitHub MCP is connected (see github-mcp-workflows.md)"
