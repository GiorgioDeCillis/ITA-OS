# ITA-OS Packages Repository
# ==========================
# Repository locale di pacchetti custom per ITA-OS.
#
# Struttura:
#   src/         — PKGBUILD e sorgenti per pacchetti custom
#   repo/        — Pacchetti compilati (.pkg.tar.zst) + database
#   scripts/     — Script di build e gestione del repository
#
# Istruzioni:
#   1. Aggiungi un PKGBUILD in src/<nome-pacchetto>/
#   2. Compila con: ./scripts/build-package.sh <nome-pacchetto>
#   3. Il pacchetto viene aggiunto automaticamente a repo/

## Pacchetti previsti
| Pacchetto | Descrizione | Stato |
|-----------|-------------|-------|
| cie-middleware | Middleware CIE per smart card | 🔴 Da fare |
| ttf-titillium-web | Font istituzionale PA | 🔴 Da fare |
| ita-os-branding | Wallpaper, icone, splash screen | 🔴 Da fare |
| ita-os-templates | Template LibreOffice per la PA | 🔴 Da fare |
| ita-os-profile-switch | Script di switch profili GUI | 🔴 Da fare |
