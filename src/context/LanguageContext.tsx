"use client";

import { createContext, useContext, useEffect, useState, ReactNode } from "react";

export type Lang = "it" | "en";

interface LanguageContextValue {
  lang: Lang;
  toggleLang: () => void;
}

const LanguageContext = createContext<LanguageContextValue | undefined>(undefined);

export function LanguageProvider({ children }: { children: ReactNode }) {
  const [lang, setLang] = useState<Lang>("it");
  const [mounted, setMounted] = useState(false);

  useEffect(() => {
    const stored = localStorage.getItem("lang") as Lang | null;
    if (stored) {
      // Hydration must start from the server-safe default, then restore the persisted language.
      // eslint-disable-next-line react-hooks/set-state-in-effect
      setLang(stored);
    }
    setMounted(true);
  }, []);

  useEffect(() => {
    if (!mounted) return;
    localStorage.setItem("lang", lang);
  }, [lang, mounted]);

  const toggleLang = () => setLang((l) => (l === "it" ? "en" : "it"));

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
