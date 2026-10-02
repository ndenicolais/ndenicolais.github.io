import type { Metadata } from "next";
import AppPrivacy from "@/components/AppPrivacy";
import { shoxApp } from "@/lib/apps";

export const metadata: Metadata = {
  title: "Shox — Privacy Policy",
  description: "Privacy policy of the Shox app / Informativa privacy dell'app Shox.",
  icons: { icon: shoxApp.logo, apple: shoxApp.logo },
};

export default function ShoxPrivacyPage() {
  return <AppPrivacy app={shoxApp} />;
}
