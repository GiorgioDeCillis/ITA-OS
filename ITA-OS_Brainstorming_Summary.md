# ITA-OS: Visione e Brainstorming (Aprile 2026)

Questo documento riassume i concetti emersi durante la sessione di brainstorming per la creazione di **ITA-OS**, un sistema operativo sovrano per lo Stato Italiano basato su **Omarchy**.

## 1. Visione Generale
Creare una distribuzione Linux "opinata", sicura e facile da usare, pensata specificamente per le esigenze della Pubblica Amministrazione e dei cittadini italiani. Il sistema parte dalla base tecnica di Omarchy (Arch Linux + Hyprland) ma la estende per coprire un pubblico non tecnico.

## 2. Target Audience
*   **Personale Amministrativo Comune**: Il target primario. Utenti che necessitano di interfacce familiari (Windows/Mac) e strumenti pronti all'uso.
*   **Sviluppatori e IT PA**: Utenti avanzati che possono beneficiare dell'interfaccia originale di Omarchy (Hyprland).

## 3. Gestione del Progetto e Aggiornamenti
*   **Modello Downstream**: ITA-OS mantiene un fork di Omarchy. Gli aggiornamenti upstream vengono filtrati e testati prima di essere rilasciati.
*   **ITA-Repository**: Creazione di un repository di pacchetti nazionale per garantire stabilità e sicurezza, evitando rotture tipiche delle distribuzioni "rolling release".
*   **Testing Rigoroso**: Pipeline CI/CD che genera ISO di test e verifica automaticamente il funzionamento di driver critici (CIE, Firma Digitale).

## 4. Esperienza Utente (UX/UI)
Il sistema offrirà tre modalità grafiche switchabili facilmente:
1.  **Profilo "Standard" (Win-like)**: Basato su KDE Plasma. Familiarità totale per chi viene da Windows.
2.  **Profilo "Creativo" (Mac-like)**: Basato su KDE Plasma. Layout con dock e global menu.
3.  **Profilo "Avanzato" (Hyprland)**: Il layout originale di Omarchy per la massima produttività da tastiera.

## 5. Caratteristiche "Sovrane" (Kit PA)
*   **Integrazione CIE/CNS**: Driver e software di gestione pre-installati e testati.
*   **Firma Digitale Nativa**: Integrazione nel file manager per firmare documenti con un click.
*   **Font Istituzionali**: Utilizzo dei font approvati per le linee guida di design della PA (es. Titillium Web).
*   **Modelli LibreOffice**: Template pre-caricati per la modulistica ufficiale.

## 6. Il Posizionamento per il Bando (CTE Roma)
ITA-OS non è solo un OS, è un **Edge-AI Client**. Permette alla PA di processare dati sensibili localmente usando modelli AI (LLM/Vision) senza inviare nulla al cloud, garantendo la conformità con l'AI Act e il GDPR.
