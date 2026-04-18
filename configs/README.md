# 🇮🇹 ITA-OS Configs

> Fork di [Omarchy](https://github.com/basecamp/omarchy) — configurazioni e personalizzazioni per il Sistema Operativo Sovrano Italiano.

## Cosa contiene

Questo repository è un fork di `basecamp/omarchy` con le seguenti aggiunte:

### Profili Grafici (`config/ita-os/profiles/`)
| Profilo | Desktop | Descrizione |
|---------|---------|-------------|
| `windows-like` | KDE Plasma | Taskbar in basso, menu Start, pulsanti finestra a destra |
| `mac-like` | KDE Plasma | Barra in alto, dock in basso, pulsanti finestra a sinistra |
| `hyprland` | Hyprland | Default Omarchy — tiling WM per utenti avanzati |

### Pacchetti PA (`install/ita-os.packages`)
Pacchetti aggiuntivi per la Pubblica Amministrazione: CIE, firma digitale, KDE Plasma, font istituzionali, strumenti di sicurezza.

### Script (`bin/ita-os-profile-switch`)
Utility per cambiare profilo grafico al volo.

## Upstream
```bash
git remote add upstream https://github.com/basecamp/omarchy.git
git fetch upstream
git merge upstream/dev  # Per aggiornare dal repo originale
```

## Licenza
MIT (come Omarchy originale)
