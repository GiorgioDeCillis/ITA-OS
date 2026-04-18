# Handover: Progetto OS Sovrano (ITA-OS)

Questo documento istruisce il nuovo agente per la fase tecnica.

## 1. Obiettivo
Repository setup e build della prima ISO Alpha di ITA-OS.

## 2. Workspace
*   `configs/`: Fork di `basecamp/omarchy`.
*   `builder/`: Fork di `omacom-io/omarchy-iso`.
*   `packages/`: Local repo.

## 3. Passi Tecnici
1.  **Git Setup**: Forking e upstream configuration.
2.  **Builder Patch**: Puntare il builder al repository locale/forkato delle configurazioni.
3.  **GUI Logic**: Implementare lo script per lo switch tra KDE (Win/Mac) e Hyprland.
4.  **CIE Integration**: Aggiungere i pacchetti per la Carta d'Identità Elettronica.

## 4. Note Strategiche
Il sistema deve essere presentato come infrastruttura "Zero-Trust" per l'AI della Pubblica Amministrazione.
