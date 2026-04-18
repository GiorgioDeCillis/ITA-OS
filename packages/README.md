<div align="center">
  <h1>📦 ITA-OS Local Repository</h1>
  **Software sovrano certificato per la Pubblica Amministrazione.**

  [![Module](https://img.shields.io/badge/Module-Local_Repository-009246?style=for-the-badge)](#)
  [![Security](https://img.shields.io/badge/Security-Signed_Packages-D32F2F?style=for-the-badge)](#)
</div>

<br/>

Questo modulo gestisce il repository locale di **ITA-OS**. Qui vengono mantenute le ricette `PKGBUILD` per il software che non è presente nei repository ufficiali di Arch Linux o che richiede patch specifiche per la normativa italiana.

---

## 🏗️ Struttura del Modulo

- **`src/`**: Sorgenti e istruzioni di build (`PKGBUILD`) per ogni pacchetto.
- **`repo/`**: Repository binario locale contenente i pacchetti compilati (`.pkg.tar.zst`) e il database database `ita-os.db`.
- **`scripts/`**: Utility per automatizzare la compilazione e la firma del repository.

---

## 📋 Software Certificati

| Pacchetto | Funzione | Stato |
|-----------|----------|-------|
| `cie-middleware` | Supporto Carta Identità Elettronica | 🔴 Da fare |
| `ttf-titillium-web` | Font Istituzionale PA | 🔴 Da fare |
| `ita-os-branding` | Identità Visiva (Wallpaper, Splash) | 🔴 Da fare |
| `ita-os-templates` | Modulistica LibreOffice PA | 🔴 Da fare |
| `ita-os-profile-switch` | Gestore Profili Utente (GUI) | 🔴 Da fare |

---

## 🛠️ Come Compilare

Per aggiungere o aggiornare un pacchetto nel repository locale:

1. Crea la cartella in `src/<package-name>` con il relativo `PKGBUILD`.
2. Esegui lo script di build:
   ```bash
   ./scripts/build-package.sh <package-name>
   ```
3. Il pacchetto verrà compilato e spostato automaticamente in `repo/`, aggiornando il database locale.

---

<div align="center">
  <i>Parte dell'ecosistema ITA-OS realizzato da <b><a href="https://labeltune.eu">Labeltune</a></b>.</i>
  <br/>
  Rilasciato sotto licenza <a href="../LICENSE">MIT</a>.
</div>
