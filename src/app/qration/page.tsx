import type { Metadata } from "next";
import SubpageHeader from "@/components/SubpageHeader";
import AppHome from "@/components/AppHome";
import Footer from "@/components/Footer";
import { appUi, qrationApp } from "@/lib/apps";

export const metadata: Metadata = {
  title: "QRation — Scan, create and keep every QR code",
  description: qrationApp.description.en,
  icons: qrationApp.icons,
  openGraph: {
    title: "QRation — Scan, create and keep every QR code",
    description: qrationApp.description.en,
    images: [qrationApp.preview],
  },
};

export default function QRationPage() {
  return (
    <>
      <SubpageHeader backHref="/" backLabel={appUi.back} lang={qrationApp.lang} />
      <AppHome app={qrationApp} />
      <Footer lang={qrationApp.lang} />
    </>
  );
}
