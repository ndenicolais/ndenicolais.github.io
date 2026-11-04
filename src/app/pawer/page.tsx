import type { Metadata } from "next";
import SubpageHeader from "@/components/SubpageHeader";
import AppHome from "@/components/AppHome";
import Footer from "@/components/Footer";
import { appUi, pawerApp } from "@/lib/apps";

export const metadata: Metadata = {
  title: "Pawer — Ogni zampa merita un futuro migliore",
  description: pawerApp.description.it,
  icons: pawerApp.icons,
  openGraph: {
    title: "Pawer — Ogni zampa merita un futuro migliore",
    description: pawerApp.description.it,
    images: [pawerApp.preview],
    locale: "it_IT",
  },
};

export default function PawerPage() {
  return (
    <>
      <SubpageHeader backHref="/" backLabel={appUi.back} lang={pawerApp.lang} />
      <AppHome app={pawerApp} />
      <Footer lang={pawerApp.lang} />
    </>
  );
}
