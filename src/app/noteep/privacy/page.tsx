import type { Metadata } from "next";
import AppPrivacy from "@/components/AppPrivacy";
import { noteepApp } from "@/lib/apps";

export const metadata: Metadata = {
  title: "Noteep — Privacy Policy",
  description: "Privacy policy of the Noteep app / Informativa privacy dell'app Noteep.",
  icons: noteepApp.icons,
};

export default function NoteepPrivacyPage() {
  return <AppPrivacy app={noteepApp} />;
}
