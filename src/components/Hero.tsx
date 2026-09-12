"use client";

import { motion } from "framer-motion";
import { ArrowDown } from "lucide-react";
import { GithubIcon, LinkedinIcon } from "./BrandIcons";
import ParticleField from "./ParticleField";
import { useLanguage } from "@/context/LanguageContext";
import { personalInfo, ui } from "@/lib/data";

export default function Hero() {
  const { lang } = useLanguage();

  return (
    <section id="top" className="relative flex min-h-screen items-center overflow-hidden">
      <ParticleField />
      <div className="pointer-events-none absolute inset-0 bg-gradient-to-b from-transparent via-transparent to-bg" />

      <div className="relative z-10 mx-auto w-full max-w-6xl px-6">
        <motion.p
          initial={{ opacity: 0, y: 12 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ duration: 0.6 }}
          className="mb-4 font-mono text-sm tracking-wide text-accent"
        >
          {personalInfo.location}
        </motion.p>

        <motion.h1
          initial={{ opacity: 0, y: 20 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ duration: 0.7, delay: 0.1 }}
          className="text-4xl font-bold tracking-tight text-heading sm:text-6xl"
        >
          {personalInfo.name}
        </motion.h1>

        <motion.h2
          initial={{ opacity: 0, y: 20 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ duration: 0.7, delay: 0.2 }}
          className="mt-3 text-xl font-medium text-accent sm:text-2xl"
        >
          {personalInfo.role[lang]}
        </motion.h2>

        <motion.p
          initial={{ opacity: 0, y: 20 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ duration: 0.7, delay: 0.3 }}
          className="mt-6 max-w-xl text-base text-text-2 sm:text-lg"
        >
          {personalInfo.tagline[lang]}
        </motion.p>

        <motion.div
          initial={{ opacity: 0, y: 20 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ duration: 0.7, delay: 0.4 }}
          className="mt-10 flex flex-wrap items-center gap-4"
        >
          <a
            href="#contact"
            className="rounded-full bg-accent px-6 py-3 text-sm font-semibold text-on-accent transition-transform hover:scale-105"
          >
            {ui.hero.contactCta[lang]}
          </a>
          <div className="flex items-center gap-3">
            <a
              href={personalInfo.github}
              target="_blank"
              rel="noreferrer"
              aria-label="GitHub"
              className="rounded-full border border-border p-3 text-text-2 transition-colors hover:border-accent hover:text-accent"
            >
              <GithubIcon size={18} />
            </a>
            <a
              href={personalInfo.linkedin}
              target="_blank"
              rel="noreferrer"
              aria-label="LinkedIn"
              className="rounded-full border border-border p-3 text-text-2 transition-colors hover:border-accent hover:text-accent"
            >
              <LinkedinIcon size={18} />
            </a>
          </div>
        </motion.div>
      </div>

      <motion.a
        href="#about"
        aria-label={ui.hero.cta[lang]}
        initial={{ opacity: 0 }}
        animate={{ opacity: 1, y: [0, 8, 0] }}
        transition={{ opacity: { delay: 0.8, duration: 0.6 }, y: { repeat: Infinity, duration: 1.8 } }}
        className="absolute bottom-8 left-1/2 z-10 -translate-x-1/2 text-text-3"
      >
        <ArrowDown size={20} />
      </motion.a>
    </section>
  );
}
