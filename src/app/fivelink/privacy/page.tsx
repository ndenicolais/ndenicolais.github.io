import type { Metadata } from "next";
import AppPrivacy from "@/components/AppPrivacy";
import { fivelinkApp } from "@/lib/apps";

export const metadata: Metadata = {
  title: "Fivelink — Privacy Policy",
  description: "Privacy policy of the Fivelink app / Informativa privacy dell'app Fivelink.",
  icons: fivelinkApp.icons,
};

export default function FivelinkPrivacyPage() {
  return <AppPrivacy app={fivelinkApp} />;
}
