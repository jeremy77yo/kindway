import { Metadata } from "next";
import { Heart, Shield, Users, Zap } from "lucide-react";

export const metadata: Metadata = {
  title: "About",
  description: "About the Kindway project.",
};

const VALUES = [
  {
    icon: Heart,
    title: "Accessible First",
    description:
      "Every feature is designed with accessibility in mind — large touch targets, clear language, screen reader support, and high contrast.",
  },
  {
    icon: Shield,
    title: "Trustworthy Information",
    description:
      "We verify provider information and moderate community experiences to ensure you get reliable, up-to-date data.",
  },
  {
    icon: Users,
    title: "Community Powered",
    description:
      "Real experiences from real families help everyone make better decisions about services and providers.",
  },
  {
    icon: Zap,
    title: "No Barriers",
    description:
      "No login required, no case manager needed. Start exploring services right now, for free.",
  },
];

export default function AboutPage() {
  return (
    <div className="mx-auto max-w-4xl px-4 py-8">
      <div className="mb-8">
        <h1 className="text-3xl font-bold tracking-tight text-foreground">
          About Kindway
        </h1>
        <p className="mt-2 text-lg text-muted-foreground">
          A free community resource helping people with disabilities, families,
          and caregivers discover services and find providers in the Bay Area.
        </p>
      </div>

      <section className="mb-12">
        <h2 className="mb-4 text-xl font-semibold text-foreground">
          Our Mission
        </h2>
        <p className="text-muted-foreground leading-relaxed">
          Navigating disability services shouldn&apos;t require a case manager or
          hours of research. Kindway puts everything in one place —
          service categories, provider directories, step-by-step guides, and
          community experiences — so you can find what you need and take the next
          step with confidence.
        </p>
      </section>

      <section className="mb-12 rounded-2xl border-2 border-yellow-400 bg-yellow-50 p-6">
        <h2 className="mb-3 text-lg font-semibold text-foreground">
          Important Disclaimer
        </h2>
        <div className="space-y-3 text-sm text-muted-foreground">
          <p>
            Kindway is an independent, community-built resource created by a
            family member. It is NOT affiliated with, endorsed by, or connected
            to any Regional Center (including RCEB), the California Department
            of Developmental Services (DDS), or any state or federal agency.
          </p>
          <p>
            This tool does not provide medical, legal, or professional advice.
            Information is gathered from public sources and community
            experiences. Always verify details directly with service providers
            and consult qualified professionals for guidance specific to your
            situation.
          </p>
          <p>
            Kindway does not collect, store, or transmit protected health
            information (PHI). When sharing experiences, please do not include
            names, dates of birth, diagnoses, or other identifying health
            information about yourself or others.
          </p>
        </div>
      </section>

      <section className="mb-12">
        <h2 className="mb-6 text-xl font-semibold text-foreground">
          What We Value
        </h2>
        <div className="grid gap-4 sm:grid-cols-2">
          {VALUES.map(({ icon: Icon, title, description }) => (
            <div
              key={title}
              className="rounded-2xl border border-border bg-white p-5"
            >
              <div className="mb-3 flex h-10 w-10 items-center justify-center rounded-xl bg-primary-light text-primary">
                <Icon className="h-5 w-5" aria-hidden="true" />
              </div>
              <h3 className="font-semibold text-foreground">{title}</h3>
              <p className="mt-1 text-sm text-muted-foreground">{description}</p>
            </div>
          ))}
        </div>
      </section>
    </div>
  );
}
