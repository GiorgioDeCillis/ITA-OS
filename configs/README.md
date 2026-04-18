<div align="center">
  <h1>🎨 ITA-OS Configs</h1>
  **Il cuore estetico e funzionale dell'esperienza utente italiana.**

  [![Module](https://img.shields.io/badge/Module-Configurations-BE1E2D?style=for-the-badge)](#)
  [![Upstream](https://img.shields.io/badge/Upstream-Omarchy-0052cc?style=for-the-badge)](#)
</div>

<br/>

Questo repository gestisce la logica di configurazione "Zero-Touch" di **ITA-OS**. È un fork specializzato di `basecamp/omarchy` che introduce profili pre-configurati per la Pubblica Amministrazione.

---

## 📂 Struttura delle Configurazioni

ITA-OS offre tre paradigmi di interazione per soddisfare diverse tipologie di utenti PA:

| Profilo | Esperienza Utente | Destinazione d'uso |
|---------|-------------------|----------------------|
| `windows-like` | KDE Plasma (Taskbar bottom) | Migrazione standard da Windows 10/11 |
| `mac-like` | KDE Plasma (Dock + Top bar) | Utenti creativi o abituati a macOS |
| `hyprland` | Tiling WM (Moderno/Tiling) | Power users e monitoraggio AI |

### Funzionalità Integrate
- **Pacchetti PA**: Autocaricamento di Middleware CIE, Firma Digitale e Font Titillium.
- **Profile Switcher**: Utility `ita-os-profile-switch` per cambiare ambiente senza riavviare.
- **Branding**: Integrazione nativa di wallpaper e splash screen governativi.

---

## 🔄 Gestione Upstream

Per mantenere le configurazioni allineate con le innovazioni di Omarchy:

```bash
git remote add upstream https://github.com/basecamp/omarchy.git
git fetch upstream
git merge upstream/dev
```

---

<div align="center">
  <i>Parte dell'ecosistema ITA-OS realizzato da <b><a href="https://labeltune.eu">Labeltune</a></b>.</i>
  <br/>
  Rilasciato sotto licenza <a href="../LICENSE">MIT</a>.
</div>
