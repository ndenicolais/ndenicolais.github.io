import type { Metadata } from "next";
import SubpageHeader from "@/components/SubpageHeader";
import ShoxHome from "@/components/ShoxHome";
import Footer from "@/components/Footer";
import { shoxApp, shoxUi } from "@/lib/shox";

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
      <SubpageHeader backHref="/" backLabel={shoxUi.back} />
      <ShoxHome />
      <Footer />
    </>
  );
}
