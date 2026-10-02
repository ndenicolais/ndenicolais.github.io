import type { Metadata } from "next";
import SubpageHeader from "@/components/SubpageHeader";
import AppHome from "@/components/AppHome";
import Footer from "@/components/Footer";
import { appUi, shoxApp } from "@/lib/apps";

export const metadata: Metadata = {
  title: "Shox — Your digital shoe wardrobe",
  description: shoxApp.description.en,
  icons: { icon: shoxApp.logo, apple: shoxApp.logo },
  openGraph: {
    title: "Shox — Your digital shoe wardrobe",
    description: shoxApp.description.en,
    images: [shoxApp.preview],
  },
};

export default function ShoxPage() {
  return (
    <>
      <SubpageHeader backHref="/" backLabel={appUi.back} />
      <AppHome app={shoxApp} />
      <Footer />
    </>
  );
}
