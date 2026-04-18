#!/bin/bash
# ============================================================
# ITA-OS ISO Builder Wrapper
# ============================================================
# This script wraps omarchy-iso-make to build an ITA-OS ISO
# using the GiorgioDeCillis/ita-os-configs fork.
#
# Usage:
#   ./build-ita-os.sh              # Build from remote fork
#   ./build-ita-os.sh --local      # Build from local configs
#   ./build-ita-os.sh --dev        # Build from dev branch
# ============================================================

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
WORKSPACE_DIR="$(dirname "$SCRIPT_DIR")"
CONFIGS_DIR="$WORKSPACE_DIR/configs"

# ITA-OS specific configuration
export OMARCHY_INSTALLER_REPO="${OMARCHY_INSTALLER_REPO:-GiorgioDeCillis/ita-os-configs}"
export OMARCHY_INSTALLER_REF="${OMARCHY_INSTALLER_REF:-dev}"

# Parse ITA-OS specific flags
ITA_ARGS=()
for arg in "$@"; do
  case $arg in
    --local)
      export OMARCHY_PATH="$CONFIGS_DIR"
      ITA_ARGS+=(--local-source)
      echo "🇮🇹 ITA-OS: Building from local configs at $CONFIGS_DIR"
      ;;
    *)
      ITA_ARGS+=("$arg")
      ;;
  esac
done

echo "============================================"
echo "  🇮🇹 ITA-OS ISO Builder"
echo "============================================"
echo "  Installer Repo: $OMARCHY_INSTALLER_REPO"
echo "  Installer Ref:  $OMARCHY_INSTALLER_REF"
echo "  Local path:     ${OMARCHY_PATH:-<remote>}"
echo "============================================"
echo ""

# Run the upstream ISO maker
exec "$SCRIPT_DIR/bin/omarchy-iso-make" "${ITA_ARGS[@]}"
