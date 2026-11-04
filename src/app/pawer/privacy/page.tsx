import type { Metadata } from "next";
import AppPrivacy from "@/components/AppPrivacy";
import { pawerApp } from "@/lib/apps";

export const metadata: Metadata = {
  title: "Pawer — Informativa privacy",
  description: "Informativa privacy dell'app Pawer / Privacy policy of the Pawer app.",
  icons: pawerApp.icons,
};

export default function PawerPrivacyPage() {
  return <AppPrivacy app={pawerApp} />;
}
