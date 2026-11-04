import type { Localized } from "./data";
import type { Lang } from "@/context/LanguageContext";

export interface AppPage {
  slug: string;
  name: string;
  logo: string;
  preview: string;
  icons?: { icon: string; apple: string };
  /** Fixed page language: hides the language toggle and keeps the static HTML in this language. */
  lang?: Lang;
  tagline: Localized;
  description: Localized;
  features: { title: Localized; text: Localized }[];
  platform: Localized;
  /** Data statement shown under the download button, followed by the full privacy URL. */
  privacyNotice?: string;
  screenshots: { src: string; caption?: string }[];
  /** Omitted while the app is not public yet: the page shows "Coming soon on Google Play". A path starting with "/" is a file on this site. */
  downloadUrl?: string;
  /** Replaces the default download button label (e.g. to show the APK version). */
  downloadLabel?: string;
  /** QR code pointing to `downloadUrl`, shown next to the download button. */
  downloadQr?: { src: string; caption: string };
  /** Omitted for private repositories: the page hides the "Source code" button. */
  sourceUrl?: string;
  /** Installation guide shown under the hero; steps and notes accept inline Markdown (**bold**). */
  install?: {
    title: string;
    guides: {
      platform: string;
      /** Small label next to the steps (e.g. "In prova"). */
      badge?: string;
      steps: string[];
      note?: string;
      /** QR code shown under the steps; `href` is where it points. */
      qr?: { src: string; href: string; caption: string };
    }[];
  };
  /** Extra text sections shown after the screenshots, optionally with an illustration. */
  stories?: { title: string; text: string; image?: { src: string; width: number; height: number } }[];
  /** Extra entries of the "Links" card, after the privacy policy. */
  links?: { label: string; href: string }[];
  privacyUrl: string;
  contactEmail: string;
  /** License line under the page; omit it when the code is not public (the site footer covers the rest). */
  credits?: string;
}

/** Strings in the optional fields above are plain text in the page's fixed `lang`. */
export const siteUrl = "https://ndenicolais.github.io";
const contactEmail = "ndn21dev@gmail.com";

export const shoxApp: AppPage = {
  slug: "shox",
  name: "Shox",
  logo: "/images/shox_logo.png",
  preview: "/images/shox/preview.png",
  tagline: {
    it: "Il tuo guardaroba di scarpe digitale",
    en: "Your digital shoe wardrobe",
  },
  description: {
    it: "Shox è il tuo guardaroba di scarpe digitale: fotografa ogni paio, annota marca, taglia, colori e stagione e trova subito quello che cerchi. Il nome unisce “Shoes” e “Box”, la scatola che contiene tutta la tua collezione.",
    en: "Shox is your digital shoe wardrobe: photograph every pair, note brand, size, colors and season, and find what you are looking for right away. The name blends “Shoes” and “Box”, the box that holds your whole collection.",
  },
  features: [
    {
      title: { it: "Cataloga", en: "Catalog" },
      text: {
        it: "Foto con rimozione dello sfondo, marca, taglia, categoria, colori e note.",
        en: "Photos with background removal, brand, size, category, colors and notes.",
      },
    },
    {
      title: { it: "Trova", en: "Find" },
      text: {
        it: "Ricerca, filtri rapidi per categoria e preferiti.",
        en: "Search, quick category filters and favorites.",
      },
    },
    {
      title: { it: "Analizza", en: "Analyze" },
      text: {
        it: "Statistiche della collezione ed esportazione in PDF.",
        en: "Collection statistics and PDF export.",
      },
    },
    {
      title: { it: "Conserva", en: "Keep" },
      text: {
        it: "Backup e ripristino della collezione in JSON.",
        en: "Back up and restore your collection as JSON.",
      },
    },
  ],
  platform: {
    it: "Android 7.0+ (64-bit), con Google Play services. Accesso con Google o email.",
    en: "Android 7.0+ (64-bit), with Google Play services. Sign in with Google or email.",
  },
  screenshots: ["home", "details", "form", "database", "dashboard"].map((name) => ({
    src: `/images/shox/${name}.png`,
  })),
  downloadUrl: "https://github.com/ndenicolais/Shox/releases/latest",
  sourceUrl: "https://github.com/ndenicolais/Shox",
  privacyUrl: `${siteUrl}/shox/privacy/`,
  contactEmail,
  credits: "© 2026 Nicola De Nicolais — MIT License",
};

export const qrationApp: AppPage = {
  slug: "qration",
  name: "QRation",
  logo: "/images/qration_logo.png",
  preview: "/images/qration/preview.png",
  icons: { icon: "/images/qration/favicon_32.png", apple: "/images/qration/icon_192.png" },
  lang: "en",
  tagline: {
    it: "Scansiona, crea e conserva ogni codice QR",
    en: "Scan, create and keep every QR code",
  },
  description: {
    it: "QRation è uno scanner e generatore di codici QR e codici a barre per Android. Scansiona i codici con la fotocamera o da un'immagine, crea codici QR personalizzati per 12 tipi standard e 10 social network, tieni tutto sincronizzato nel cloud ed esportalo in PDF, Excel o CSV, in italiano e inglese, con tema chiaro e scuro.",
    en: "QRation is a QR code and barcode scanner and creator for Android. Scan codes with the camera or from an image, create custom QR codes for 12 standard types and 10 social networks, keep everything synced in the cloud and export it to PDF, Excel or CSV — in Italian and English, with light and dark themes.",
  },
  features: [
    {
      title: { it: "Scansiona", en: "Scan" },
      text: {
        it: "Fotocamera o immagine dalla galleria, codici QR e codici a barre, con bip e vibrazione.",
        en: "Camera or gallery image, QR codes and barcodes, with beep and vibration.",
      },
    },
    {
      title: { it: "Crea", en: "Create" },
      text: {
        it: "12 tipi standard e 10 social network, con colori, forme e logo personalizzati.",
        en: "12 standard types and 10 social networks, with custom colors, shapes and logo.",
      },
    },
    {
      title: { it: "Organizza", en: "Organize" },
      text: {
        it: "Cronologia con ricerca e filtri, preferiti e statistiche.",
        en: "History with search and filters, favorites and statistics.",
      },
    },
    {
      title: { it: "Conserva", en: "Keep" },
      text: {
        it: "Sincronizzazione cloud, esportazione PDF/Excel/CSV e backup JSON.",
        en: "Cloud sync, PDF/Excel/CSV export and JSON backup.",
      },
    },
  ],
  platform: {
    it: "Android 7.0+ (64-bit, arm64), con Google Play services. Accesso con Google o email. Distribuita come APK su GitHub Releases, non sul Play Store.",
    en: "Android 7.0+ (64-bit, arm64), with Google Play services. Sign in with Google or email. Distributed as an APK on GitHub Releases, not on the Play Store.",
  },
  privacyNotice:
    "When you sign in with Google, QRation receives your Google account name, email address and profile photo. They are used only to sign you in and to sync your codes across sessions; they are never shared, sold or used for advertising. See the full privacy policy:",
  screenshots: [
    { src: "/images/qration/home.png", caption: "Create" },
    { src: "/images/qration/create.png", caption: "QR editor" },
    { src: "/images/qration/details.png", caption: "Code details" },
    { src: "/images/qration/settings.png", caption: "Settings" },
    { src: "/images/qration/database.png", caption: "Database" },
  ],
  downloadUrl: "https://github.com/ndenicolais/QRation/releases/latest",
  sourceUrl: "https://github.com/ndenicolais/QRation",
  privacyUrl: `${siteUrl}/qration/privacy/`,
  contactEmail,
  credits: "© 2026 Nicola De Nicolais — Source-available, non-commercial license",
};

export const fivelinkApp: AppPage = {
  slug: "fivelink",
  name: "Fivelink",
  logo: "/images/fivelink_logo.png",
  preview: "/images/fivelink/preview.png",
  icons: { icon: "/images/fivelink/favicon_32.png", apple: "/images/fivelink/icon_192.png" },
  lang: "en",
  tagline: {
    it: "Un rompicapo numerico al giorno per Android",
    en: "A daily number puzzle for Android",
  },
  description: {
    it: "Ogni giorno ricevi un numero di partenza, un obiettivo e 5 tessere operazione. Mettile nell'ordine giusto per trasformare la partenza nell'obiettivo: hai 6 tentativi, e ognuno mostra tutti i valori intermedi, fino al risultato o al punto in cui la catena si spezza. Un rompicapo nuovo ogni giorno a mezzanotte, uguale per tutti, interamente offline.",
    en: "Every day you get a start number, a target and 5 operation tiles. Put the tiles in the right order to turn the start number into the target: you have 6 attempts, and each one shows every intermediate value, up to the result or the step where the chain breaks. A new puzzle every day at midnight, the same for everyone, entirely offline.",
  },
  features: [
    {
      title: { it: "Rompicapo del giorno", en: "Daily puzzle" },
      text: {
        it: "Un rompicapo nuovo ogni giorno a mezzanotte, uguale per tutti, con una sola soluzione.",
        en: "A new puzzle every day at midnight, the same for everyone, with exactly one solution.",
      },
    },
    {
      title: { it: "Catena di indizi", en: "Chain of clues" },
      text: {
        it: "Ogni tentativo mostra tutti i valori intermedi, così puoi ragionare fino all'ordine giusto.",
        en: "Every attempt reveals each intermediate value, so you can reason your way to the right order.",
      },
    },
    {
      title: { it: "Statistiche e condivisione", en: "Stats and sharing" },
      text: {
        it: "Serie di vittorie, distribuzione dei tentativi e un risultato da condividere senza spoiler.",
        en: "Win streaks, attempt distribution and a spoiler-free result to share.",
      },
    },
    {
      title: { it: "Privata e offline", en: "Private and offline" },
      text: {
        it: "Nessun account, nessuna pubblicità, nessuna analisi, nessun permesso: i tuoi progressi restano sul telefono.",
        en: "No account, no ads, no analytics, no permissions: your progress stays on your phone.",
      },
    },
  ],
  platform: {
    it: "Android 7.0+ (arm64, ARMv7, x86_64). Nessun account, nessuna connessione Internet necessaria. Tema chiaro e scuro, italiano e inglese. Distribuita su Google Play.",
    en: "Android 7.0+ (arm64, ARMv7, x86_64). No account, no internet connection needed. Light and dark theme, English and Italian. Distributed on Google Play.",
  },
  privacyNotice:
    "Fivelink collects no personal data: no account, no ads, no analytics and no permissions. Your games, statistics and settings stay on your device. See the full privacy policy:",
  screenshots: [
    { src: "/images/fivelink/game.png", caption: "Game" },
    { src: "/images/fivelink/win.png", caption: "Solved" },
    { src: "/images/fivelink/help.png", caption: "How to play" },
    { src: "/images/fivelink/stats.png", caption: "Statistics" },
    { src: "/images/fivelink/settings.png", caption: "Settings" },
  ],
  // Closed testing: set to https://play.google.com/store/apps/details?id=com.ndn21.fivelink once published.
  sourceUrl: "https://github.com/ndenicolais/Fivelink",
  privacyUrl: `${siteUrl}/fivelink/privacy/`,
  contactEmail,
  credits: "© 2026 Nicola De Nicolais — All rights reserved. Source-available, non-commercial license.",
};

export const noteepApp: AppPage = {
  slug: "noteep",
  name: "Noteep",
  logo: "/images/noteep_logo.png",
  preview: "/images/noteep/preview.png",
  icons: { icon: "/images/noteep/favicon_32.png", apple: "/images/noteep/icon_192.png" },
  lang: "en",
  tagline: {
    it: "Note, attività e promemoria in un unico posto",
    en: "Notes, tasks and reminders in one place",
  },
  description: {
    it: "Noteep raccoglie note, liste di controllo, attività ed eventi del calendario, sincronizzati sul tuo account e disponibili su ogni dispositivo. Aggiunge promemoria, etichette, note vocali, widget per la schermata Home, backup ed esportazione in PDF, in italiano e in inglese, con tema chiaro e scuro.",
    en: "Noteep brings together notes, checklists, tasks and calendar events, synced to your account and available on every device. It adds reminders, labels, voice notes, Home screen widgets, backups and export to PDF, in Italian and English, with a light and a dark theme.",
  },
  features: [
    {
      title: { it: "Note", en: "Notes" },
      text: {
        it: "Testo formattato, liste di controllo e note vocali.",
        en: "Formatted text, checklists and voice notes.",
      },
    },
    {
      title: { it: "Attività e calendario", en: "Tasks and calendar" },
      text: {
        it: "Pianifica attività ed eventi giorno per giorno.",
        en: "Plan your to-dos and events day by day.",
      },
    },
    {
      title: { it: "Promemoria", en: "Reminders" },
      text: {
        it: "Notifiche puntuali e un widget per la schermata Home.",
        en: "Timely notifications and a Home screen widget.",
      },
    },
    {
      title: { it: "Sincronizzazione e backup", en: "Sync and backup" },
      text: {
        it: "Dati sul tuo account, backup ed esportazione in PDF, TXT, JSON, CSV e HTML.",
        en: "Data on your account, backups and export to PDF, TXT, JSON, CSV and HTML.",
      },
    },
  ],
  platform: {
    it: "Android 7.0+ (64-bit, arm64), con Google Play services e una connessione Internet per accesso e sincronizzazione. Accesso con un account Google o con email e password. Distribuita come APK su GitHub Releases, non sul Play Store.",
    en: "Android 7.0+ (64-bit, arm64), with Google Play services and an internet connection for sign-in and sync. Sign in with a Google account or with email and password. Distributed as an APK on GitHub Releases, not on the Play Store.",
  },
  privacyNotice:
    "When you sign in with Google, Noteep receives your Google account name, email address and profile photo. They are used only to sign you in and to keep your notes, tasks and events synced to your account; they are never shared, sold or used for advertising. See the full privacy policy:",
  screenshots: [
    { src: "/images/noteep/home.png", caption: "Home" },
    { src: "/images/noteep/editor.png", caption: "Note editor" },
    { src: "/images/noteep/tasks.png", caption: "Tasks" },
    { src: "/images/noteep/calendar.png", caption: "Calendar" },
    { src: "/images/noteep/stats.png", caption: "Statistics" },
  ],
  downloadUrl: "https://github.com/ndenicolais/Noteep/releases/latest",
  sourceUrl: "https://github.com/ndenicolais/Noteep",
  privacyUrl: `${siteUrl}/noteep/privacy/`,
  contactEmail,
  credits: "© 2026 Nicola De Nicolais — Source-available, non-commercial license (all rights reserved; see LICENSE in the repo).",
};

export const pawerApp: AppPage = {
  slug: "pawer",
  name: "Pawer",
  logo: "/images/pawer_logo.png",
  preview: "/images/pawer/preview.png",
  icons: { icon: "/images/pawer/favicon_32.png", apple: "/images/pawer/icon_192.png" },
  // Pawer exists only in Italian, so its homepage is Italian-only.
  lang: "it",
  tagline: {
    it: "Ogni zampa merita un futuro migliore",
    en: "Every paw deserves a better future",
  },
  description: {
    it: "Pawer aiuta a segnalare cani e gatti randagi o in difficoltà, così da farli soccorrere e adottare. Chi ne incontra uno può segnalarlo in pochi passaggi, con foto, descrizione e posizione: la segnalazione compare sulla mappa e chiunque lo riveda può aggiungere un avvistamento, così da seguirne gli spostamenti. Accanto alle segnalazioni trovi i rifugi e i numeri utili della tua regione, per sapere subito a chi rivolgerti.",
    en: "Pawer helps report stray or distressed dogs and cats so they can be rescued and adopted. Anyone who meets one can report it in a few steps, with photos, a description and the location: the report appears on the map and anyone who sees the animal again can add a sighting to follow its movements. Next to the reports you find the shelters and useful numbers of your region, so you know right away who to contact.",
  },
  features: [
    {
      title: { it: "Segnala un animale", en: "Report an animal" },
      text: {
        it: "Foto, colori, condizioni e posizione in pochi passaggi.",
        en: "Photos, colors, condition and location in a few steps.",
      },
    },
    {
      title: { it: "Mappa", en: "Map" },
      text: {
        it: "Le segnalazioni aperte e la navigazione fino al punto.",
        en: "Open reports and directions to the spot.",
      },
    },
    {
      title: { it: "Avvistamenti", en: "Sightings" },
      text: {
        it: "La cronologia delle posizioni, aggiornata da tutta la community.",
        en: "The location history, updated by the whole community.",
      },
    },
    {
      title: { it: "Strutture", en: "Shelters" },
      text: {
        it: "Rifugi e numeri utili per regione, con chiamata diretta.",
        en: "Shelters and useful numbers by region, with direct calling.",
      },
    },
  ],
  platform: {
    it: "Android 7.0 o successivo (64 bit, arm64). Accesso con account Google oppure email e password. Distribuita come APK da questa pagina, non sul Play Store. Disponibile anche come web app su https://pawerapp.web.app, installabile su iPhone (iOS 16.4 o successivo) da Safari.",
    en: "Android 7.0 or later (64-bit, arm64). Sign in with a Google account or with email and password. Distributed as an APK from this page, not on the Play Store. Also available as a web app at https://pawerapp.web.app, installable on iPhone (iOS 16.4 or later) from Safari.",
  },
  privacyNotice:
    "Se accedi con Google, Pawer riceve il nome, l'indirizzo email e la foto del profilo del tuo account Google. L'email serve solo per l'accesso e non è visibile agli altri utenti, a meno che tu non attivi Impostazioni → Privacy → Mostra la mia email. Il nome viene mostrato agli altri utenti come autore delle tue segnalazioni. La foto non viene usata né mostrata. Questi dati non vengono mai venduti, ceduti a terzi o usati per pubblicità. Informativa privacy completa:",
  screenshots: [
    { src: "/images/pawer/home.png", caption: "Home" },
    { src: "/images/pawer/reports.png", caption: "Segnalazioni" },
    { src: "/images/pawer/details.png", caption: "Dettaglio segnalazione" },
    { src: "/images/pawer/new_report.png", caption: "Nuova segnalazione" },
    { src: "/images/pawer/shelters.png", caption: "Strutture" },
  ],
  // Fixed file name without version: links and printed QR codes stay valid across updates.
  // Relative so it also works on the dev server; the page shows (and the QR encodes) the full URL.
  downloadUrl: "/pawer/Pawer.apk",
  downloadLabel: "Scarica l'APK · v1.0.0",
  downloadQr: {
    src: "/images/pawer/qr_apk.svg",
    caption: "Inquadra il QR code con il telefono per scaricare l'APK.",
  },
  install: {
    title: "Come installarla",
    guides: [
      {
        platform: "Android",
        steps: [
          "Scarica l'APK sul telefono e aprilo.",
          "Se il telefono lo chiede, consenti **\"Installa app sconosciute\"** per l'app da cui lo stai aprendo (browser, WhatsApp, File…).",
          "Tocca **Installa**, poi apri Pawer e registrati con la tua email o con Google.",
        ],
        note: "Durante l'installazione Android potrebbe avvisarti che l'app non è sicura: lo segnala per tutte le app installate fuori dal Play Store, dove Pawer per ora non c'è. Pawer usa solo i dati descritti nell'informativa privacy. Fotocamera, posizione e notifiche vengono chieste solo quando servono.",
      },
      {
        platform: "iPhone",
        badge: "In prova",
        steps: [
          "Apri [pawerapp.web.app](https://pawerapp.web.app) con Safari, o inquadra il QR code qui sotto.",
          "Tocca **Condividi** → **Aggiungi alla schermata Home**.",
          "Apri Pawer dall'icona come una normale app.",
        ],
        note: "Funziona anche dal browser del computer, allo stesso indirizzo.",
        qr: { src: "/images/pawer/qr_webapp.svg", href: "https://pawerapp.web.app", caption: "Apri Pawer sul web" },
      },
    ],
  },
  stories: [
    {
      title: "In memoria di Orsetto",
      text: "Pawer è nata per Orsetto, un pelosetto marrone e bianco trovato per strada. Era la bontà e la purezza fatte cane, di una fedeltà immensa fin dal primo momento. Anche se per poco, ha reso migliore la vita di tutta la sua famiglia. Questa app è il modo di ricambiare tutto quello che ha dato: aiutare altri cani e gatti come lui a trovare qualcuno che si prenda cura di loro.",
      image: { src: "/images/pawer/orsetto.png", width: 540, height: 600 },
    },
  ],
  links: [
    { label: "Sito web", href: "https://pawerapp.web.app" },
    { label: "Scheda app", href: "/pawer/scheda/Pawer_scheda.pdf" },
  ],
  // No sourceUrl: the app repository is private.
  privacyUrl: `${siteUrl}/pawer/privacy/`,
  contactEmail,
  // No credits: the code is private, the site footer's "Tutti i diritti riservati" is enough.
};

export const appUi = {
  back: { it: "Portfolio", en: "Portfolio" } as Localized,
  download: { it: "Scarica l'ultima versione", en: "Download latest release" } as Localized,
  comingSoon: { it: "Presto su Google Play", en: "Coming soon on Google Play" } as Localized,
  source: { it: "Codice sorgente", en: "Source code" } as Localized,
  features: { it: "Funzioni", en: "Features" } as Localized,
  screenshots: { it: "Schermate", en: "Screenshots" } as Localized,
  platform: { it: "Piattaforma", en: "Platform" } as Localized,
  links: { it: "Link", en: "Links" } as Localized,
  privacy: { it: "Informativa privacy", en: "Privacy policy" } as Localized,
  contact: { it: "Contatti", en: "Contact" } as Localized,
  backToApp: (name: string): Localized => ({ it: `Torna a ${name}`, en: `Back to ${name}` }),
};
