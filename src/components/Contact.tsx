"use client";

import { useState, FormEvent } from "react";
import { motion } from "framer-motion";
import { Mail, Send, Download } from "lucide-react";
import { GithubIcon, LinkedinIcon } from "./BrandIcons";
import emailjs from "@emailjs/browser";
import { toast } from "sonner";
import SectionTitle from "./SectionTitle";
import { useLanguage } from "@/context/LanguageContext";
import { personalInfo, ui } from "@/lib/data";

const SERVICE_ID = process.env.NEXT_PUBLIC_EMAILJS_SERVICE_ID;
const TEMPLATE_ID = process.env.NEXT_PUBLIC_EMAILJS_TEMPLATE_ID;
const PUBLIC_KEY = process.env.NEXT_PUBLIC_EMAILJS_PUBLIC_KEY;

export default function Contact() {
  const { lang } = useLanguage();
  const [sending, setSending] = useState(false);

  const handleSubmit = async (e: FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    const form = e.currentTarget;

    if (!SERVICE_ID || !TEMPLATE_ID || !PUBLIC_KEY) {
      const data = new FormData(form);
      const subject = encodeURIComponent(`Portfolio contact from ${data.get("name")}`);
      const body = encodeURIComponent(String(data.get("message") ?? ""));
      window.location.href = `mailto:${personalInfo.email}?subject=${subject}&body=${body}`;
      return;
    }

    setSending(true);
    try {
      await emailjs.sendForm(SERVICE_ID, TEMPLATE_ID, form, { publicKey: PUBLIC_KEY });
      toast.success(ui.contact.success[lang]);
      form.reset();
    } catch {
      toast.error(ui.contact.error[lang]);
    } finally {
      setSending(false);
    }
  };

  return (
    <section id="contact" className="mx-auto max-w-6xl px-6 py-24">
      <SectionTitle eyebrow="06" title={ui.sections.contact[lang]} />

      <div className="grid gap-12 md:grid-cols-2">
        <motion.div
          initial={{ opacity: 0, y: 20 }}
          whileInView={{ opacity: 1, y: 0 }}
          viewport={{ once: true }}
          transition={{ duration: 0.5 }}
        >
          <p className="text-base leading-relaxed text-text-2">{ui.contact.intro[lang]}</p>

          <div className="mt-8 flex flex-col gap-4">
            <a
              href={`mailto:${personalInfo.email}`}
              className="flex items-center gap-3 text-text-2 transition-colors hover:text-accent"
            >
              <Mail size={18} /> {personalInfo.email}
            </a>
            <a
              href={personalInfo.github}
              target="_blank"
              rel="noreferrer"
              className="flex items-center gap-3 text-text-2 transition-colors hover:text-accent"
            >
              <GithubIcon size={18} /> GitHub
            </a>
            <a
              href={personalInfo.linkedin}
              target="_blank"
              rel="noreferrer"
              className="flex items-center gap-3 text-text-2 transition-colors hover:text-accent"
            >
              <LinkedinIcon size={18} /> LinkedIn
            </a>
            <a
              href={personalInfo.cvUrl}
              download
              className="mt-2 inline-flex w-fit items-center gap-2 rounded-full border border-accent px-5 py-2.5 text-sm font-medium text-accent transition-colors hover:bg-accent-l"
            >
              <Download size={16} /> {ui.downloadCv[lang]}
            </a>
          </div>
        </motion.div>

        <motion.form
          initial={{ opacity: 0, y: 20 }}
          whileInView={{ opacity: 1, y: 0 }}
          viewport={{ once: true }}
          transition={{ duration: 0.5, delay: 0.1 }}
          onSubmit={handleSubmit}
          className="flex flex-col gap-4"
        >
          <div>
            <label htmlFor="name" className="mb-1.5 block text-sm text-text-2">
              {ui.contact.name[lang]}
            </label>
            <input
              id="name"
              name="name"
              type="text"
              required
              className="w-full rounded-lg border border-border bg-card px-4 py-2.5 text-sm text-text outline-none transition-colors focus:border-accent"
            />
          </div>
          <div>
            <label htmlFor="email" className="mb-1.5 block text-sm text-text-2">
              {ui.contact.email[lang]}
            </label>
            <input
              id="email"
              name="email"
              type="email"
              required
              className="w-full rounded-lg border border-border bg-card px-4 py-2.5 text-sm text-text outline-none transition-colors focus:border-accent"
            />
          </div>
          <div>
            <label htmlFor="message" className="mb-1.5 block text-sm text-text-2">
              {ui.contact.message[lang]}
            </label>
            <textarea
              id="message"
              name="message"
              rows={5}
              required
              className="w-full resize-none rounded-lg border border-border bg-card px-4 py-2.5 text-sm text-text outline-none transition-colors focus:border-accent"
            />
          </div>
          <button
            type="submit"
            disabled={sending}
            className="mt-2 flex items-center justify-center gap-2 rounded-full bg-accent px-6 py-3 text-sm font-semibold text-on-accent transition-transform hover:scale-[1.02] disabled:opacity-60"
          >
            <Send size={16} />
            {sending ? ui.contact.sending[lang] : ui.contact.send[lang]}
          </button>
        </motion.form>
      </div>
    </section>
  );
}
