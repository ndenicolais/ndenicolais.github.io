"use client";

import { motion } from "framer-motion";
import SectionTitle from "./SectionTitle";
import { useLanguage } from "@/context/LanguageContext";
import { Award, GraduationCap } from "lucide-react";
import { experiences, education, certifications, ui } from "@/lib/data";

export default function Experience() {
  const { lang } = useLanguage();

  return (
    <section id="experience" className="mx-auto max-w-6xl px-6 py-24">
      <SectionTitle eyebrow="04" title={ui.sections.experience[lang]} />

      <div className="relative border-l border-border pl-8">
        {experiences.map((exp, i) => (
          <motion.div
            key={`${exp.company}-${exp.period}`}
            initial={{ opacity: 0, x: -16 }}
            whileInView={{ opacity: 1, x: 0 }}
            viewport={{ once: true, margin: "-60px" }}
            transition={{ duration: 0.5, delay: i * 0.08 }}
            className="relative pb-12 last:pb-0"
          >
            <span className="absolute -left-[calc(2rem+5px)] top-1.5 h-2.5 w-2.5 rounded-full bg-accent" />
            <p className="font-mono text-xs text-text-3">{exp.period}</p>
            <h3 className="mt-1 text-lg font-semibold text-heading">{exp.role[lang]}</h3>
            <p className="text-sm font-semibold text-accent">{exp.company}</p>
            <p className="font-mono text-xs text-text-3">{exp.location}</p>
            <p className="mt-3 text-sm leading-relaxed text-text-2">{exp.description[lang]}</p>
            <div className="mt-3 flex flex-wrap gap-2">
              {exp.tags.map((tag) => (
                <span
                  key={tag}
                  className="rounded-full border border-border px-2.5 py-0.5 text-xs text-text-3"
                >
                  {tag}
                </span>
              ))}
            </div>
          </motion.div>
        ))}
      </div>

      <div className="mt-16">
        <h3 className="mb-6 text-sm font-semibold uppercase tracking-wide text-accent">
          {ui.sections.education[lang]}
        </h3>
        <div className="grid gap-4 sm:grid-cols-2">
          {education.map((item) => (
            <div
              key={item.title.en}
              className="flex items-start gap-3 rounded-xl border border-border bg-card p-5"
            >
              <GraduationCap className="mt-0.5 shrink-0 text-accent" size={18} />
              <div>
                <p className="font-medium text-heading">{item.title[lang]}</p>
                <p className="text-sm text-text-2">{item.place}</p>
                <p className="font-mono text-xs text-text-3">{item.period}</p>
              </div>
            </div>
          ))}
        </div>
      </div>

      <div className="mt-16">
        <h3 className="mb-6 text-sm font-semibold uppercase tracking-wide text-accent">
          {ui.sections.certifications[lang]}
        </h3>
        <div className="grid gap-4 sm:grid-cols-2">
          {certifications.map((cert) => (
            <div
              key={`${cert.title}-${cert.year}`}
              className="flex items-start gap-3 rounded-xl border border-border bg-card p-5"
            >
              <Award className="mt-0.5 shrink-0 text-accent" size={18} />
              <div>
                <p className="font-medium text-heading">{cert.title}</p>
                <p className="text-sm text-text-2">{cert.place}</p>
                <p className="font-mono text-xs text-text-3">{cert.year}</p>
              </div>
            </div>
          ))}
        </div>
      </div>
    </section>
  );
}
