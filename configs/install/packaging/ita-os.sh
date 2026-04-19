# Install ITA-OS specific packages (PA profiles, fonts, etc)
if [[ -f "$OMARCHY_INSTALL/ita-os.packages" ]]; then
  mapfile -t packages < <(grep -v '^#' "$OMARCHY_INSTALL/ita-os.packages" | grep -v '^$')
  omarchy-pkg-add "${packages[@]}"
fi
