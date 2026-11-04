import type { Metadata } from "next";
import SubpageHeader from "@/components/SubpageHeader";
import NotFoundContent from "@/components/NotFoundContent";
import Footer from "@/components/Footer";
import { appUi } from "@/lib/apps";

export const metadata: Metadata = {
  title: "404 — Nicola De Nicolais",
  robots: { index: false },
};

export default function NotFound() {
  return (
    <>
      <SubpageHeader backHref="/" backLabel={appUi.back} />
      <NotFoundContent />
      <Footer />
    </>
  );
}
