import type { Metadata } from "next";
import SubpageHeader from "@/components/SubpageHeader";
import AppHome from "@/components/AppHome";
import Footer from "@/components/Footer";
import { appUi, fivelinkApp } from "@/lib/apps";

export const metadata: Metadata = {
  title: "Fivelink — A daily number puzzle for Android",
  description: fivelinkApp.description.en,
  icons: fivelinkApp.icons,
  openGraph: {
    title: "Fivelink — A daily number puzzle for Android",
    description: fivelinkApp.description.en,
    images: [fivelinkApp.preview],
  },
};

export default function FivelinkPage() {
  return (
    <>
      <SubpageHeader backHref="/" backLabel={appUi.back} lang={fivelinkApp.lang} />
      <AppHome app={fivelinkApp} />
      <Footer lang={fivelinkApp.lang} />
    </>
  );
}
