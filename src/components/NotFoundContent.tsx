"use client";

import Link from "next/link";
import { Home } from "lucide-react";
import { useLanguage } from "@/context/LanguageContext";
import { ui } from "@/lib/data";

export default function NotFoundContent() {
  const { lang } = useLanguage();

  return (
    <main className="mx-auto flex w-full max-w-6xl flex-1 flex-col items-center justify-center px-6 py-24 text-center">
      <p className="text-7xl font-bold tracking-tight text-accent sm:text-8xl">404</p>
      <h1 className="mt-6 text-3xl font-bold tracking-tight text-heading sm:text-4xl">{ui.notFound.title[lang]}</h1>
      <p className="mt-4 max-w-md leading-relaxed text-text-2">{ui.notFound.description[lang]}</p>
      <Link
        href="/"
        className="mt-10 flex items-center gap-2 rounded-full bg-accent px-6 py-3 text-sm font-semibold text-on-accent transition-transform hover:scale-105"
      >
        <Home size={16} /> {ui.notFound.home[lang]}
      </Link>
    </main>
  );
}
