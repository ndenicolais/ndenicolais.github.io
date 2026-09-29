import { readFile } from "node:fs/promises";
import path from "node:path";
import type { Metadata } from "next";
import SubpageHeader from "@/components/SubpageHeader";
import MarkdownContent from "@/components/MarkdownContent";
import Footer from "@/components/Footer";
import { parseMarkdown } from "@/lib/markdown";
import { shoxApp, shoxUi } from "@/lib/shox";

export const metadata: Metadata = {
  title: "Shox — Privacy Policy",
  description: "Privacy policy of the Shox app / Informativa privacy dell'app Shox.",
  icons: { icon: shoxApp.logo, apple: shoxApp.logo },
};

export default async function ShoxPrivacyPage() {
  // Verbatim copy of PRIVACY.md from the Shox repository, read at build time.
  const source = await readFile(path.join(process.cwd(), "src/content/shox-privacy.md"), "utf8");

  return (
    <>
      <SubpageHeader backHref="/shox/" backLabel={shoxUi.backToApp} showLang={false} />
      <main className="mx-auto w-full max-w-3xl flex-1 px-6 py-16">
        <MarkdownContent blocks={parseMarkdown(source)} />
      </main>
      <Footer />
    </>
  );
}
