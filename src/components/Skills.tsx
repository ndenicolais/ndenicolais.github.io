"use client";

import { motion } from "framer-motion";
import SectionTitle from "./SectionTitle";
import { useLanguage } from "@/context/LanguageContext";
import { skillCategories, ui } from "@/lib/data";
import { skillIcons } from "@/lib/skillIcons";

export default function Skills() {
  const { lang } = useLanguage();

  return (
    <section id="skills" className="mx-auto max-w-6xl px-6 py-24">
      <SectionTitle eyebrow="02" title={ui.sections.skills[lang]} />

      <div className="grid gap-6 sm:grid-cols-2">
        {skillCategories.map((category, i) => (
          <motion.div
            key={category.name.en}
            initial={{ opacity: 0, y: 20 }}
            whileInView={{ opacity: 1, y: 0 }}
            viewport={{ once: true, margin: "-60px" }}
            transition={{ duration: 0.5, delay: i * 0.08 }}
            className="rounded-2xl border border-border bg-card p-6"
          >
            <h3 className="mb-4 text-sm font-semibold uppercase tracking-wide text-accent">
              {category.name[lang]}
            </h3>
            <div className="flex flex-wrap gap-2">
              {category.skills.map((skill) => {
                const entry = skillIcons[skill];
                const Icon = entry?.Icon;
                return (
                  <span
                    key={skill}
                    style={{ ["--skill-color" as string]: entry?.color ?? "var(--c-accent)" }}
                    className="group flex items-center gap-2 rounded-full border border-border bg-bg px-3 py-1.5 text-sm text-text-2 transition-colors hover:border-[var(--skill-color)]"
                  >
                    {Icon && (
                      <Icon
                        size={15}
                        className="text-text-3 transition-colors group-hover:text-[var(--skill-color)]"
                      />
                    )}
                    {skill}
                  </span>
                );
              })}
            </div>
          </motion.div>
        ))}
      </div>
    </section>
  );
}
