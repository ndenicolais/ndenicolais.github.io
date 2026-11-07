"use client";

import { createContext, useContext, useEffect, useState, ReactNode } from "react";

export type Lang = "it" | "en";

// Only explicit choices are stored; the previous "lang" key was written on every visit.
const storageKey = "lang-choice";
const defaultLang: Lang = "en";

interface LanguageContextValue {
  /** Site language: the visitor's choice, or the site default. */
  lang: Lang;
  /** The visitor's explicit choice, null until they use the toggle. */
  choice: Lang | null;
  setLang: (lang: Lang) => void;
  toggleLang: () => void;
}

const LanguageContext = createContext<LanguageContextValue | undefined>(undefined);

export function LanguageProvider({ children }: { children: ReactNode }) {
  const [choice, setChoice] = useState<Lang | null>(null);
  const lang = choice ?? defaultLang;

  useEffect(() => {
    const stored = localStorage.getItem(storageKey);
    if (stored === "it" || stored === "en") {
      // Hydration must start from the server-safe default, then restore the persisted language.
      // eslint-disable-next-line react-hooks/set-state-in-effect
      setChoice(stored);
    }
  }, []);

  // The static HTML is exported with lang="en"; keep the document language in sync with the chosen text.
  // The chosen language is now on screen, so the page hidden by the boot script in layout.tsx can show.
  useEffect(() => {
    if (!choice) return;
    document.documentElement.lang = choice;
    document.documentElement.setAttribute("data-lang-ready", "");
  }, [choice]);

  const setLang = (next: Lang) => {
    setChoice(next);
    localStorage.setItem(storageKey, next);
  };

  const toggleLang = () => setLang(lang === "it" ? "en" : "it");

  return (
    <LanguageContext.Provider value={{ lang, choice, setLang, toggleLang }}>
      {children}
    </LanguageContext.Provider>
  );
}

export function useLanguage() {
  const ctx = useContext(LanguageContext);
  if (!ctx) throw new Error("useLanguage must be used within LanguageProvider");
  return ctx;
}

/**
 * Language of a page whose static HTML is in `pageDefault` (e.g. an app homepage that crawlers must
 * read in one language): it renders in that language until the visitor has chosen one.
 */
export function usePageLang(pageDefault?: Lang): Lang {
  const { lang, choice } = useLanguage();
  return choice ?? pageDefault ?? lang;
}
