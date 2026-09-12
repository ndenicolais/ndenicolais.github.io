"use client";

import { useLanguage } from "@/context/LanguageContext";
import { personalInfo, ui } from "@/lib/data";

export default function Footer() {
  const { lang } = useLanguage();
  const year = new Date().getFullYear();

  return (
    <footer className="border-t border-border px-6 py-8">
      <div className="mx-auto flex max-w-6xl flex-col items-center justify-between gap-2 text-sm text-text-3 sm:flex-row">
        <p>
          © {year} {personalInfo.name}. {ui.footer.rights[lang]}
        </p>
        <p>
          {ui.footer.madeWith[lang]} {personalInfo.name}
        </p>
      </div>
    </footer>
  );
}
