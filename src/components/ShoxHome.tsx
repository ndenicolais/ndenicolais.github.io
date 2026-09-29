"use client";

import Image from "next/image";
import { Download, Mail, ShieldCheck, Smartphone } from "lucide-react";
import { GithubIcon } from "./BrandIcons";
import { useLanguage } from "@/context/LanguageContext";
import { shoxApp, shoxUi } from "@/lib/shox";

export default function ShoxHome() {
  const { lang } = useLanguage();

  return (
    <main className="mx-auto w-full max-w-6xl flex-1 px-6 py-16">
      <section className="grid items-center gap-12 lg:grid-cols-2">
        <div>
          <Image
            src={shoxApp.logo}
            alt={`${shoxApp.name} logo`}
            width={96}
            height={96}
            priority
            className="h-24 w-24 rounded-2xl border border-border bg-card object-contain p-3"
          />
          <h1 className="mt-6 text-4xl font-bold tracking-tight text-heading sm:text-5xl">{shoxApp.name}</h1>
          <p className="mt-3 text-xl font-medium text-accent">{shoxApp.tagline[lang]}</p>
          <p className="mt-6 max-w-xl leading-relaxed text-text-2">{shoxApp.description[lang]}</p>

          <div className="mt-8 flex flex-wrap items-center gap-4">
            <a
              href={shoxApp.downloadUrl}
              target="_blank"
              rel="noreferrer"
              className="flex items-center gap-2 rounded-full bg-accent px-6 py-3 text-sm font-semibold text-on-accent transition-transform hover:scale-105"
            >
              <Download size={16} /> {shoxUi.download[lang]}
            </a>
            <a
              href={shoxApp.sourceUrl}
              target="_blank"
              rel="noreferrer"
              className="flex items-center gap-2 rounded-full border border-border px-6 py-3 text-sm font-semibold text-text-2 transition-colors hover:border-accent hover:text-accent"
            >
              <GithubIcon size={16} /> {shoxUi.source[lang]}
            </a>
          </div>
        </div>

        <div className="relative aspect-video overflow-hidden rounded-2xl border border-border bg-surface">
          <Image src={shoxApp.preview} alt={`${shoxApp.name} preview`} fill priority className="object-cover" />
        </div>
      </section>

      <section className="mt-24">
        <h2 className="text-2xl font-bold tracking-tight text-heading sm:text-3xl">{shoxUi.features[lang]}</h2>
        <div className="mt-4 h-px w-16 bg-accent" />
        <div className="mt-8 grid gap-6 sm:grid-cols-2 lg:grid-cols-4">
          {shoxApp.features.map((feature) => (
            <div key={feature.title.en} className="rounded-2xl border border-border bg-card p-6">
              <h3 className="text-lg font-semibold text-heading">{feature.title[lang]}</h3>
              <p className="mt-2 text-sm leading-relaxed text-text-2">{feature.text[lang]}</p>
            </div>
          ))}
        </div>
      </section>

      <section className="mt-24">
        <h2 className="text-2xl font-bold tracking-tight text-heading sm:text-3xl">{shoxUi.screenshots[lang]}</h2>
        <div className="mt-4 h-px w-16 bg-accent" />
        <div className="mt-8 flex snap-x gap-4 overflow-x-auto pb-4">
          {shoxApp.screenshots.map((src) => (
            <Image
              key={src}
              src={src}
              alt={`${shoxApp.name} screenshot`}
              width={540}
              height={1107}
              className="h-auto w-48 shrink-0 snap-start rounded-2xl border border-border sm:w-56"
            />
          ))}
        </div>
      </section>

      <section className="mt-24 grid gap-6 sm:grid-cols-2">
        <div className="rounded-2xl border border-border bg-card p-6">
          <h2 className="flex items-center gap-2 text-lg font-semibold text-heading">
            <Smartphone size={18} className="text-accent" /> {shoxUi.platform[lang]}
          </h2>
          <p className="mt-2 text-sm leading-relaxed text-text-2">{shoxApp.platform[lang]}</p>
        </div>
        <div className="rounded-2xl border border-border bg-card p-6">
          <h2 className="text-lg font-semibold text-heading">{shoxUi.links[lang]}</h2>
          <ul className="mt-3 space-y-2 text-sm">
            <li>
              <a href={shoxApp.privacyPath} className="flex items-center gap-2 text-text-2 hover:text-accent">
                <ShieldCheck size={15} /> {shoxUi.privacy[lang]}
              </a>
            </li>
            <li>
              <a
                href={`mailto:${shoxApp.contactEmail}`}
                className="flex items-center gap-2 text-text-2 hover:text-accent"
              >
                <Mail size={15} /> {shoxUi.contact[lang]}: {shoxApp.contactEmail}
              </a>
            </li>
          </ul>
        </div>
      </section>

      <p className="mt-16 text-center text-sm text-text-3">{shoxApp.credits}</p>
    </main>
  );
}
