"use client";

import { createContext, useContext, useEffect, useState, ReactNode } from "react";

export type Lang = "it" | "en";

// Only explicit choices are stored; the previous "lang" key was written on every visit.
const storageKey = "lang-choice";

interface LanguageContextValue {
  lang: Lang;
  toggleLang: () => void;
}

const LanguageContext = createContext<LanguageContextValue | undefined>(undefined);

export function LanguageProvider({ children }: { children: ReactNode }) {
  const [lang, setLang] = useState<Lang>("en");

  useEffect(() => {
    const stored = localStorage.getItem(storageKey);
    if (stored === "it" || stored === "en") {
      // Hydration must start from the server-safe default, then restore the persisted language.
      // eslint-disable-next-line react-hooks/set-state-in-effect
      setLang(stored);
    }
  }, []);

  const toggleLang = () => {
    const next = lang === "it" ? "en" : "it";
    setLang(next);
    localStorage.setItem(storageKey, next);
  };

  return (
    <LanguageContext.Provider value={{ lang, toggleLang }}>
      {children}
    </LanguageContext.Provider>
  );
}

export function useLanguage() {
  const ctx = useContext(LanguageContext);
  if (!ctx) throw new Error("useLanguage must be used within LanguageProvider");
  return ctx;
}
