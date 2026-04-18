# ITA-OS (Sistema Operativo Italia)
> Un'infrastruttura sicura, sovrana e moderna per la Pubblica Amministrazione Italiana.

**ITA-OS** è un sistema operativo Linux pensato per le esigenze degli enti governativi, delle scuole e della PA. 
Progettato per garantire la **Sovranità Digitale** senza rinunciare ai vantaggi di un ecosistema open source globale, adotta un'architettura all'avanguardia basata su un modello "Overlay".

---

## 🏛️ L'Architettura "Overlay"

A differenza della maggior parte delle distribuzioni governative (che si basano su "fork" completi, costosi e lenti da aggiornare), **ITA-OS non duplica il codice sorgente dell'intero sistema operativo.**

L'architettura è composta da due livelli separati:
1.  **Livello Core (L'Upstream):** Il cuore del sistema è delegato a progetti open source consolidati a livello globale (come Arch Linux o layer intermedi di build come Omarchy). Questo garantisce che il sistema riceva patch di sicurezza costanti e zero-day senza alcun costo di mantenimento per lo Stato.
2.  **Livello Sovrano (Questo Repository):** Il livello di valore aggiunto. Questo repository contiene esclusivamente i pacchetti governativi certificati, le configurazioni di sicurezza e l'identità visiva della PA italiana.

Questo disaccoppiamento garantisce che il sistema sia **estremamente scalabile**, **immediatamente aggiornabile** e **facilmente revisionabile** (auditing).

---

## 📂 Struttura del Progetto

Il repository è diviso in tre componenti modulari principali:

- **`/packages`**
  Contiene le ricette di compilazione (`PKGBUILD`) per il software specifico della Pubblica Amministrazione.
  *(es. Middleware CIE per Smart Card, Font Istituzionali Titillium Web, branding di sistema).*
  
- **`/configs`**
  Contiene i profili di sistema e le configurazioni "Zero-Touch". Gestisce l'estetica e l'usabilità, inclusi profili grafici ottimizzati per favorire un passaggio indolore da altri OS commerciali (es. profili "Windows-like" e interfacce accessibili).

- **`/builder`**
  Contiene le configurazioni e gli script per agganciare il Livello Core e generare automaticamente la ISO (immagine di installazione) pronta per l'uso, applicando i pacchetti e i profili definiti sopra.

---

## 🔄 Gestione degli Aggiornamenti

Il grande vantaggio dell'architettura Overlay si nota nella gestione del ciclo di vita del software:

1.  **Nessuna rottura ("No Breakage"):** Quando l'upstream rilascia un nuovo kernel o un aggiornamento vitale, ITA-OS lo eredita passivamente. Non dovendo mantenere il kernel internamente, le nuove versioni vengono testate tramite CI/CD.
2.  **Staging Automatizzato:** I nostri script di build catturano l'ultimo aggiornamento upstream e creano una ISO di *Staging*. Qui vengono eseguiti i test di compatibilità per i software critici (come i driver di firma digitale).
3.  **Sicurezza Garantita:** Se i test passano, la ISO viene sigillata crittograficamente ed etichettata per la produzione in totale trasparenza. Se un aggiornamento upstream causa instabilità (es. problemi al middleware CIE), il problema viene isolato nei `PKGBUILD` di `. /packages` e patchato internamente senza esporre la rete governativa ad attacchi.

---

## 🚀 Come Costruire la ISO

Per generare ITA-OS dall'ambiente di sviluppo, segui questi passaggi:

1. Entra nella cartella dei pacchetti e compila i software essenziali della PA (saranno salvati in un repository locale):
   ```bash
   cd packages
   ./scripts/build-all-packages.sh
   cd ..
   ```

2. Avvia la build della ISO (tramite i file di `. /builder` integrati con le logiche di upstream):
   *(Istruzioni di build complete dipendono dal runner in uso)*

---

***Questo progetto dimostra come il settore pubblico possa adottare pratiche di DevSecOps moderne, garantendo massima resilienza e controllo assoluto sull'ambiente di lavoro governativo.***
