#!/bin/bash
# ============================================================
# build-package.sh — Build a single AUR-style package
# ============================================================
# Usage: ./scripts/build-package.sh <package-name>
# ============================================================

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_DIR="$SCRIPT_DIR/../repo"
SRC_DIR="$SCRIPT_DIR/../src"

PACKAGE_NAME="${1:?Usage: $0 <package-name>}"
PACKAGE_DIR="$SRC_DIR/$PACKAGE_NAME"

if [[ ! -d "$PACKAGE_DIR" ]]; then
    echo "Error: Package directory not found: $PACKAGE_DIR"
    exit 1
fi

if [[ ! -f "$PACKAGE_DIR/PKGBUILD" ]]; then
    echo "Error: PKGBUILD not found in $PACKAGE_DIR"
    exit 1
fi

echo "Building package: $PACKAGE_NAME"
echo "================================="

# Build the package
cd "$PACKAGE_DIR"
makepkg -sf --noconfirm

# Move to repo directory
mv -f *.pkg.tar.zst "$REPO_DIR/" 2>/dev/null || mv -f *.pkg.tar.xz "$REPO_DIR/" 2>/dev/null

# Update the repo database
cd "$REPO_DIR"
repo-add ita-os.db.tar.gz *.pkg.tar.zst 2>/dev/null || repo-add ita-os.db.tar.gz *.pkg.tar.xz 2>/dev/null

echo ""
echo "✓ Package $PACKAGE_NAME built and added to ita-os repo"
