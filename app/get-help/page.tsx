import { Metadata } from "next";
import Link from "next/link";
import {
  Handshake,
  MessageCircle,
  ArrowRight,
  BookOpen,
  Scale,
  Users,
  Phone,
} from "lucide-react";
import { GetHelpForm } from "./get-help-form";

export const metadata: Metadata = {
  title: "Get Help",
  description:
    "Need guidance navigating disability services? Kindway can help connect you to the right resources.",
};

const QUICK_LINKS = [
  {
    title: "Know Your Rights",
    description:
      "Understand your rights under the Lanterman Act, including appeals and fair hearings.",
    href: "/know-your-rights",
    icon: Scale,
  },
  {
    title: "Glossary",
    description:
      "Confused by IEP, IPP, SLS, or ILS? Look up disability services terms in plain language.",
    href: "/glossary",
    icon: BookOpen,
  },
  {
    title: "Community",
    description:
      "Ask questions and learn from others who have navigated the same system.",
    href: "/community",
    icon: Users,
  },
];

const CRISIS_RESOURCES = [
  { label: "988 Suicide & Crisis Lifeline", value: "Call or text 988" },
  {
    label: "Disability Rights California",
    value: "(800) 776-5746",
  },
  {
    label: "Office of Clients' Rights Advocacy (OCRA)",
    value: "(800) 390-7032",
  },
];

export default function GetHelpPage() {
  return (
    <div className="mx-auto max-w-3xl px-4 py-8">
      {/* Header */}
      <div className="mb-8">
        <div className="mb-3 flex items-center gap-3">
          <div className="flex h-12 w-12 items-center justify-center rounded-xl bg-primary-light text-primary">
            <Handshake className="h-6 w-6" aria-hidden="true" />
          </div>
          <h1 className="text-3xl font-bold tracking-tight text-foreground">
            Get Help
          </h1>
        </div>
        <p className="text-lg text-muted-foreground">
          Navigating disability services can be overwhelming. If you&apos;re
          stuck, unsure where to start, or having trouble getting the support you
          need — you&apos;re not alone. We can help point you in the right
          direction.
        </p>
      </div>

      {/* What we can help with */}
      <section className="mb-10 rounded-2xl border border-border bg-white p-6">
        <h2 className="mb-4 text-lg font-semibold text-foreground">
          What we can help with
        </h2>
        <ul className="space-y-3 text-sm text-muted-foreground">
          <li className="flex items-start gap-2">
            <MessageCircle
              className="mt-0.5 h-4 w-4 shrink-0 text-primary"
              aria-hidden="true"
            />
            Understanding what services you or your loved one may be eligible for
          </li>
          <li className="flex items-start gap-2">
            <MessageCircle
              className="mt-0.5 h-4 w-4 shrink-0 text-primary"
              aria-hidden="true"
            />
            Figuring out which providers might be a good fit
          </li>
          <li className="flex items-start gap-2">
            <MessageCircle
              className="mt-0.5 h-4 w-4 shrink-0 text-primary"
              aria-hidden="true"
            />
            Navigating the Regional Center process or IPP meetings
          </li>
          <li className="flex items-start gap-2">
            <MessageCircle
              className="mt-0.5 h-4 w-4 shrink-0 text-primary"
              aria-hidden="true"
            />
            What to do when a case manager isn&apos;t responsive
          </li>
          <li className="flex items-start gap-2">
            <MessageCircle
              className="mt-0.5 h-4 w-4 shrink-0 text-primary"
              aria-hidden="true"
            />
            Exploring alternatives when a provider or vendor isn&apos;t working
            out
          </li>
          <li className="flex items-start gap-2">
            <MessageCircle
              className="mt-0.5 h-4 w-4 shrink-0 text-primary"
              aria-hidden="true"
            />
            General questions about ILS, Day Programs, SDP, or other services
          </li>
        </ul>
      </section>

      {/* Help Request Form */}
      <section className="mb-10 rounded-2xl border border-border bg-white p-6">
        <h2 className="mb-2 text-xl font-semibold text-foreground">
          Send us a message
        </h2>
        <p className="mb-6 text-sm text-muted-foreground">
          Tell us a little about your situation and what you need help with.
          We&apos;ll follow up by email, usually within 1-2 business days.
        </p>
        <GetHelpForm />
      </section>

      {/* Quick links */}
      <section className="mb-10">
        <h2 className="mb-4 text-lg font-semibold text-foreground">
          You can also explore these resources
        </h2>
        <div className="space-y-3">
          {QUICK_LINKS.map(({ title, description, href, icon: Icon }) => (
            <Link
              key={href}
              href={href}
              className="group flex items-start gap-4 rounded-2xl border border-border bg-white p-4 transition-all hover:border-primary/30 hover:shadow-sm"
            >
              <div className="flex h-10 w-10 shrink-0 items-center justify-center rounded-xl bg-primary-light text-primary">
                <Icon className="h-5 w-5" aria-hidden="true" />
              </div>
              <div className="min-w-0 flex-1">
                <h3 className="font-semibold text-foreground group-hover:text-primary">
                  {title}
                </h3>
                <p className="mt-0.5 text-sm text-muted-foreground">
                  {description}
                </p>
              </div>
              <ArrowRight
                className="mt-1 h-4 w-4 shrink-0 text-muted-foreground transition-transform group-hover:translate-x-0.5 group-hover:text-primary"
                aria-hidden="true"
              />
            </Link>
          ))}
        </div>
      </section>

      {/* Crisis Resources */}
      <section className="rounded-2xl border-2 border-yellow-400 bg-yellow-50 p-6">
        <div className="flex items-center gap-2 mb-3">
          <Phone className="h-5 w-5 text-yellow-600" aria-hidden="true" />
          <h2 className="text-lg font-semibold text-foreground">
            Crisis &amp; Urgent Resources
          </h2>
        </div>
        <p className="mb-4 text-sm text-muted-foreground">
          If you or someone you know is in crisis or needs immediate help:
        </p>
        <div className="space-y-2">
          {CRISIS_RESOURCES.map(({ label, value }) => (
            <div
              key={label}
              className="flex flex-col gap-0.5 sm:flex-row sm:items-center sm:gap-2"
            >
              <span className="text-sm font-semibold text-foreground">
                {label}:
              </span>
              <span className="text-sm text-muted-foreground">{value}</span>
            </div>
          ))}
        </div>
      </section>
    </div>
  );
}
