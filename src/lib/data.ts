import { fivelinkApp, noteepApp, qrationApp, shoxApp } from "./apps";

export interface Localized<T = string> {
  it: T;
  en: T;
}

/** Plain strings are language-neutral (names, technologies); objects carry a translation. */
export type MaybeLocalized = string | Localized;

export const localize = (value: MaybeLocalized, lang: keyof Localized): string =>
  typeof value === "string" ? value : value[lang];

export const personalInfo = {
  name: "Nicola De Nicolais",
  initials: "NDN",
  role: {
    it: "Sviluppatore Frontend & Mobile",
    en: "Frontend & Mobile Developer",
  } as Localized,
  tagline: {
    it: "Sviluppo app mobile cross-platform con Flutter & Dart, app Android native con Kotlin e applicazioni web con React e Next.js.",
    en: "I build cross-platform mobile apps with Flutter & Dart, native Android with Kotlin, and web apps with React and Next.js.",
  } as Localized,
  location: "Marcianise, Italia",
  bio: {
    it: "Sviluppatore **Frontend & Mobile**: realizzo app web e mobile in **Flutter** e applicazioni web con **React**, **Vite** e **Tailwind CSS**, curando interfacce responsive e accessibili, architetture a componenti e integrazione di **API REST**. Ho iniziato il mio percorso nel mondo **blockchain**, lavorando con **React.js**, **React Router** e tecnologie **PWA**. Successivamente mi sono dedicato allo sviluppo Android con **Kotlin**, layout **XML** e **Jetpack Compose**, fino ad approdare a **Flutter & Dart**. Ho sviluppato app web e mobile per gestionali aziendali basati su **microservizi** e ho maturato anche esperienza lato backend con **PHP** e **Laravel**, che mi permette di dialogare in modo efficace con i team server-side.",
    en: "**Frontend & Mobile** developer: I build web and mobile apps with **Flutter** and web applications with **React**, **Vite** and **Tailwind CSS**, focusing on responsive, accessible interfaces, component-based architectures and **REST API** integration. I started my journey in the **blockchain** world, working with **React.js**, **React Router** and **PWA** technologies. I then moved on to Android development with **Kotlin**, **XML** layouts and **Jetpack Compose**, eventually landing on **Flutter & Dart**. I have built web and mobile apps for business management platforms based on **microservices**, and I have also gained backend experience with **PHP** and **Laravel**, which lets me work effectively with server-side teams.",
  } as Localized,
  email: "n.denicolais@outlook.it",
  github: "https://github.com/ndenicolais",
  linkedin: "https://it.linkedin.com/in/nicoladenicolais",
  cvUrl: "/Nicola_De_Nicolais_CV.pdf" as string | undefined,
};

export const stats: { value: string; label: Localized }[] = [
  { value: "4+", label: { it: "Anni di esperienza", en: "Years of Experience" } },
  { value: "28+", label: { it: "Progetti Open Source", en: "Open Source Projects" } },
  { value: "29+", label: { it: "Tecnologie", en: "Technologies" } },
  { value: "2", label: { it: "Aziende", en: "Companies" } },
];

export type ProjectCategory = "flutter" | "kotlin" | "react";

export interface Project {
  slug: string;
  title: string;
  description: Localized;
  tech: string[];
  category: ProjectCategory;
  githubUrl?: string;
  demoUrl?: string;
  pageUrl?: string;
  image?: string;
  images?: string[];
  logo?: string;
  comingSoon?: boolean;
  wip?: boolean;
}

export const projectFilters: { key: "all" | ProjectCategory; label: Localized }[] = [
  { key: "all", label: { it: "Tutti", en: "All" } },
  { key: "flutter", label: { it: "Flutter", en: "Flutter" } },
  { key: "react", label: { it: "React", en: "React" } },
  { key: "kotlin", label: { it: "Kotlin", en: "Kotlin" } },
];

export const projects: Project[] = [
  {
    slug: "noteep",
    title: "Noteep",
    description: {
      it: "Note, liste di controllo, attività ed eventi del calendario sincronizzati sul tuo account, con promemoria, note vocali, widget e backup.",
      en: "Notes, checklists, tasks and calendar events synced to your account, with reminders, voice notes, widgets and backups.",
    },
    tech: ["Flutter", "Dart", "Firebase", "Figma"],
    category: "flutter",
    githubUrl: "https://github.com/ndenicolais/Noteep",
    pageUrl: "/noteep/",
    image: noteepApp.preview,
    logo: "/images/noteep_logo.png",
  },
  {
    slug: "fivelink",
    title: "Fivelink",
    description: {
      it: "Un rompicapo numerico al giorno: metti in ordine 5 tessere operazione per trasformare il numero di partenza nell'obiettivo, in 6 tentativi. Interamente offline.",
      en: "A daily number puzzle: order 5 operation tiles to turn the start number into the target, in 6 attempts. Entirely offline.",
    },
    tech: ["Flutter", "Dart", "Shared Preferences", "Figma"],
    category: "flutter",
    githubUrl: "https://github.com/ndenicolais/Fivelink",
    pageUrl: "/fivelink/",
    image: fivelinkApp.preview,
    logo: "/images/fivelink_logo.png",
  },
  {
    slug: "qration",
    title: "QRation",
    description: {
      it: "Uno scanner e creatore di QR code. Scansiona codici a barre, copia il contenuto e condividilo con altre applicazioni.",
      en: "A QR code scanner & creator. Scan barcodes, copy the content and share it with other applications.",
    },
    tech: ["Flutter", "Dart", "Mobile Scanner", "Figma"],
    category: "flutter",
    githubUrl: "https://github.com/ndenicolais/QRation",
    pageUrl: "/qration/",
    image: qrationApp.preview,
    logo: "/images/qration_logo.png",
  },
  {
    slug: "shox",
    title: "Shox",
    description: {
      it: "Un'app guardaroba per scarpe per catalogare, organizzare e tracciare la tua collezione di calzature con un'interfaccia pulita e intuitiva.",
      en: "A shoes wardrobe app to catalog, organize and track your footwear collection with a clean and intuitive interface.",
    },
    tech: ["Flutter", "Dart", "Firebase", "Figma"],
    category: "flutter",
    githubUrl: "https://github.com/ndenicolais/Shox",
    pageUrl: "/shox/",
    image: shoxApp.preview,
    logo: "/images/shox_logo.png",
  },
  {
    slug: "my-portfolio",
    title: "My Portfolio",
    description: {
      it: "Il mio portfolio personale, realizzato con Next.js e Tailwind CSS. Bilingue, con tema chiaro/scuro, progetti filtrabili e sezioni animate.",
      en: "My personal portfolio, built with Next.js and Tailwind CSS. Bilingual, with light/dark theme, filterable projects and animated sections.",
    },
    tech: ["Next.js", "React", "TypeScript", "Tailwind CSS"],
    category: "react",
    githubUrl: "https://github.com/ndenicolais/ndenicolais.github.io",
    demoUrl: "https://ndenicolais.github.io/",
    image: "/images/myportfolio_preview.png",
    logo: "/images/logo.png",
  },
  {
    slug: "scannercode",
    title: "ScannerCode",
    description: {
      it: "Un'app Android per scansionare QR code e codici a barre. Permette di copiare il contenuto del codice o condividerlo con altre applicazioni.",
      en: "An Android app to scan QR codes and barcodes. Lets you copy the code's content or share it with other applications.",
    },
    tech: ["Kotlin", "Jetpack Compose"],
    category: "kotlin",
    githubUrl: "https://github.com/ndenicolais/ScannerCode",
  },
  {
    slug: "speechandtext",
    title: "SpeechAndText",
    description: {
      it: "Un'app Android che mostra come utilizzare le funzioni Speech-to-Text e Text-to-Speech.",
      en: "An Android app that shows how to use the Speech-to-Text and Text-to-Speech functions.",
    },
    tech: ["Kotlin", "Jetpack Compose"],
    category: "kotlin",
    githubUrl: "https://github.com/ndenicolais/SpeechAndText",
  },
  {
    slug: "recorder",
    title: "Recorder",
    description: {
      it: "Un'app Android che permette di registrare la voce in ingresso e salvarla in file .mp3.",
      en: "An Android app that records the input voice and saves it as .mp3 files.",
    },
    tech: ["Kotlin", "Jetpack Compose"],
    category: "kotlin",
    githubUrl: "https://github.com/ndenicolais/Recorder",
  },
  {
    slug: "coming-soon-react",
    title: "",
    description: { it: "", en: "" },
    tech: [],
    category: "react",
    comingSoon: true,
    wip: true,
  },
];

export interface SkillCategory {
  name: Localized;
  skills: string[];
}

export const skillCategories: SkillCategory[] = [
  { name: { it: "Mobile", en: "Mobile" }, skills: ["Flutter", "Dart", "Kotlin", "Jetpack Compose"] },
  {
    name: { it: "Frontend", en: "Frontend" },
    skills: ["Next.js", "React.js", "TypeScript", "JavaScript", "HTML", "CSS", "Tailwind CSS", "Vite.js"],
  },
  {
    name: { it: "Backend & Database", en: "Backend & Database" },
    skills: ["PHP", "Laravel", "Node.js", "RabbitMQ", "Firebase", "Supabase", "MongoDB", "MySQL"],
  },
  {
    name: { it: "Tools & Design", en: "Tools & Design" },
    skills: ["VS Code", "Android Studio", "Figma", "Canva", "Notion", "Git", "GitHub", "GitHub Actions", "Docker"],
  },
];

export interface Experience {
  role: Localized;
  company: MaybeLocalized;
  location: MaybeLocalized;
  period: string;
  description: Localized;
  highlights?: Localized<string[]>;
  tags: MaybeLocalized[];
}

export const experiences: Experience[] = [
  {
    role: { it: "Software Developer", en: "Software Developer" },
    company: "Giga Servizi Srl",
    location: "Villa di Briano (Caserta)",
    period: "03/2025 — 09/2026",
    description: {
      it: "Ho lavorato nel dipartimento IT alla realizzazione di applicazioni mobile e web per piattaforme gestionali aziendali, con focus su interfacce Flutter e React e integrazione con architetture a microservizi.",
      en: "I worked in the IT department building mobile and web applications for business management platforms, focusing on Flutter and React interfaces and integration with microservice architectures.",
    },
    highlights: {
      it: [
        "Sviluppo in Flutter dell'app web e mobile (Android, iOS) di un gestionale a microservizi per associazioni di categoria ed enti bilaterali.",
        "Realizzazione di una libreria di componenti condivisi, restyling completo con temi dinamici per dominio e Frontend Builder per schermate generate da configurazione JSON (UI server-driven).",
        "Integrazione dei moduli con i microservizi tramite API REST, autenticazione JWT con refresh token, notifiche push Firebase e localizzazione IT/EN.",
        "Sviluppo di un gestionale per cantieri edili in React, Vite, Tailwind CSS e shadcn/ui, con diagrammi di Gantt, calcolo costi per WBS e import di computi metrici da Excel e PDF.",
        "Contributo al backend: progettazione e sviluppo di un microservizio Laravel per la generazione di documenti PDF da template, con messaggistica RabbitMQ e verifica tramite QR code.",
        "Pipeline CI/CD con GitHub Actions (build web e APK, deploy multi-ambiente) e ambiente di sviluppo con Docker.",
      ],
      en: [
        "Developed in Flutter the web and mobile app (Android, iOS) of a microservice-based management platform for trade associations and bilateral bodies.",
        "Built a shared component library, a full redesign with per-domain dynamic themes and a Frontend Builder for screens generated from JSON configuration (server-driven UI).",
        "Integrated the modules with the microservices through REST APIs, JWT authentication with refresh tokens, Firebase push notifications and IT/EN localization.",
        "Developed a construction site management app in React, Vite, Tailwind CSS and shadcn/ui, with Gantt charts, WBS cost calculation and bill-of-quantities import from Excel and PDF.",
        "Backend contribution: designed and built a Laravel microservice that generates PDF documents from templates, with RabbitMQ messaging and QR code verification.",
        "CI/CD pipelines with GitHub Actions (web and APK builds, multi-environment deployments) and a Docker-based development environment.",
      ],
    },
    tags: ["Flutter", "Dart", "Laravel", "PHP", "React", "RabbitMQ", "Docker", "GitHub Actions"],
  },
  {
    role: { it: "Flutter Developer", en: "Flutter Developer" },
    company: "Freelance",
    location: { it: "Da remoto", en: "Remote" },
    period: "12/2023 — 03/2025",
    description: {
      it: "Mi sono dedicato allo sviluppo di app mobile in autonomia per consolidare le competenze in Flutter, seguendo ogni progetto dall'idea al rilascio: design, sviluppo, backend e pubblicazione.",
      en: "I focused on building mobile apps independently to strengthen my Flutter skills, taking each project from idea to release: design, development, backend and publishing.",
    },
    highlights: {
      it: [
        "Progettazione e sviluppo di Shox, un guardaroba digitale per catalogare la propria collezione di scarpe con foto, marca, taglia, colori e stagione, ricerca e filtri per categoria.",
        "Integrazione con Firebase per autenticazione (Google ed email) e salvataggio dei dati su cloud, con statistiche della collezione, export in PDF e backup e ripristino in JSON.",
        "Design delle interfacce in Figma e rilascio delle versioni tramite GitHub Releases.",
        "Pianificazione di QRation e Noteep, definendone funzionalità e design prima dello sviluppo, avviato nel 2025.",
        "Sviluppo di un'app privata per coppie per raccogliere i momenti della propria storia in una timeline condivisa, con eventi visualizzabili in lista, calendario e mappa, calcolo del tempo insieme e promemoria di anniversari: dati su Firestore, immagini su Supabase Storage, tema chiaro/scuro, localizzazione IT/EN ed export/import in JSON.",
      ],
      en: [
        "Designed and built Shox, a digital wardrobe to catalog a shoe collection with photos, brand, size, colors and season, search and category filters.",
        "Integrated Firebase for authentication (Google and email) and cloud data storage, with collection statistics, PDF export and JSON backup and restore.",
        "Designed the interfaces in Figma and shipped versions through GitHub Releases.",
        "Planned QRation and Noteep, defining their features and design before development started in 2025.",
        "Built a private app for couples to collect the moments of their story in a shared timeline, with events shown as a list, calendar and map, time-together tracking and anniversary reminders: data on Firestore, images on Supabase Storage, light/dark theme, IT/EN localization and JSON export/import.",
      ],
    },
    tags: ["Flutter", "Dart", "Firebase", "Supabase", "Figma", "GitHub"],
  },
  {
    role: { it: "Ricercatore & Software Engineer", en: "Researcher & Software Engineer" },
    company: "Arethusa Srl",
    location: "Casoria (Napoli)",
    period: "03/2022 — 12/2023",
    description: {
      it: "Ho lavorato nel dipartimento Ricerca, Sviluppo & Innovazione su tre progetti finanziati dalla Regione Campania e dal MISE (DIGGERly, CADS e ReASSET), sviluppando app mobile per il rilievo digitale di asset immobiliari e soluzioni basate su blockchain.",
      en: "I worked in the Research, Development & Innovation department on three projects financed by the Campania Region and MISE (DIGGERly, CADS and ReASSET), building mobile apps for the digital survey of real estate assets and blockchain-based solutions.",
    },
    highlights: {
      it: [
        "Sviluppo dell'app Android DIGGERly per il rilievo digitale di asset edili e impiantistici (censimento, anagrafica tecnica, stato di fatto): dal prototipo con layout XML alla riscrittura in Jetpack Compose fino alla versione 1, con test sul campo in rilievi reali, e avvio del porting in Flutter.",
        "Funzioni di acquisizione sul campo: foto e video con dati GPS, note vocali, Speech-to-Text, struttura gerarchica del sopralluogo (Rilievo, Edificio, Area, Asset) con operazioni CRUD, report ed export dei dati.",
        "Integrazione dei sensori del dispositivo (bussola, luxmetro, fonometro, accelerometro, misure AR) e ricerca su smart glasses Epson Moverio e termocamere FLIR come strumenti di acquisizione.",
        "Sviluppo di DIGENS per il progetto CADS, versione dell'app dedicata al censimento sismico degli elementi non strutturali.",
        "Backend in Node.js e TypeScript: API server con Express e server cloud con MongoDB per la gestione dei dati delle app, oltre allo studio delle PWA con Vite, Workbox e React.",
        "ReASSET: sviluppo di smart contract su Hyperledger Fabric in TypeScript, server Express e MQTT, modellazione di processi di manutenzione su openMAINT (XPDL) e demo con Oracle Blockchain Platform per la verifica intermedia del progetto.",
      ],
      en: [
        "Developed the DIGGERly Android app for the digital survey of building and plant assets (inventory, technical registry, as-is condition): from the XML layout prototype to a Jetpack Compose rewrite up to version 1, with field tests in real surveys, and started its Flutter port.",
        "Field capture features: photos and videos with GPS data, voice notes, Speech-to-Text, a hierarchical survey structure (Survey, Building, Area, Asset) with CRUD operations, reports and data export.",
        "Integrated the device sensors (compass, light meter, sound level meter, accelerometer, AR measurements) and researched Epson Moverio smart glasses and FLIR thermal cameras as capture tools.",
        "Developed DIGENS for the CADS project, a version of the app dedicated to the seismic survey of non-structural elements.",
        "Node.js and TypeScript backend: an Express API server and a MongoDB cloud server to manage the apps' data, plus research on PWAs with Vite, Workbox and React.",
        "ReASSET: developed smart contracts on Hyperledger Fabric in TypeScript, Express and MQTT servers, modeled maintenance processes on openMAINT (XPDL) and built demos on Oracle Blockchain Platform for the project's interim review.",
      ],
    },
    tags: ["Kotlin", "Jetpack Compose", "Flutter", "Dart", "Node.js", "TypeScript", "MongoDB", "Hyperledger Fabric"],
  },
  {
    role: { it: "Esperienze lavorative & sviluppo personale", en: "Work experience & self-development" },
    company: { it: "Freelance e altri impieghi", en: "Freelance and other jobs" },
    location: { it: "Campania", en: "Campania" },
    period: "09/2021 — 03/2022",
    description: {
      it: "Dopo la laurea ho svolto diverse esperienze lavorative, anche fuori dal settore IT, affiancandole a lavori freelance di grafica, fino all'ingresso in Arethusa nel 2022.",
      en: "After graduating I took on a range of jobs, including outside the IT sector, alongside freelance graphic design work, until I joined Arethusa in 2022.",
    },
    highlights: {
      it: [
        "Esperienze lavorative fuori dal settore IT, che mi hanno fatto crescere in comunicazione, organizzazione del lavoro e gestione delle scadenze.",
        "Lavori freelance di grafica su commissione, seguiti in autonomia dalla raccolta dei requisiti con il cliente alla consegna finale.",
        "Studio e pratica continui su sviluppo software e design, per consolidare le competenze acquisite durante la laurea in vista del primo ruolo da sviluppatore.",
      ],
      en: [
        "Jobs outside the IT sector that helped me grow in communication, work organization and deadline management.",
        "Freelance graphic design commissions, handled independently from gathering requirements with the client to final delivery.",
        "Ongoing study and practice in software development and design, to strengthen the skills gained during my degree ahead of my first developer role.",
      ],
    },
    tags: [
      "Freelance",
      { it: "Grafica", en: "Graphic Design" },
      { it: "Comunicazione", en: "Communication" },
      { it: "Organizzazione", en: "Organization" },
    ],
  },
];

export interface EducationItem {
  title: Localized;
  place: string;
  period: string;
}

export const education: EducationItem[] = [
  {
    title: { it: "Laurea in Ingegneria Informatica", en: "Computer Engineering Bachelor" },
    place: "Università degli Studi Guglielmo Marconi, Roma",
    period: "2017 — 2021",
  },
  {
    title: { it: "Diploma Scientifico", en: "Scientific Diploma" },
    place: "Liceo Scientifico G. Rummo, Benevento",
    period: "2006 — 2010",
  },
];

export const certifications: { title: string; place: string; year: string }[] = [
  { title: "B2 English Language", place: "Trinity Hall College, Dublin", year: "2008" },
  { title: "B2 English Language", place: "Goldsmiths College, London", year: "2007" },
];

export interface Hobby {
  title: Localized;
  description: Localized;
}

export const hobbies: Hobby[] = [
  {
    title: { it: "Animali", en: "Animals" },
    description: {
      it: "Ho sempre avuto un legame forte con gli animali: la loro compagnia mi rilassa e mi ricorda cosa conta davvero.",
      en: "I've always had a strong bond with animals — their company calms me down and reminds me what really matters.",
    },
  },
  {
    title: { it: "Tecnologia", en: "Technology" },
    description: {
      it: "Appassionato di tech a 360°: dai nuovi linguaggi agli ultimi dispositivi, mi piace capire come funziona tutto.",
      en: "Passionate about tech in every form: from new languages to the latest devices, I love understanding how everything works.",
    },
  },
  {
    title: { it: "Pokémon", en: "Pokémon" },
    description: {
      it: "Fan di Pokémon fin dalla prima generazione. Tra videogame, carte e lore, è una passione che non ho mai abbandonato.",
      en: "A Pokémon fan since the very first generation. Between video games, cards and lore, it's a passion I've never given up.",
    },
  },
];

export const ui = {
  nav: {
    about: { it: "Chi sono", en: "About" },
    skills: { it: "Competenze", en: "Skills" },
    projects: { it: "Progetti", en: "Projects" },
    experience: { it: "Esperienze", en: "Experience" },
    hobbies: { it: "Hobby", en: "Hobbies" },
    contact: { it: "Contatti", en: "Contact" },
  },
  hero: {
    cta: { it: "Scopri di più", en: "Learn more" },
    contactCta: { it: "Contattami", en: "Get in touch" },
  },
  sections: {
    about: { it: "Chi sono", en: "About me" },
    skills: { it: "Competenze", en: "Skills" },
    projects: { it: "Progetti", en: "Projects" },
    experience: { it: "Esperienze", en: "Experience" },
    education: { it: "Formazione", en: "Education" },
    certifications: { it: "Certificazioni", en: "Certifications" },
    hobbies: { it: "Hobby & interessi", en: "Hobbies & interests" },
    contact: { it: "Contatti", en: "Get in touch" },
  },
  projects: {
    viewGithub: { it: "Codice", en: "Code" },
    viewDemo: { it: "Demo", en: "Live demo" },
    viewPage: { it: "Pagina app", en: "App page" },
    comingSoon: { it: "In arrivo", en: "Coming soon" },
    wip: { it: "In corso", en: "In progress" },
  },
  contact: {
    intro: {
      it: "Hai un progetto in mente o vuoi semplicemente scambiare due chiacchiere? Scrivimi.",
      en: "Have a project in mind or just want to say hi? Send me a message.",
    },
    name: { it: "Nome", en: "Name" },
    email: { it: "Email", en: "Email" },
    message: { it: "Messaggio", en: "Message" },
    send: { it: "Invia messaggio", en: "Send message" },
    sending: { it: "Invio in corso…", en: "Sending…" },
    success: { it: "Messaggio inviato! Ti risponderò presto.", en: "Message sent! I'll get back to you soon." },
    error: { it: "Qualcosa è andato storto, riprova.", en: "Something went wrong, please try again." },
  },
  footer: {
    rights: { it: "Tutti i diritti riservati.", en: "All rights reserved." },
    madeWith: { it: "Progettato e sviluppato da", en: "Designed and built by" },
  },
  downloadCv: { it: "Scarica CV", en: "Download CV" },
};
