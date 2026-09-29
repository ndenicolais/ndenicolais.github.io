"use client";

import { ArrowLeft, Moon, Sun } from "lucide-react";
import { useTheme } from "@/context/ThemeContext";
import { useLanguage } from "@/context/LanguageContext";
import type { Localized } from "@/lib/data";

interface SubpageHeaderProps {
  backHref: string;
  backLabel: Localized;
  showLang?: boolean;
}

export default function SubpageHeader({ backHref, backLabel, showLang = true }: SubpageHeaderProps) {
  const { theme, toggleTheme } = useTheme();
  const { lang, toggleLang } = useLanguage();

  return (
    <header
      className="sticky top-0 z-50 w-full border-b border-border backdrop-blur-md"
      style={{ background: "var(--c-navbar)" }}
    >
      <nav className="mx-auto flex max-w-6xl items-center justify-between px-6 py-4">
        <a
          href={backHref}
          className="flex items-center gap-2 text-sm text-text-2 transition-colors hover:text-accent"
        >
          <ArrowLeft size={16} /> {backLabel[lang]}
        </a>

        <div className="flex items-center gap-3">
          {showLang && (
            <button
              onClick={toggleLang}
              aria-label="Toggle language"
              className="rounded-full border border-border px-2.5 py-1 text-xs font-medium text-text-2 transition-colors hover:border-accent hover:text-accent"
            >
              {lang.toUpperCase()}
            </button>
          )}
          <button
            onClick={toggleTheme}
            aria-label="Toggle theme"
            className="rounded-full border border-border p-2 text-text-2 transition-colors hover:border-accent hover:text-accent"
          >
            {theme === "light" ? <Moon size={16} /> : <Sun size={16} />}
          </button>
        </div>
      </nav>
    </header>
  );
}
