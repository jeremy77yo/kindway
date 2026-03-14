import { Metadata } from "next";
import Link from "next/link";
import {
  Scale,
  Shield,
  AlertTriangle,
  Phone,
  ArrowRight,
  CheckCircle,
  FileText,
  UserX,
  XCircle,
  RefreshCw,
} from "lucide-react";

export const metadata: Metadata = {
  title: "Know Your Rights",
  description:
    "Understand your rights under California's Lanterman Act. Learn how to appeal service denials, request fair hearings, and advocate for yourself.",
};

const CORE_RIGHTS = [
  {
    icon: CheckCircle,
    title: "Choose your own services and providers",
    description:
      "You have the right to choose who provides your services. If a provider isn't working out, you can request a change through your service coordinator.",
  },
  {
    icon: FileText,
    title: "Participate in your IPP",
    description:
      "Your Individual Program Plan must be created with you, not for you. You decide your goals. You can bring anyone you want to your IPP meeting.",
  },
  {
    icon: RefreshCw,
    title: "Request a new service coordinator",
    description:
      "If your service coordinator isn't returning calls, isn't helpful, or you feel isn't advocating for you — you can ask for a different one. This is your right.",
  },
  {
    icon: Scale,
    title: "Appeal any decision you disagree with",
    description:
      "If the Regional Center denies, reduces, or changes your services, you can appeal through an informal meeting or a formal fair hearing. Services continue during your appeal.",
  },
  {
    icon: Shield,
    title: "Receive services in the least restrictive setting",
    description:
      "You have the right to live, work, and receive services in settings that are as close to a typical community environment as possible.",
  },
  {
    icon: FileText,
    title: "Get a copy of your file",
    description:
      "You have the right to see and get copies of your Regional Center records, including your IPP, assessments, and correspondence.",
  },
];

const SCENARIOS = [
  {
    icon: XCircle,
    title: "A service was denied or reduced",
    steps: [
      "You should receive a written notice (called a \"Notice of Proposed Action\" or NOPA) explaining the decision.",
      "You have 30 days from the date of the notice to request a fair hearing.",
      "While you appeal, your current services must continue at the same level — this is called \"aid paid pending.\"",
      "Contact OCRA at (800) 390-7032 for free help preparing your appeal.",
    ],
  },
  {
    icon: UserX,
    title: "Your case manager isn't responsive",
    steps: [
      "Document your attempts to reach them — dates, times, and what you asked for.",
      "Send an email or letter so you have a written record of your request.",
      "If no response after a reasonable time (1-2 weeks), ask to speak with their supervisor.",
      "You can also request a different service coordinator — this is your right under the Lanterman Act.",
      "If the problem continues, contact OCRA at (800) 390-7032.",
    ],
  },
  {
    icon: AlertTriangle,
    title: "A provider or vendor isn't working out",
    steps: [
      "You are not stuck with a provider you're unhappy with. You have the right to choose.",
      "Talk to your service coordinator about switching to a different vendored provider.",
      "Ask for a list of alternative vendored providers in your area.",
      "If your coordinator won't help you switch, you can escalate to their supervisor or contact OCRA.",
      "Consider sharing your experience on the Kindway community page to help others.",
    ],
  },
];

export default function KnowYourRightsPage() {
  return (
    <div className="mx-auto max-w-4xl px-4 py-8">
      {/* Header */}
      <div className="mb-8">
        <div className="mb-3 flex items-center gap-3">
          <div className="flex h-12 w-12 items-center justify-center rounded-xl bg-primary-light text-primary">
            <Scale className="h-6 w-6" aria-hidden="true" />
          </div>
          <h1 className="text-3xl font-bold tracking-tight text-foreground">
            Know Your Rights
          </h1>
        </div>
        <p className="text-lg text-muted-foreground">
          As a person with a developmental disability (or their family member) in
          California, you have strong legal rights under the{" "}
          <strong>Lanterman Act</strong>. Here&apos;s what you need to know.
        </p>
      </div>

      {/* Disclaimer */}
      <div className="mb-8 rounded-2xl border-2 border-yellow-400 bg-yellow-50 p-5">
        <div className="flex gap-3">
          <AlertTriangle
            className="mt-0.5 h-5 w-5 shrink-0 text-yellow-600"
            aria-hidden="true"
          />
          <p className="text-sm text-muted-foreground">
            This page provides general information about your rights under
            California law. It is not legal advice. For help with a specific
            situation, contact{" "}
            <a
              href="https://www.disabilityrightsca.org"
              target="_blank"
              rel="noopener noreferrer"
              className="text-primary hover:underline"
            >
              Disability Rights California
            </a>{" "}
            at (800) 776-5746 or{" "}
            <a
              href="https://rula.disabilityrightsca.org"
              target="_blank"
              rel="noopener noreferrer"
              className="text-primary hover:underline"
            >
              RULA (Rights Under the Lanterman Act)
            </a>
            .
          </p>
        </div>
      </div>

      {/* Core Rights */}
      <section className="mb-12">
        <h2 className="mb-6 text-xl font-semibold text-foreground">
          Your Core Rights
        </h2>
        <div className="grid gap-4 sm:grid-cols-2">
          {CORE_RIGHTS.map(({ icon: Icon, title, description }) => (
            <div
              key={title}
              className="rounded-2xl border border-border bg-white p-5"
            >
              <div className="mb-3 flex h-10 w-10 items-center justify-center rounded-xl bg-primary-light text-primary">
                <Icon className="h-5 w-5" aria-hidden="true" />
              </div>
              <h3 className="font-semibold text-foreground">{title}</h3>
              <p className="mt-1 text-sm text-muted-foreground leading-relaxed">
                {description}
              </p>
            </div>
          ))}
        </div>
      </section>

      {/* Common Scenarios */}
      <section className="mb-12">
        <h2 className="mb-6 text-xl font-semibold text-foreground">
          What to Do When...
        </h2>
        <div className="space-y-6">
          {SCENARIOS.map(({ icon: Icon, title, steps }) => (
            <div
              key={title}
              className="rounded-2xl border border-border bg-white p-6"
            >
              <div className="mb-4 flex items-center gap-3">
                <div className="flex h-10 w-10 shrink-0 items-center justify-center rounded-xl bg-destructive/10 text-destructive">
                  <Icon className="h-5 w-5" aria-hidden="true" />
                </div>
                <h3 className="text-lg font-semibold text-foreground">
                  {title}
                </h3>
              </div>
              <ol className="space-y-3">
                {steps.map((step, i) => (
                  <li key={i} className="flex gap-3 text-sm text-muted-foreground">
                    <span className="flex h-6 w-6 shrink-0 items-center justify-center rounded-full bg-primary-light text-xs font-bold text-primary">
                      {i + 1}
                    </span>
                    <span className="leading-relaxed">{step}</span>
                  </li>
                ))}
              </ol>
            </div>
          ))}
        </div>
      </section>

      {/* How to Request a Fair Hearing */}
      <section className="mb-12">
        <h2 className="mb-4 text-xl font-semibold text-foreground">
          How to Request a Fair Hearing
        </h2>
        <div className="rounded-2xl border border-border bg-white p-6">
          <ol className="space-y-4">
            <li className="flex gap-3 text-sm text-muted-foreground">
              <span className="flex h-6 w-6 shrink-0 items-center justify-center rounded-full bg-primary-light text-xs font-bold text-primary">
                1
              </span>
              <span className="leading-relaxed">
                <strong className="text-foreground">
                  Get the decision in writing.
                </strong>{" "}
                The Regional Center must send you a written Notice of Proposed
                Action (NOPA) before they deny, reduce, or change your services.
              </span>
            </li>
            <li className="flex gap-3 text-sm text-muted-foreground">
              <span className="flex h-6 w-6 shrink-0 items-center justify-center rounded-full bg-primary-light text-xs font-bold text-primary">
                2
              </span>
              <span className="leading-relaxed">
                <strong className="text-foreground">
                  Request the hearing within 30 days.
                </strong>{" "}
                Write to the Office of Administrative Hearings (OAH) or ask OCRA
                to help you file. The NOPA should include instructions.
              </span>
            </li>
            <li className="flex gap-3 text-sm text-muted-foreground">
              <span className="flex h-6 w-6 shrink-0 items-center justify-center rounded-full bg-primary-light text-xs font-bold text-primary">
                3
              </span>
              <span className="leading-relaxed">
                <strong className="text-foreground">
                  Your services continue while you appeal.
                </strong>{" "}
                This is called &quot;aid paid pending.&quot; The Regional Center
                cannot stop your services while the appeal is being decided.
              </span>
            </li>
            <li className="flex gap-3 text-sm text-muted-foreground">
              <span className="flex h-6 w-6 shrink-0 items-center justify-center rounded-full bg-primary-light text-xs font-bold text-primary">
                4
              </span>
              <span className="leading-relaxed">
                <strong className="text-foreground">Get free help.</strong> OCRA
                provides free advocacy support including help preparing for fair
                hearings. Call (800) 390-7032.
              </span>
            </li>
          </ol>
        </div>
      </section>

      {/* Help Resources */}
      <section className="mb-8">
        <h2 className="mb-4 text-xl font-semibold text-foreground">
          Free Help &amp; Advocacy
        </h2>
        <div className="space-y-3">
          <div className="rounded-2xl border border-border bg-white p-5">
            <div className="flex items-start gap-3">
              <Phone
                className="mt-0.5 h-5 w-5 shrink-0 text-primary"
                aria-hidden="true"
              />
              <div>
                <h3 className="font-semibold text-foreground">
                  Office of Clients&apos; Rights Advocacy (OCRA)
                </h3>
                <p className="mt-1 text-sm text-muted-foreground">
                  Free advocacy for Regional Center consumers. Help with
                  service denials, fair hearings, and rights issues.
                </p>
                <p className="mt-2 text-sm font-semibold text-primary">
                  (800) 390-7032
                </p>
              </div>
            </div>
          </div>
          <div className="rounded-2xl border border-border bg-white p-5">
            <div className="flex items-start gap-3">
              <Phone
                className="mt-0.5 h-5 w-5 shrink-0 text-primary"
                aria-hidden="true"
              />
              <div>
                <h3 className="font-semibold text-foreground">
                  Disability Rights California
                </h3>
                <p className="mt-1 text-sm text-muted-foreground">
                  California&apos;s protection and advocacy organization.
                  Help with disability rights across all systems.
                </p>
                <p className="mt-2 text-sm font-semibold text-primary">
                  (800) 776-5746
                </p>
              </div>
            </div>
          </div>
        </div>
      </section>

      {/* CTA */}
      <div className="flex flex-col gap-3 sm:flex-row">
        <Link
          href="/get-help"
          className="inline-flex items-center justify-center gap-2 rounded-xl bg-primary px-6 py-3 text-sm font-semibold text-white transition-colors hover:bg-primary-dark"
        >
          Get Personalized Help
          <ArrowRight className="h-4 w-4" aria-hidden="true" />
        </Link>
        <Link
          href="/glossary"
          className="inline-flex items-center justify-center gap-2 rounded-xl border-2 border-border bg-white px-6 py-3 text-sm font-semibold text-foreground transition-colors hover:bg-muted"
        >
          Browse Glossary
          <ArrowRight className="h-4 w-4" aria-hidden="true" />
        </Link>
      </div>
    </div>
  );
}
