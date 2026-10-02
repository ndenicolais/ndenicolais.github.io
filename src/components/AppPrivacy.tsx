import { readFile } from "node:fs/promises";
import path from "node:path";
import SubpageHeader from "./SubpageHeader";
import MarkdownContent from "./MarkdownContent";
import Footer from "./Footer";
import { parseMarkdown } from "@/lib/markdown";
import { appUi, type AppPage } from "@/lib/apps";

export default async function AppPrivacy({ app }: { app: AppPage }) {
  // Verbatim copy of the app's PRIVACY.md, read at build time.
  const source = await readFile(path.join(process.cwd(), `src/content/${app.slug}-privacy.md`), "utf8");

  return (
    <>
      <SubpageHeader backHref={`/${app.slug}/`} backLabel={appUi.backToApp(app.name)} showLang={false} lang={app.lang} />
      <main className="mx-auto w-full max-w-3xl flex-1 px-6 py-16">
        <MarkdownContent blocks={parseMarkdown(source)} />
      </main>
      <Footer lang={app.lang} />
    </>
  );
}
