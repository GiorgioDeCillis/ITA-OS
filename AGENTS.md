# 🤖 ITA-OS Agentic Handover (AGENTS.md)

Questo documento funge da **punto d'ingresso e contesto tecnico primario** per qualsiasi LLM o agente AI incaricato di lavorare sulla codebase di ITA-OS. 
Prima di apportare modifiche all'architettura o scrivere codice, l'agente DEVE analizzare questo documento.

---

## 🎯 Meta-Obiettivi del Progetto

1.  **Sovranità Digitale Governativa:** Il sistema deve aderire ai protocolli di sicurezza standard italiani (Zero-Trust, integrazione Smart Card CIE/TS-CNS, crittografia avanzata).
2.  **Architettura a "Overlay":** Non stiamo mantenendo un fork di un intero OS. ITA-OS viaggia al di sopra dell'upstream *Omarchy/Arch Linux*. Qualsiasi modifica al sistema deve essere contenuta e non deve mai causare conflitti ("breakage") irrisolvibili durante l'update globale ("pacman -Syu").
3.  **Produttività Istituzionale:** L'esperienza utente (UI/UX) deve facilitare la migrazione dalle soluzioni proprietarie. L'OS deve apparire familiare (profili simil-Windows o macOS) e garantire l'uso immediato della suite da ufficio e degli applicativi certificati.

---

## 🗺️ Mappa del Workspace

L'agente deve operare sapendo che il repository si suddivide nei seguenti componenti chiave (spesso mappati in sottomoduli Git o directory virtuali isolate):

*   **`configs/`**: Contiene la logica estetica e i behavior. Fork locale e personalizzato di `basecamp/omarchy`. Include profili specifici (es. KDE Plasma configurato per emulare l'esperienza utente Windows per gli impiegati).
*   **`builder/`**: Motore della generazione della ISO in formato Live/Installabile. È la derivazione tecnica di `omacom-io/omarchy-iso`. Da qui parte la logica di chrooting e la sigillatura crittografica.
*   **`packages/`**: Il *Local Repository* contenente esclusivamente le ricette `PKGBUILD` per i software "made in Italy" (Middleware CIE, Fonts Istituzionali, Script AI).

---

## 🛠️ Regole Operative per l'IA

Quando ti viene richiesto di implementare una nuova feature o fixare un bug su ITA-OS, prega di obbedire strettamente a queste regole:

1.  **Isolamento delle Dipendenze:** Se necessiti di un nuovo software non presente in Arch Linux o su AUR (o che necessita di patch di sicurezza governative), devi scriverne un `PKGBUILD` e inserirlo in `packages/src/`.
2.  **Niente Modifiche Volatili:** Non scrivere script bash che modificano arbitrariamente il root system (`/etc/`, `/usr/`) "al volo". Usa l'architettura *pacman hook* o i file overlay in `configs/` in modo deterministico così che tutto finisca correttamente nella ISO generata.
3.  **Astrazione della UI:** Se sviluppi componenti frontend per lo switch dei profili (es. "Passa a interfaccia minimal Hyprland"), assicurati che interagiscano usando bash-scripting robusto ed espongano i corretti `.desktop` entry in `ita-os-profile-switch`.

---

## 📋 Action Items (Status Attuale)

L'agente in esecuzione dovrebbe prendere visone delle seguenti attività prioritarie del prodotto Alpha:

*   [ ] **Integrazione Middleware CIE:** Aggiunta librerie middleware in `packages/src/cie-middleware/PKGBUILD` in modo che il login tramite carta d'identità elettronica supporti systemd-homed.
*   [ ] **Branding:** Completare il setup grafico dei boot splash e sfondi in `ita-os-branding`.
*   [ ] **Profile Switcher:** Completare lo script per il cambio "a caldo" di ambiente desktop, salvataggio preferenze in `~/.config/ita-os/`.
*   [ ] **Certificazione Repository:** Impostare le firme GPG locali per il builder, garantendo che i pacchetti siano sicuri e marcati coma `[ita-os-core]`.

---
*Fine Istruzioni. L'agente è autorizzato all'ingaggio della base di codice.*
