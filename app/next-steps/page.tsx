import { Metadata } from "next";
import Link from "next/link";
import {
  AlertCircle,
  Landmark,
  ChevronRight,
  ListChecks,
  Sparkles,
} from "lucide-react";

export const metadata: Metadata = {
  title: "Next Steps Guides",
  description:
    "Step-by-step guides to help you navigate the process of accessing disability services in the Bay Area.",
};

const GUIDES = [
  {
    title: "Becoming a Regional Center Client",
    description:
      "Learn the step-by-step process for getting evaluated, determining eligibility, and accessing services through your local Regional Center.",
    href: "/next-steps/regional-center",
    icon: Landmark,
    iconBg: "bg-blue-50",
    iconColor: "text-blue-600",
  },
  {
    title: "Self-Determination Program (SDP)",
    description:
      "Understand the Self-Determination Program — how it works, who's eligible, and how to take control of your services and budget with an independent facilitator.",
    href: "/next-steps/self-determination",
    icon: Sparkles,
    iconBg: "bg-purple-50",
    iconColor: "text-purple-600",
  },
];

export default function NextStepsPage() {
  return (
    <div className="mx-auto max-w-4xl px-4 py-8">
      {/* Page header */}
      <div className="mb-8">
        <div className="mb-3 flex items-center gap-3">
          <div className="flex h-12 w-12 items-center justify-center rounded-xl bg-primary-light text-primary">
            <ListChecks className="h-6 w-6" aria-hidden="true" />
          </div>
          <h1 className="text-3xl font-bold tracking-tight text-foreground">
            Next Steps Guides
          </h1>
        </div>
        <p className="text-lg text-muted-foreground">
          Step-by-step guides to help you navigate the process of accessing
          disability services in the Bay Area.
        </p>
      </div>

      {/* Disclaimer */}
      <div className="mb-8 rounded-2xl border-2 border-yellow-400 bg-yellow-50 p-5">
        <div className="flex gap-3">
          <AlertCircle
            className="mt-0.5 h-5 w-5 shrink-0 text-yellow-600"
            aria-hidden="true"
          />
          <p className="text-sm text-muted-foreground">
            These guides are provided for informational purposes only. Kindway
            is not affiliated with any Regional Center or government agency.
            Processes may change &mdash; always verify current requirements
            directly with your Regional Center.
          </p>
        </div>
      </div>

      {/* Guide cards */}
      <div className="space-y-4">
        {GUIDES.map(
          ({ title, description, href, icon: Icon, iconBg, iconColor }) => (
            <Link
              key={href}
              href={href}
              className="group flex items-start gap-4 rounded-2xl border border-border bg-white p-6 transition-all hover:border-primary/30 hover:shadow-md"
            >
              <div
                className={`flex h-12 w-12 shrink-0 items-center justify-center rounded-xl ${iconBg} ${iconColor}`}
              >
                <Icon className="h-6 w-6" aria-hidden="true" />
              </div>
              <div className="min-w-0 flex-1">
                <h2 className="text-lg font-semibold text-foreground group-hover:text-primary">
                  {title}
                </h2>
                <p className="mt-1 text-sm text-muted-foreground">
                  {description}
                </p>
              </div>
              <ChevronRight
                className="mt-1 h-5 w-5 shrink-0 text-muted-foreground transition-transform group-hover:translate-x-0.5 group-hover:text-primary"
                aria-hidden="true"
              />
            </Link>
          )
        )}
      </div>
    </div>
  );
}
