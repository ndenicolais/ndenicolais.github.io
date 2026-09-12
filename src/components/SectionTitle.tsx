"use client";

import { motion } from "framer-motion";

export default function SectionTitle({ eyebrow, title }: { eyebrow: string; title: string }) {
  return (
    <motion.div
      initial={{ opacity: 0, y: 16 }}
      whileInView={{ opacity: 1, y: 0 }}
      viewport={{ once: true, margin: "-80px" }}
      transition={{ duration: 0.5 }}
      className="mb-12"
    >
      <span className="font-mono text-sm tracking-wide text-accent">{eyebrow}</span>
      <h2 className="mt-2 text-3xl font-bold tracking-tight text-heading sm:text-4xl">{title}</h2>
      <div className="mt-4 h-px w-16 bg-accent" />
    </motion.div>
  );
}
