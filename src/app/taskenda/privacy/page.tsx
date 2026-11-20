import type { Metadata } from "next";
import AppPrivacy from "@/components/AppPrivacy";
import { taskendaApp } from "@/lib/apps";

export const metadata: Metadata = {
  title: "Taskenda — Privacy Policy",
  description: "Privacy policy of the Taskenda app / Informativa privacy dell'app Taskenda.",
  icons: taskendaApp.icons,
};

export default function TaskendaPrivacyPage() {
  return <AppPrivacy app={taskendaApp} />;
}
