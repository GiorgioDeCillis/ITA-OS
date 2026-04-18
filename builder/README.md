<div align="center">
  <h1>⚙️ ITA-OS Build Engine</h1>
  **Il generatore deterministico delle immagini ISO ufficiali.**

  [![Module](https://img.shields.io/badge/Module-Build_Engine-4B4B4B?style=for-the-badge)](#)
  [![Technology](https://img.shields.io/badge/Tech-Chroot_Arch-1793D1?style=for-the-badge)](#)
</div>

<br/>

Questo modulo è il motore di build di **ITA-OS**. Basato sull'architettura di `omarchy-iso`, permette di fondere il sistema base Arch Linux con il layer di configurazione italiana e i pacchetti locali certificati.

---

## 🚀 Ciclo di Build ITA-OS

Il processo di generazione automatizza la creazione di un ambiente Live-Installabile:

1.  **Bootstrap**: Preparazione dell'ambiente Arch Linux in chroot.
2.  **Overlay**: Iniezione delle configurazioni presenti in `/configs`.
3.  **Local Repo**: Installazione dei pacchetti compilati presenti in `/packages/repo`.
4.  **Seal**: Sigillatura dell'immagine ISO e firma GPG.

### Comandi Rapidi

- **Generazione ISO**:
  ```bash
  ./bin/omarchy-iso-make
  ```
- **Test in Virtual Machine (Fast boot)**:
  ```bash
  ./bin/omarchy-iso-boot release/ita-os.iso
  ```
- **Rilascio Ufficiale**:
  ```bash
  ./bin/omarchy-iso-release VERSION
  ```

---

## 🛠️ Personalizzazione
È possibile forzare l'uso di specifici repository o branch durante la build tramite variabili d'ambiente:
- `OMARCHY_INSTALLER_REPO`: Repository per l'installer.
- `OMARCHY_INSTALLER_REF`: Branch o Tag di riferimento.

---

<div align="center">
  <i>Parte dell'ecosistema ITA-OS realizzato da <b><a href="https://labeltune.eu">Labeltune</a></b>.</i>
  <br/>
  Rilasciato sotto licenza <a href="../LICENSE">MIT</a>.
</div>
