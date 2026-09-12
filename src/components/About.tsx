"use client";

import Image from "next/image";
import { motion } from "framer-motion";
import SectionTitle from "./SectionTitle";
import { useLanguage } from "@/context/LanguageContext";
import { personalInfo, stats, ui } from "@/lib/data";

function renderBio(text: string) {
  return text.split(/\*\*(.+?)\*\*/g).map((part, i) =>
    i % 2 === 1 ? (
      <strong key={i} className="font-mono font-semibold text-accent">
        {part}
      </strong>
    ) : (
      part
    )
  );
}

export default function About() {
  const { lang } = useLanguage();

  return (
    <section id="about" className="mx-auto max-w-6xl px-6 py-24">
      <SectionTitle eyebrow="01" title={ui.sections.about[lang]} />

      <div className="grid gap-12 md:grid-cols-[220px_1fr] md:items-start">
        <motion.div
          initial={{ opacity: 0, scale: 0.9 }}
          whileInView={{ opacity: 1, scale: 1 }}
          viewport={{ once: true }}
          transition={{ duration: 0.5 }}
          className="mx-auto h-40 w-40 overflow-hidden rounded-2xl border border-border bg-card md:mx-0 md:h-full md:w-full"
        >
          <Image
            src="/images/me.png"
            alt={`Foto di ${personalInfo.name}`}
            width={220}
            height={220}
            className="h-full w-full object-cover"
          />
        </motion.div>

        <div>
          <motion.p
            initial={{ opacity: 0, y: 16 }}
            whileInView={{ opacity: 1, y: 0 }}
            viewport={{ once: true }}
            transition={{ duration: 0.5 }}
            className="text-base leading-relaxed text-text-2 sm:text-lg"
          >
            {renderBio(personalInfo.bio[lang])}
          </motion.p>

          <div className="mt-10 grid grid-cols-2 gap-6 sm:grid-cols-4">
            {stats.map((stat, i) => (
              <motion.div
                key={stat.value}
                initial={{ opacity: 0, y: 16 }}
                whileInView={{ opacity: 1, y: 0 }}
                viewport={{ once: true }}
                transition={{ duration: 0.4, delay: i * 0.08 }}
                className="rounded-xl border border-border bg-card p-4 text-center"
              >
                <p className="text-2xl font-bold text-accent">{stat.value}</p>
                <p className="mt-1 text-xs text-text-3">{stat.label[lang]}</p>
              </motion.div>
            ))}
          </div>
        </div>
      </div>
    </section>
  );
}
