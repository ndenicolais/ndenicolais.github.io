"use client";

import { motion } from "framer-motion";
import { PawPrint, Cpu, Gamepad2, Sparkles } from "lucide-react";
import SectionTitle from "./SectionTitle";
import { useLanguage } from "@/context/LanguageContext";
import { hobbies, ui } from "@/lib/data";

const hobbyIcons: Record<string, typeof Sparkles> = {
  Animals: PawPrint,
  Technology: Cpu,
  Pokémon: Gamepad2,
};

export default function Hobbies() {
  const { lang } = useLanguage();

  return (
    <section id="hobbies" className="mx-auto max-w-6xl px-6 py-24">
      <SectionTitle eyebrow="05" title={ui.sections.hobbies[lang]} />

      <div className="grid gap-6 sm:grid-cols-3">
        {hobbies.map((hobby, i) => {
          const Icon = hobbyIcons[hobby.title.en] ?? Sparkles;
          return (
            <motion.div
              key={hobby.title.en}
              initial={{ opacity: 0, y: 20 }}
              whileInView={{ opacity: 1, y: 0 }}
              viewport={{ once: true, margin: "-60px" }}
              transition={{ duration: 0.5, delay: i * 0.1 }}
              className="group rounded-2xl border border-border bg-card p-6 transition-all duration-300 hover:-translate-y-1 hover:border-accent hover:shadow-lg"
            >
              <div className="flex h-11 w-11 items-center justify-center rounded-xl bg-accent-l text-accent transition-colors duration-300 group-hover:bg-accent group-hover:text-on-accent">
                <Icon size={22} />
              </div>
              <h3 className="mt-4 font-semibold text-heading">{hobby.title[lang]}</h3>
              <p className="mt-2 text-sm leading-relaxed text-text-2">{hobby.description[lang]}</p>
            </motion.div>
          );
        })}
      </div>
    </section>
  );
}
