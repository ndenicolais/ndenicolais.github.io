"use client";

import { useState } from "react";
import Image from "next/image";
import { motion, AnimatePresence } from "framer-motion";
import { ExternalLink, Sparkles, Code2 } from "lucide-react";
import { GithubIcon } from "./BrandIcons";
import SectionTitle from "./SectionTitle";
import { useLanguage } from "@/context/LanguageContext";
import { projects, projectFilters, ui, ProjectCategory } from "@/lib/data";

export default function Projects() {
  const { lang } = useLanguage();
  const [filter, setFilter] = useState<"all" | ProjectCategory>("flutter");

  const visible = projects.filter((p) => filter === "all" || p.category === filter);

  return (
    <section id="projects" className="mx-auto max-w-6xl px-6 py-24">
      <SectionTitle eyebrow="03" title={ui.sections.projects[lang]} />

      <div className="mb-10 flex flex-wrap gap-2">
        {projectFilters.map((f) => (
          <button
            key={f.key}
            onClick={() => setFilter(f.key)}
            className={`rounded-full border px-4 py-1.5 text-sm font-medium transition-colors ${
              filter === f.key
                ? "border-accent bg-accent text-on-accent"
                : "border-border text-text-2 hover:border-accent hover:text-accent"
            }`}
          >
            {f.label[lang]}
          </button>
        ))}
      </div>

      <motion.div layout className="grid gap-8 sm:grid-cols-2">
        <AnimatePresence mode="popLayout">
          {visible.map((project, i) => (
            <motion.div
              layout
              key={project.slug}
              initial={{ opacity: 0, y: 24 }}
              animate={{ opacity: 1, y: 0 }}
              exit={{ opacity: 0, scale: 0.96 }}
              transition={{ duration: 0.4, delay: (i % 2) * 0.06 }}
              className="group overflow-hidden rounded-2xl border border-border bg-card"
            >
              {project.comingSoon ? (
                <div className="flex h-full min-h-[280px] flex-col items-center justify-center gap-3 p-8 text-center text-text-3">
                  <Sparkles size={28} className="text-accent" />
                  <p className="text-sm font-medium">
                    {project.wip ? ui.projects.wip[lang] : ui.projects.comingSoon[lang]}
                  </p>
                </div>
              ) : (
                <>
                  <div className="relative flex aspect-video items-center justify-center overflow-hidden bg-surface">
                    {project.image ? (
                      <Image
                        src={project.image}
                        alt={project.title}
                        fill
                        className="object-cover transition-transform duration-500 group-hover:scale-105"
                      />
                    ) : (
                      <Code2 size={32} className="text-text-3" />
                    )}
                  </div>
                  <div className="p-6">
                    <div className="flex items-center gap-2">
                      <h3 className="text-lg font-semibold text-heading">{project.title}</h3>
                      {project.wip && (
                        <span className="rounded-full bg-accent-l px-2 py-0.5 text-[10px] font-semibold uppercase tracking-wide text-accent">
                          {ui.projects.wip[lang]}
                        </span>
                      )}
                    </div>
                    <p className="mt-2 text-sm leading-relaxed text-text-2">
                      {project.description[lang]}
                    </p>

                    <div className="mt-4 flex flex-wrap gap-2">
                      {project.tech.map((tech) => (
                        <span
                          key={tech}
                          className="rounded-full bg-accent-l px-2.5 py-0.5 text-xs text-accent"
                        >
                          {tech}
                        </span>
                      ))}
                    </div>

                    <div className="mt-5 flex items-center gap-4">
                      {project.githubUrl && (
                        <a
                          href={project.githubUrl}
                          target="_blank"
                          rel="noreferrer"
                          className="flex items-center gap-1.5 text-sm text-text-2 transition-colors hover:text-accent"
                        >
                          <GithubIcon size={15} /> {ui.projects.viewGithub[lang]}
                        </a>
                      )}
                      {project.demoUrl && (
                        <a
                          href={project.demoUrl}
                          target="_blank"
                          rel="noreferrer"
                          className="flex items-center gap-1.5 text-sm text-text-2 transition-colors hover:text-accent"
                        >
                          <ExternalLink size={15} /> {ui.projects.viewDemo[lang]}
                        </a>
                      )}
                    </div>
                  </div>
                </>
              )}
            </motion.div>
          ))}
        </AnimatePresence>
      </motion.div>
    </section>
  );
}
