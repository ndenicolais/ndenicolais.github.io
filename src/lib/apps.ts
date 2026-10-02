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
  /** Google account data statement shown next to the download button, followed by the privacy URL. */
  googleDataNotice?: string;
  screenshots: { src: string; caption?: string }[];
  downloadUrl: string;
  sourceUrl: string;
  privacyUrl: string;
  contactEmail: string;
  credits: string;
}

const siteUrl = "https://ndenicolais.github.io";
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
  googleDataNotice:
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

export const appUi = {
  back: { it: "Portfolio", en: "Portfolio" } as Localized,
  download: { it: "Scarica l'ultima versione", en: "Download latest release" } as Localized,
  source: { it: "Codice sorgente", en: "Source code" } as Localized,
  features: { it: "Funzioni", en: "Features" } as Localized,
  screenshots: { it: "Schermate", en: "Screenshots" } as Localized,
  platform: { it: "Piattaforma", en: "Platform" } as Localized,
  links: { it: "Link", en: "Links" } as Localized,
  privacy: { it: "Privacy policy", en: "Privacy policy" } as Localized,
  contact: { it: "Contatti", en: "Contact" } as Localized,
  backToApp: (name: string): Localized => ({ it: `Torna a ${name}`, en: `Back to ${name}` }),
};
