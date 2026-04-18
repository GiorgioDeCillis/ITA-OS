#!/bin/bash
# ============================================================
# build-all-packages.sh — Build all custom ITA-OS packages
# ============================================================
# This script iterates through all directories in src/,
# builds the packages, and adds them to the local repository.
# ============================================================

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PACKAGES_ROOT="$(dirname "$SCRIPT_DIR")"
SRC_DIR="$PACKAGES_ROOT/src"
REPO_DIR="$PACKAGES_ROOT/repo"
BUILD_SCRIPT="$SCRIPT_DIR/build-package.sh"

mkdir -p "$REPO_DIR"

echo "Building all ITA-OS packages..."
echo "==============================="

for pkg_dir in "$SRC_DIR"/*/; do
    pkg_name=$(basename "$pkg_dir")
    echo "Processing: $pkg_name"
    
    # Run the single package build script
    "$BUILD_SCRIPT" "$pkg_name"
done

echo ""
echo "==============================="
echo "✓ All packages built successfully"
echo "Repository location: $REPO_DIR"
ls -lh "$REPO_DIR"
