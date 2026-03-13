import type { Metadata } from "next";
import { Geist } from "next/font/google";
import { SkipLink } from "@/components/layout/skip-link";
import { Header } from "@/components/layout/header";
import { MobileNav } from "@/components/layout/mobile-nav";
import { Footer } from "@/components/layout/footer";
import "./globals.css";

const geistSans = Geist({
  variable: "--font-geist-sans",
  subsets: ["latin"],
});

export const metadata: Metadata = {
  title: {
    default: "Kindway — Disability Services Directory",
    template: "%s | Kindway",
  },
  description:
    "Kindway helps you discover disability services, find providers, and understand next steps in the Bay Area. A free community resource for people with disabilities, families, and caregivers.",
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="en">
      <body className={`${geistSans.variable} antialiased`}>
        <SkipLink />
        <Header />
        <main id="main-content" className="min-h-screen pb-20 md:pb-0">
          {children}
        </main>
        <Footer />
        <MobileNav />
      </body>
    </html>
  );
}
