import type { Localized } from "./data";

export const shoxApp = {
  name: "Shox",
  logo: "/images/shox_logo.png",
  preview: "/images/shox_preview.png",
  tagline: {
    it: "Il tuo guardaroba di scarpe digitale",
    en: "Your digital shoe wardrobe",
  } as Localized,
  description: {
    it: "Shox è il tuo guardaroba di scarpe digitale: fotografa ogni paio, annota marca, taglia, colori e stagione e trova subito quello che cerchi. Il nome unisce “Shoes” e “Box”, la scatola che contiene tutta la tua collezione.",
    en: "Shox is your digital shoe wardrobe: photograph every pair, note brand, size, colors and season, and find what you are looking for right away. The name blends “Shoes” and “Box”, the box that holds your whole collection.",
  } as Localized,
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
  ] as { title: Localized; text: Localized }[],
  platform: {
    it: "Android 7.0+ (64-bit), con Google Play services. Accesso con Google o email.",
    en: "Android 7.0+ (64-bit), with Google Play services. Sign in with Google or email.",
  } as Localized,
  screenshots: ["home", "details", "form", "database", "dashboard"].map(
    (name) => `/images/shox/${name}.png`
  ),
  downloadUrl: "https://github.com/ndenicolais/Shox/releases/latest",
  sourceUrl: "https://github.com/ndenicolais/Shox",
  privacyPath: "/shox/privacy/",
  contactEmail: "ndn21dev@gmail.com",
  credits: "© 2026 Nicola De Nicolais — MIT License",
};

export const shoxUi = {
  back: { it: "Portfolio", en: "Portfolio" } as Localized,
  download: { it: "Scarica l'ultima versione", en: "Download latest release" } as Localized,
  source: { it: "Codice sorgente", en: "Source code" } as Localized,
  features: { it: "Funzioni", en: "Features" } as Localized,
  screenshots: { it: "Schermate", en: "Screenshots" } as Localized,
  platform: { it: "Piattaforma", en: "Platform" } as Localized,
  links: { it: "Link", en: "Links" } as Localized,
  privacy: { it: "Privacy policy", en: "Privacy policy" } as Localized,
  contact: { it: "Contatti", en: "Contact" } as Localized,
  backToApp: { it: "Torna a Shox", en: "Back to Shox" } as Localized,
};
