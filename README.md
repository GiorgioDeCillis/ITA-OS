<div align="center">
  <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Emblem_of_Italy.svg/200px-Emblem_of_Italy.svg.png" alt="Emblema Italia" width="100"/>

  # ITA-OS (Sistema Operativo Italia)
  **Un'infrastruttura sicura, sovrana e moderna per la Pubblica Amministrazione.**

  [![Arch Linux](https://img.shields.io/badge/Arch_Linux-1793D1?style=for-the-badge&logo=arch-linux&logoColor=white)](#)
  [![Linux Kernel](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)](#)
  [![Security](https://img.shields.io/badge/Security-Zero_Trust-D32F2F?style=for-the-badge)](#)
  [![GovTech](https://img.shields.io/badge/GovTech-Digital_Sovereignty-009246?style=for-the-badge)](#)
  [![Status](https://img.shields.io/badge/Status-Alpha_Development-0052cc?style=for-the-badge)](#)
</div>

<br/>

**ITA-OS** è un sistema operativo open-source progettato nativamente per soddisfare i rigorosi standard di conformità, cybersicurezza e usabilità degli enti governativi, delle scuole e della Pubblica Amministrazione italiana. Garantisce la **Sovranità Digitale** ereditando al contempo la robustezza e la rapidità d'aggiornamento di un ecosistema Linux globale.

---

## 🤝 Ringraziamento all'ecosistema Omarchy

> **Acknowledgement Originale:** Questo progetto non sarebbe possibile senza lo straordinario lavoro del team di **[Omarchy](https://github.com/omacom-io/omarchy-iso)**.

ITA-OS non è un banale "fork" della distribuzione, ma si basa strategicamente sul formidabile "*reproducible build system*" e sui layer architetturali creati da Omarchy. 
Avvalendoci di questo solido substrato, ITA-OS si configura come un **Overlay di livello Enterprise**: demandiamo agli strumenti upstream la corretta gestione del core di basso livello (kernel, driver di base), concentrando tutte le nostre risorse sullo sviluppo dell'ecosistema applicativo italiano protetto (Firma Digitale, CIE, interfacce PA), garantendone la massima sicurezza e compatibilità incrociata.

---

## 🏛️ L'Architettura "Overlay"

A differenza delle distribuzioni governative isolate del passato, ITA-OS disaccoppia il "core OS" dalle "personalizzazioni di stato":

1.  **Livello Core (L'Upstream Omarchy/Arch):** Riceve aggiornamenti software globali e patch zero-day alla massima velocità, senza impattare sui costi di manutenzione dello Stato.
2.  **Livello Sovrano (Questo Repository):** Moduli firmati e verificati, specifici per la normativa italiana. I due livelli convergono solo in fase di generazione della ISO tramite script deterministici.

## 📂 Struttura del Repository

Il codice sorgente è organizzato modularmente per garantire massima ispezionabilità:

- **`/packages`**: Ricette di compilazione (`PKGBUILD`) per software custom certificato PA (es. Middleware CIE per Smart Card, SPID, Font _Titillium Web_, Branding nazionale).
- **`/configs`**: Profili di configurazione di sistema e profili utente "Zero-Touch", strutturati per abbattere le frizioni di adozione dei dipendenti pubblici (es. configurazioni UI stile Windows/macOS basate su Plasma).
- **`/builder`**: Motore di generazione che aggancia il codice upstream, vi "inietta" il livello sovrano e compila una ISO crittografata e immediata.

---

## 🔄 Lifecycle e Aggiornamenti ("Zero Breakage")

- Quando Omarchy (o Arch Linux) avanza di versione, il nostro sistema CI/CD lo recepisce generando automagicamente una **ISO in Staging**.
- Avvengono i test del middleware governativo. Se i test passano, la ISO viene promossa in *Produzione*.
- In caso di vulnerabilità o disallineamento dei driver, interveniamo unicamente in `. /packages`, isolando il bug e preservando l'inviolabilità del livello upstream.

## 🚀 Come Costruire la ISO localmente

Ambiente richiesto: SO basato su Arch Linux e utility di isolamento per il chroot.

1. **Pre-Compilazione Pacchetti PA:**
   ```bash
   cd packages
   ./scripts/build-all-packages.sh
   cd ..
   ```
2. **Generazione Immagine (ISO):**
   ```bash
   # Seguire istruzioni del builder upstream personalizzato
   # per generare l'artefact finale `ITA-OS-YYYY.MM.iso`
   ```

---

<div align="center">
  <i>Costruito per l'Italia, alimentato dall'Open Source.</i>
</div>
