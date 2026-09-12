import type { Metadata } from "next";
import { Inter } from "next/font/google";
import "./globals.css";
import { ThemeProvider } from "@/context/ThemeContext";
import { LanguageProvider } from "@/context/LanguageContext";
import { Toaster } from "sonner";
import CustomCursor from "@/components/CustomCursor";

const inter = Inter({
  variable: "--font-inter",
  subsets: ["latin"],
  weight: ["400", "500", "600", "700"],
});

export const metadata: Metadata = {
  metadataBase: new URL("https://ndenicolais.github.io"),
  title: "Nicola De Nicolais — Mobile, Software & Web Developer",
  description:
    "Sviluppatore mobile, software e web: app cross-platform con Flutter & Dart, Android nativo con Kotlin e applicazioni web con React. Portfolio, progetti ed esperienze di Nicola De Nicolais.",
  openGraph: {
    title: "Nicola De Nicolais — Mobile, Software & Web Developer",
    description:
      "Sviluppatore mobile, software e web: app cross-platform con Flutter & Dart, Android nativo con Kotlin e applicazioni web con React.",
  },
  icons: {
    icon: "/logo.png",
    shortcut: "/logo.png",
    apple: "/logo.png",
  },
};

export default function RootLayout({ children }: LayoutProps<"/">) {
  return (
    <html lang="it" className={`${inter.variable} h-full antialiased`} suppressHydrationWarning>
      <body className="min-h-full flex flex-col bg-bg text-text">
        <ThemeProvider>
          <LanguageProvider>
            <CustomCursor />
            {children}
            <Toaster richColors position="bottom-right" />
          </LanguageProvider>
        </ThemeProvider>
      </body>
    </html>
  );
}
