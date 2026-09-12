"use client";

import { useEffect, useState } from "react";
import Image from "next/image";
import { Menu, X, Moon, Sun } from "lucide-react";
import { useTheme } from "@/context/ThemeContext";
import { useLanguage } from "@/context/LanguageContext";
import { personalInfo, ui } from "@/lib/data";

const links = [
  { id: "about", label: ui.nav.about },
  { id: "skills", label: ui.nav.skills },
  { id: "projects", label: ui.nav.projects },
  { id: "experience", label: ui.nav.experience },
  { id: "hobbies", label: ui.nav.hobbies },
  { id: "contact", label: ui.nav.contact },
];

export default function Navbar() {
  const { theme, toggleTheme } = useTheme();
  const { lang, toggleLang } = useLanguage();
  const [open, setOpen] = useState(false);
  const [scrolled, setScrolled] = useState(false);

  useEffect(() => {
    const onScroll = () => setScrolled(window.scrollY > 8);
    onScroll();
    window.addEventListener("scroll", onScroll);
    return () => window.removeEventListener("scroll", onScroll);
  }, []);

  return (
    <header
      className={`fixed top-0 z-50 w-full transition-all duration-300 ${
        scrolled ? "backdrop-blur-md border-b border-border" : ""
      }`}
      style={{ background: scrolled ? "var(--c-navbar)" : "transparent" }}
    >
      <nav className="mx-auto flex max-w-6xl items-center justify-between px-6 py-4">
        <a href="#top" className="block h-9 w-9 overflow-hidden rounded-full border border-border">
          <Image
            src="/images/logo.png"
            alt={personalInfo.initials}
            width={36}
            height={36}
            className="h-full w-full object-cover"
          />
        </a>

        <ul className="hidden items-center gap-8 md:flex">
          {links.map((link) => (
            <li key={link.id}>
              <a
                href={`#${link.id}`}
                className="text-sm text-text-2 transition-colors hover:text-accent"
              >
                {link.label[lang]}
              </a>
            </li>
          ))}
        </ul>

        <div className="flex items-center gap-3">
          <button
            onClick={toggleLang}
            aria-label="Toggle language"
            className="rounded-full border border-border px-2.5 py-1 text-xs font-medium text-text-2 transition-colors hover:border-accent hover:text-accent"
          >
            {lang.toUpperCase()}
          </button>
          <button
            onClick={toggleTheme}
            aria-label="Toggle theme"
            className="rounded-full border border-border p-2 text-text-2 transition-colors hover:border-accent hover:text-accent"
          >
            {theme === "light" ? <Moon size={16} /> : <Sun size={16} />}
          </button>
          <button
            onClick={() => setOpen((o) => !o)}
            aria-label="Toggle menu"
            className="rounded-full border border-border p-2 text-text-2 md:hidden"
          >
            {open ? <X size={16} /> : <Menu size={16} />}
          </button>
        </div>
      </nav>

      {open && (
        <ul
          className="flex flex-col gap-1 border-t border-border px-6 py-4 md:hidden"
          style={{ background: "var(--c-navbar)" }}
        >
          {links.map((link) => (
            <li key={link.id}>
              <a
                href={`#${link.id}`}
                onClick={() => setOpen(false)}
                className="block py-2 text-sm text-text-2 transition-colors hover:text-accent"
              >
                {link.label[lang]}
              </a>
            </li>
          ))}
        </ul>
      )}
    </header>
  );
}
