import type { Metadata } from "next";
import AppPrivacy from "@/components/AppPrivacy";
import { qrationApp } from "@/lib/apps";

export const metadata: Metadata = {
  title: "QRation — Privacy Policy",
  description: "Privacy policy of the QRation app / Informativa privacy dell'app QRation.",
  icons: qrationApp.icons,
};

export default function QRationPrivacyPage() {
  return <AppPrivacy app={qrationApp} />;
}
