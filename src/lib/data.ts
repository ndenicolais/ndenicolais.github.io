import { fivelinkApp, qrationApp, shoxApp } from "./apps";

export interface Localized<T = string> {
  it: T;
  en: T;
}

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
  cvUrl: "/cv.pdf" as string | undefined,
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
    slug: "noteep",
    title: "Noteep",
    description: {
      it: "Un notebook digitale di attività. Crea, organizza e gestisci facilmente note e liste di cose da fare.",
      en: "A digital notebook of tasks. Create, organize and manage your notes and to-do lists with ease.",
    },
    tech: ["Flutter", "Dart", "Supabase", "Figma"],
    category: "flutter",
    githubUrl: "https://github.com/ndenicolais/Noteep",
    image: "/images/preview_noteep.webp",
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
  company: string;
  location: string;
  period: string;
  description: Localized;
  highlights?: Localized<string[]>;
  tags: string[];
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
    role: { it: "Ricercatore & Software Engineer", en: "Researcher & Software Engineer" },
    company: "Arethusa Srl",
    location: "Casoria (Napoli)",
    period: "03/2022 — 12/2023",
    description: {
      it: "Ho lavorato nel dipartimento Ricerca, Sviluppo & Innovazione di Arethusa Srl su tre progetti finanziati dalla Regione Campania e dal MISE: ReASSET, DIGGERly e CADS. In DIGGERly e CADS ho sviluppato applicazioni Android utilizzando Kotlin (layout XML e Jetpack Compose) e Flutter. Nel progetto ReASSET mi sono dedicato all'integrazione della tecnologia blockchain, contribuendo a progettare e implementare soluzioni innovative basate su questa architettura.",
      en: "I worked in the Research, Development & Innovation department of Arethusa Srl on three projects financed by the Campania Region and MISE: ReASSET, DIGGERly and CADS. In DIGGERly and CADS I developed Android applications using Kotlin (XML layout and Jetpack Compose) and Flutter. In ReASSET I integrated blockchain technology, helping design and implement innovative solutions based on this architecture.",
    },
    tags: ["Flutter", "Dart", "Kotlin", "Jetpack Compose", "Blockchain", "GitHub"],
  },
  {
    role: { it: "Lavori vari & primi passi nella programmazione", en: "Varied jobs & first steps into coding" },
    company: "Varie",
    location: "Vari",
    period: "2010 — 2017",
    description: {
      it: "In questi anni ho svolto diverse esperienze lavorative, per poi avvicinarmi da autodidatta al mondo della programmazione, gettando le basi per il percorso intrapreso negli anni successivi.",
      en: "During these years I worked in a variety of jobs, before starting to approach programming as a self-taught learner, laying the foundations for the path I would take in the following years.",
    },
    tags: ["Autodidatta", "Grafico"],
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
