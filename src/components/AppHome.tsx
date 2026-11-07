"use client";

import Image from "next/image";
import { Clock, Download, Link2, Mail, ShieldCheck, Smartphone } from "lucide-react";
import { GithubIcon } from "./BrandIcons";
import { InlineContent } from "./MarkdownContent";
import { usePageLang } from "@/context/LanguageContext";
import { appUi, siteUrl, type AppPage } from "@/lib/apps";
import { parseInline } from "@/lib/markdown";

export default function AppHome({ app }: { app: AppPage }) {
  const lang = usePageLang(app.lang);
  // Files hosted on this site (e.g. an APK) download in place; store and release pages open in a new tab.
  const externalDownload = app.downloadUrl ? !app.downloadUrl.startsWith("/") : false;
  const downloadFullUrl = app.downloadUrl?.startsWith("/") ? `${siteUrl}${app.downloadUrl}` : app.downloadUrl;

  return (
    <main lang={lang} className="mx-auto w-full max-w-6xl flex-1 px-6 py-16">
      <section className="grid items-center gap-12 lg:grid-cols-2">
        <div>
          <Image
            src={app.logo}
            alt={`${app.name} logo`}
            width={96}
            height={96}
            priority
            className="h-24 w-24 rounded-2xl border border-border bg-card object-contain p-3"
          />
          <h1 className="mt-6 text-4xl font-bold tracking-tight text-heading sm:text-5xl">{app.name}</h1>
          <p className="mt-3 text-xl font-medium text-accent">{app.tagline[lang]}</p>
          <p className="mt-6 max-w-xl leading-relaxed text-text-2">{app.description[lang]}</p>

          <div className="mt-8 flex flex-wrap items-center gap-4">
            {app.downloadUrl ? (
              <a
                href={app.downloadUrl}
                {...(externalDownload && { target: "_blank", rel: "noreferrer" })}
                className="flex items-center gap-2 rounded-full bg-accent px-6 py-3 text-sm font-semibold text-on-accent transition-transform hover:scale-105"
              >
                <Download size={16} /> {app.downloadLabel?.[lang] ?? appUi.download[lang]}
              </a>
            ) : (
              <span className="flex items-center gap-2 rounded-full border border-dashed border-accent px-6 py-3 text-sm font-semibold text-accent">
                <Clock size={16} /> {appUi.comingSoon[lang]}
              </span>
            )}
            {app.sourceUrl && (
              <a
                href={app.sourceUrl}
                target="_blank"
                rel="noreferrer"
                className="flex items-center gap-2 rounded-full border border-border px-6 py-3 text-sm font-semibold text-text-2 transition-colors hover:border-accent hover:text-accent"
              >
                <GithubIcon size={16} /> {appUi.source[lang]}
              </a>
            )}
          </div>

          {app.downloadUrl && app.downloadQr && (
            <div className="mt-6 flex max-w-xl items-center gap-4 rounded-2xl border border-border bg-card p-4">
              {/* Light, padded backdrop keeps the dark modules scannable in dark mode too. */}
              <a href={app.downloadUrl} className="shrink-0 rounded-xl bg-[#FFF9F3] p-2.5">
                <Image
                  src={app.downloadQr.src}
                  alt={`QR code: ${downloadFullUrl}`}
                  width={112}
                  height={112}
                  className="h-28 w-28"
                />
              </a>
              <p className="text-sm leading-relaxed text-text-2">
                {app.downloadQr.caption[lang]}
                <span className="mt-1 block break-all text-text-3">{downloadFullUrl}</span>
              </p>
            </div>
          )}

          {app.privacyNotice && (
            <p className="mt-6 flex max-w-xl gap-3 rounded-2xl border border-border bg-card p-4 text-sm leading-relaxed text-text-2">
              <ShieldCheck size={18} className="mt-0.5 shrink-0 text-accent" />
              <span>
                {app.privacyNotice[lang]}{" "}
                <a href={app.privacyUrl} className="break-all text-accent underline-offset-4 hover:underline">
                  {app.privacyUrl}
                </a>
              </span>
            </p>
          )}
        </div>

        <div className="relative aspect-video overflow-hidden rounded-2xl border border-border bg-surface">
          <Image src={app.preview} alt={`${app.name} preview`} fill priority className="object-cover" />
        </div>
      </section>

      {app.install && (
        <section className="mt-24">
          <h2 className="text-2xl font-bold tracking-tight text-heading sm:text-3xl">{app.install.title[lang]}</h2>
          <div className="mt-4 h-px w-16 bg-accent" />
          <div className="mt-8 grid gap-6 lg:grid-cols-2">
            {app.install.guides.map((guide) => (
              <div key={guide.platform} className="rounded-2xl border border-border bg-card p-6">
                <h3 className="flex items-center gap-2 text-lg font-semibold text-heading">
                  <Smartphone size={18} className="text-accent" /> {guide.platform}
                  {guide.badge && (
                    <span className="rounded-full border border-accent px-2.5 py-0.5 text-xs font-semibold uppercase tracking-wide text-accent">
                      {guide.badge[lang]}
                    </span>
                  )}
                </h3>
                {guide.steps[lang].length > 1 ? (
                  <ol className="mt-3 list-decimal space-y-2 pl-5 text-sm leading-relaxed text-text-2 marker:text-accent">
                    {guide.steps[lang].map((step) => (
                      <li key={step}>
                        <InlineContent content={parseInline(step)} />
                      </li>
                    ))}
                  </ol>
                ) : (
                  <p className="mt-3 text-sm leading-relaxed text-text-2">
                    <InlineContent content={parseInline(guide.steps[lang][0])} />
                  </p>
                )}
                {guide.note && (
                  <p className="mt-4 rounded-xl border border-border p-3 text-sm leading-relaxed text-text-3">
                    <InlineContent content={parseInline(guide.note[lang])} />
                  </p>
                )}
                {guide.qr && (
                  <a href={guide.qr.href} className="mt-4 flex w-fit items-center gap-4 text-sm text-text-2 hover:text-accent">
                    <span className="shrink-0 rounded-xl bg-[#FFF9F3] p-2.5">
                      <Image src={guide.qr.src} alt={`QR code: ${guide.qr.href}`} width={96} height={96} className="h-24 w-24" />
                    </span>
                    {guide.qr.caption[lang]}
                  </a>
                )}
              </div>
            ))}
          </div>
        </section>
      )}

      <section className="mt-24">
        <h2 className="text-2xl font-bold tracking-tight text-heading sm:text-3xl">{appUi.features[lang]}</h2>
        <div className="mt-4 h-px w-16 bg-accent" />
        <div className="mt-8 grid gap-6 sm:grid-cols-2 lg:grid-cols-4">
          {app.features.map((feature) => (
            <div key={feature.title.en} className="rounded-2xl border border-border bg-card p-6">
              <h3 className="text-lg font-semibold text-heading">{feature.title[lang]}</h3>
              <p className="mt-2 text-sm leading-relaxed text-text-2">{feature.text[lang]}</p>
            </div>
          ))}
        </div>
      </section>

      <section className="mt-24">
        <h2 className="text-2xl font-bold tracking-tight text-heading sm:text-3xl">{appUi.screenshots[lang]}</h2>
        <div className="mt-4 h-px w-16 bg-accent" />
        <div className="mt-8 flex snap-x gap-4 overflow-x-auto pb-4">
          {app.screenshots.map(({ src, caption: captions }) => {
            const caption = captions?.[lang];
            return (
            <figure key={src} className="w-48 shrink-0 snap-start sm:w-56">
              <Image
                src={src}
                alt={`${app.name} screenshot${caption ? `: ${caption}` : ""}`}
                width={540}
                height={1107}
                className="h-auto w-full rounded-2xl border border-border"
              />
              {caption && <figcaption className="mt-2 text-center text-sm text-text-3">{caption}</figcaption>}
            </figure>
            );
          })}
        </div>
      </section>

      {app.stories && (
        <section className={`mt-24 grid gap-6 ${app.stories.length > 1 ? "lg:grid-cols-2" : ""}`}>
          {app.stories.map((story) => (
            <article
              key={story.title.en}
              className="flex flex-col gap-6 rounded-2xl border border-border bg-card p-6 sm:flex-row sm:items-center"
            >
              <div className="flex-1">
                <h2 className="text-xl font-bold tracking-tight text-heading">{story.title[lang]}</h2>
                <div className="mt-3 h-px w-12 bg-accent" />
                <p className="mt-4 text-sm leading-relaxed text-text-2">{story.text[lang]}</p>
              </div>
              {story.image && (
                <Image
                  src={story.image.src}
                  alt={story.title[lang]}
                  width={story.image.width}
                  height={story.image.height}
                  className="mx-auto h-auto w-36 shrink-0 sm:w-40"
                />
              )}
            </article>
          ))}
        </section>
      )}

      <section className="mt-24 grid gap-6 sm:grid-cols-2">
        <div className="rounded-2xl border border-border bg-card p-6">
          <h2 className="flex items-center gap-2 text-lg font-semibold text-heading">
            <Smartphone size={18} className="text-accent" /> {appUi.platform[lang]}
          </h2>
          <p className="mt-2 text-sm leading-relaxed text-text-2">{app.platform[lang]}</p>
        </div>
        <div className="rounded-2xl border border-border bg-card p-6">
          <h2 className="text-lg font-semibold text-heading">{appUi.links[lang]}</h2>
          <ul className="mt-3 space-y-2 text-sm">
            <li>
              <a href={`/${app.slug}/privacy/`} className="flex items-center gap-2 text-text-2 hover:text-accent">
                <ShieldCheck size={15} /> {appUi.privacy[lang]}
              </a>
            </li>
            {app.links?.map((link) => (
              <li key={link.href}>
                <a href={link.href} className="flex items-center gap-2 text-text-2 hover:text-accent">
                  <Link2 size={15} /> {link.label[lang]}
                </a>
              </li>
            ))}
            <li>
              <a
                href={`mailto:${app.contactEmail}`}
                className="flex items-center gap-2 text-text-2 hover:text-accent"
              >
                <Mail size={15} /> {appUi.contact[lang]}: {app.contactEmail}
              </a>
            </li>
          </ul>
        </div>
      </section>

      {app.credits && <p className="mt-16 text-center text-sm text-text-3">{app.credits[lang]}</p>}
    </main>
  );
}
