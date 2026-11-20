import type { Metadata } from "next";
import SubpageHeader from "@/components/SubpageHeader";
import AppHome from "@/components/AppHome";
import Footer from "@/components/Footer";
import { appUi, taskendaApp } from "@/lib/apps";

export const metadata: Metadata = {
  title: "Taskenda — Calendar, tasks and notes in one place",
  description: taskendaApp.description.en,
  icons: taskendaApp.icons,
  openGraph: {
    title: "Taskenda — Calendar, tasks and notes in one place",
    description: taskendaApp.description.en,
    images: [taskendaApp.preview],
  },
};

export default function TaskendaPage() {
  return (
    <>
      <SubpageHeader backHref="/" backLabel={appUi.back} lang={taskendaApp.lang} />
      <AppHome app={taskendaApp} />
      <Footer lang={taskendaApp.lang} />
    </>
  );
}
