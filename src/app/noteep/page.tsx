import type { Metadata } from "next";
import SubpageHeader from "@/components/SubpageHeader";
import AppHome from "@/components/AppHome";
import Footer from "@/components/Footer";
import { appUi, noteepApp } from "@/lib/apps";

export const metadata: Metadata = {
  title: "Noteep — Notes, tasks and reminders in one place",
  description: noteepApp.description.en,
  icons: noteepApp.icons,
  openGraph: {
    title: "Noteep — Notes, tasks and reminders in one place",
    description: noteepApp.description.en,
    images: [noteepApp.preview],
  },
};

export default function NoteepPage() {
  return (
    <>
      <SubpageHeader backHref="/" backLabel={appUi.back} lang={noteepApp.lang} />
      <AppHome app={noteepApp} />
      <Footer lang={noteepApp.lang} />
    </>
  );
}
