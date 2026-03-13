import Link from "next/link";
import { Metadata } from "next";
import {
  ArrowLeft, CheckCircle, Clock, FileText, Phone,
  Users, AlertCircle, DollarSign, Scale, Star,
  Lightbulb, Heart, Shield, BookOpen,
} from "lucide-react";

export const metadata: Metadata = {
  title: "Self-Determination Program (SDP)",
  description:
    "Learn about California's Self-Determination Program — how it works, who is eligible, and how to get started managing your own disability services budget.",
};

export default function SelfDeterminationPage() {
  return (
    <div className="mx-auto max-w-4xl px-4 py-8">
      {/* Back link */}
      <Link
        href="/next-steps"
        className="mb-6 inline-flex items-center gap-1 text-sm font-medium text-muted-foreground hover:text-foreground"
      >
        <ArrowLeft className="h-4 w-4" aria-hidden="true" />
        All Guides
      </Link>

      {/* Header */}
      <div className="mb-8">
        <h1 className="text-3xl font-bold tracking-tight text-foreground">
          Self-Determination Program (SDP)
        </h1>
        <p className="mt-2 text-lg text-muted-foreground">
          Take control of your services and budget. The Self-Determination
          Program lets you decide what services you need, who provides them, and
          how your budget is spent.
        </p>
      </div>

      {/* Disclaimer */}
      <div className="mb-8 rounded-2xl border-2 border-yellow-400 bg-yellow-50 p-5">
        <div className="flex gap-3">
          <AlertCircle className="mt-0.5 h-5 w-5 shrink-0 text-yellow-600" aria-hidden="true" />
          <p className="text-sm text-yellow-800">
            This guide is for informational purposes only. Kindway is not
            affiliated with any Regional Center or government agency. The
            Self-Determination Program rules may change — always verify current
            requirements directly with your Regional Center.
          </p>
        </div>
      </div>

      {/* What is SDP? */}
      <section className="mb-6 rounded-2xl border border-border bg-white p-6">
        <h2 className="mb-4 flex items-center gap-2 text-xl font-semibold text-foreground">
          <Star className="h-6 w-6 text-primary" aria-hidden="true" />
          What Is Self-Determination?
        </h2>
        <div className="space-y-3 text-muted-foreground leading-relaxed">
          <p>
            The Self-Determination Program (SDP) is an alternative way to
            receive Regional Center services in California. Instead of the
            Regional Center choosing your service providers and managing your
            budget, <strong className="text-foreground">you</strong> get to
            make those decisions.
          </p>
          <p>
            With SDP, you receive an individual budget based on your assessed
            needs. You then have the freedom and responsibility to plan and
            manage your services within that budget. Many families find this
            gives them much more flexibility and control.
          </p>
          <p>
            SDP became available statewide in California in 2021 after years as
            a pilot program. It is growing rapidly, with thousands of
            participants across the state.
          </p>
        </div>
      </section>

      {/* Key Principles */}
      <section className="mb-6 rounded-2xl border border-border bg-white p-6">
        <h2 className="mb-4 flex items-center gap-2 text-xl font-semibold text-foreground">
          <Heart className="h-6 w-6 text-accent" aria-hidden="true" />
          The Five Principles of Self-Determination
        </h2>
        <div className="grid gap-3 sm:grid-cols-2">
          {[
            {
              title: "Freedom",
              desc: "You choose how you live your life, including where you live and how you spend your day.",
            },
            {
              title: "Authority",
              desc: "You have decision-making power over your budget and services.",
            },
            {
              title: "Support",
              desc: "You have the support you need to manage your services and make informed decisions.",
            },
            {
              title: "Responsibility",
              desc: "You accept responsibility for your decisions and the use of public funds.",
            },
            {
              title: "Confirmation",
              desc: "Your life decisions are confirmed by the people who know and care about you.",
            },
          ].map((principle) => (
            <div
              key={principle.title}
              className="rounded-xl border border-border p-4"
            >
              <h3 className="font-semibold text-foreground">
                {principle.title}
              </h3>
              <p className="mt-1 text-sm text-muted-foreground">
                {principle.desc}
              </p>
            </div>
          ))}
        </div>
      </section>

      {/* Who Is Eligible */}
      <section className="mb-6 rounded-2xl border border-border bg-white p-6">
        <h2 className="mb-4 flex items-center gap-2 text-xl font-semibold text-foreground">
          <Users className="h-6 w-6 text-secondary" aria-hidden="true" />
          Who Is Eligible?
        </h2>
        <div className="space-y-3 text-muted-foreground leading-relaxed">
          <p>
            To participate in SDP, you must be:
          </p>
          <ul className="space-y-2 ml-1">
            {[
              "A current Regional Center client (or eligible to become one)",
              "Willing to take on the responsibility of managing your own services",
              "Able to develop a person-centered plan (with support from your team)",
              "Have (or willing to get) a Financial Management Service (FMS) to handle payroll and billing",
            ].map((item, i) => (
              <li key={i} className="flex items-start gap-2">
                <CheckCircle className="mt-0.5 h-4 w-4 shrink-0 text-success" aria-hidden="true" />
                <span>{item}</span>
              </li>
            ))}
          </ul>
          <p>
            <strong className="text-foreground">Important:</strong> You do NOT
            need to already be receiving Regional Center services to apply. If
            you are going through the eligibility process, you can request SDP
            at the same time.
          </p>
        </div>
      </section>

      {/* How It Works - Steps */}
      <h2 className="mb-4 mt-10 text-2xl font-bold text-foreground">
        How to Get Started
      </h2>

      {/* Step 1 */}
      <section className="mb-4 rounded-2xl border border-border bg-white p-6">
        <div className="flex items-start gap-4">
          <div className="flex h-10 w-10 shrink-0 items-center justify-center rounded-full bg-primary text-white font-bold">
            1
          </div>
          <div className="flex-1">
            <h3 className="text-lg font-semibold text-foreground">
              Express Interest to Your Regional Center
            </h3>
            <div className="mt-3 space-y-2 text-muted-foreground">
              <p>
                Tell your Service Coordinator that you are interested in the
                Self-Determination Program. You can also call your Regional
                Center directly.
              </p>
              <p>
                They are required to provide you with information about SDP and
                help you understand the process.
              </p>
              <div className="mt-3 rounded-xl bg-muted p-4">
                <p className="text-sm font-medium text-foreground mb-2">
                  Bay Area Regional Center contacts:
                </p>
                <ul className="space-y-1 text-sm">
                  <li className="flex items-center gap-2">
                    <Phone className="h-3.5 w-3.5 text-primary" aria-hidden="true" />
                    Golden Gate RC: (415) 546-9222
                  </li>
                  <li className="flex items-center gap-2">
                    <Phone className="h-3.5 w-3.5 text-primary" aria-hidden="true" />
                    RC of the East Bay: (510) 618-6100
                  </li>
                  <li className="flex items-center gap-2">
                    <Phone className="h-3.5 w-3.5 text-primary" aria-hidden="true" />
                    San Andreas RC: (408) 374-9960
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </section>

      {/* Step 2 */}
      <section className="mb-4 rounded-2xl border border-border bg-white p-6">
        <div className="flex items-start gap-4">
          <div className="flex h-10 w-10 shrink-0 items-center justify-center rounded-full bg-primary text-white font-bold">
            2
          </div>
          <div className="flex-1">
            <h3 className="text-lg font-semibold text-foreground">
              Attend an Orientation
            </h3>
            <div className="mt-3 space-y-2 text-muted-foreground">
              <p>
                Your Regional Center will invite you to an SDP orientation
                session. This covers how the program works, your
                responsibilities, and what to expect.
              </p>
              <p>
                Orientations are offered in multiple languages and formats
                (in-person and virtual). You can bring family members or
                supporters.
              </p>
            </div>
          </div>
        </div>
      </section>

      {/* Step 3 */}
      <section className="mb-4 rounded-2xl border border-border bg-white p-6">
        <div className="flex items-start gap-4">
          <div className="flex h-10 w-10 shrink-0 items-center justify-center rounded-full bg-primary text-white font-bold">
            3
          </div>
          <div className="flex-1">
            <h3 className="text-lg font-semibold text-foreground">
              Get Your Individual Budget
            </h3>
            <div className="mt-3 space-y-2 text-muted-foreground">
              <p>
                The Regional Center will calculate your individual budget. This
                is based on the services and supports in your current IPP (or
                what you would be authorized for if you are new).
              </p>
              <p>
                Your budget is the total annual dollar amount you can use for
                services. It is <strong className="text-foreground">not a
                cash payment</strong> — it is managed through a Financial
                Management Service.
              </p>
              <div className="mt-3 rounded-xl border border-border bg-primary-light/30 p-4">
                <p className="text-sm">
                  <Lightbulb className="mr-1 inline h-4 w-4 text-primary" aria-hidden="true" />
                  <strong className="text-foreground">Tip:</strong> If you
                  disagree with your budget amount, you have the right to
                  appeal. Many families have successfully negotiated higher
                  budgets when they can demonstrate the need.
                </p>
              </div>
            </div>
          </div>
        </div>
      </section>

      {/* Step 4 */}
      <section className="mb-4 rounded-2xl border border-border bg-white p-6">
        <div className="flex items-start gap-4">
          <div className="flex h-10 w-10 shrink-0 items-center justify-center rounded-full bg-primary text-white font-bold">
            4
          </div>
          <div className="flex-1">
            <h3 className="text-lg font-semibold text-foreground">
              Build Your Team
            </h3>
            <div className="mt-3 space-y-2 text-muted-foreground">
              <p>
                In SDP, you create a person-centered team that helps you plan
                your services. Your team should include:
              </p>
              <ul className="space-y-2 ml-1">
                {[
                  "You (the participant) — you lead the team",
                  "An Independent Facilitator (IF) — helps run meetings and develop your plan",
                  "A Financial Management Service (FMS) — handles payroll, taxes, and billing",
                  "Family members or trusted supporters",
                  "Your Regional Center Service Coordinator",
                ].map((item, i) => (
                  <li key={i} className="flex items-start gap-2">
                    <span className="mt-1.5 h-1.5 w-1.5 shrink-0 rounded-full bg-primary" />
                    <span>{item}</span>
                  </li>
                ))}
              </ul>
              <div className="mt-3 rounded-xl border border-border bg-primary-light/30 p-4">
                <p className="text-sm">
                  <Lightbulb className="mr-1 inline h-4 w-4 text-primary" aria-hidden="true" />
                  <strong className="text-foreground">Tip:</strong> The
                  Independent Facilitator and FMS are paid from your SDP budget.
                  Choose providers you trust and feel comfortable working with.
                </p>
              </div>
            </div>
          </div>
        </div>
      </section>

      {/* Step 5 */}
      <section className="mb-4 rounded-2xl border border-border bg-white p-6">
        <div className="flex items-start gap-4">
          <div className="flex h-10 w-10 shrink-0 items-center justify-center rounded-full bg-primary text-white font-bold">
            5
          </div>
          <div className="flex-1">
            <h3 className="text-lg font-semibold text-foreground">
              Create Your Person-Centered Plan
            </h3>
            <div className="mt-3 space-y-2 text-muted-foreground">
              <p>
                With your Independent Facilitator, you will develop a
                person-centered plan. This is similar to an IPP but
                <strong className="text-foreground"> you are in the
                driver&apos;s seat</strong>. Your plan should cover:
              </p>
              <ul className="space-y-2 ml-1">
                {[
                  "Your goals and vision for your life",
                  "The services and supports you want",
                  "Who will provide those services (you can hire anyone — not just vendored providers)",
                  "How your budget will be allocated across services",
                  "How you will measure progress",
                ].map((item, i) => (
                  <li key={i} className="flex items-start gap-2">
                    <span className="mt-1.5 h-1.5 w-1.5 shrink-0 rounded-full bg-primary" />
                    <span>{item}</span>
                  </li>
                ))}
              </ul>
            </div>
          </div>
        </div>
      </section>

      {/* Step 6 */}
      <section className="mb-4 rounded-2xl border border-border bg-white p-6">
        <div className="flex items-start gap-4">
          <div className="flex h-10 w-10 shrink-0 items-center justify-center rounded-full bg-primary text-white font-bold">
            6
          </div>
          <div className="flex-1">
            <h3 className="text-lg font-semibold text-foreground">
              Manage Your Services & Budget
            </h3>
            <div className="mt-3 space-y-2 text-muted-foreground">
              <p>
                Once your plan is approved by the Regional Center, you start
                receiving services. Your FMS handles the financial side —
                paying providers, handling payroll taxes for workers you hire
                directly, and tracking your spending.
              </p>
              <p>
                You can adjust your spending throughout the year. If one
                service costs less than expected, you can redirect those funds
                to other needs within your plan.
              </p>
            </div>
          </div>
        </div>
      </section>

      {/* SDP vs Traditional */}
      <section className="mb-6 mt-10 rounded-2xl border border-border bg-white p-6">
        <h2 className="mb-4 flex items-center gap-2 text-xl font-semibold text-foreground">
          <BookOpen className="h-6 w-6 text-primary" aria-hidden="true" />
          SDP vs. Traditional Regional Center Services
        </h2>
        <div className="overflow-x-auto">
          <table className="w-full text-sm">
            <thead>
              <tr className="border-b border-border">
                <th className="pb-3 pr-4 text-left font-semibold text-foreground">
                  Feature
                </th>
                <th className="pb-3 pr-4 text-left font-semibold text-foreground">
                  Traditional
                </th>
                <th className="pb-3 text-left font-semibold text-primary">
                  Self-Determination
                </th>
              </tr>
            </thead>
            <tbody className="text-muted-foreground">
              {[
                ["Who chooses providers?", "Regional Center", "You"],
                ["Budget visibility", "You don't see it", "You know your exact budget"],
                ["Flexibility", "Limited to vendored providers", "Hire anyone qualified"],
                ["Who manages services?", "Service Coordinator", "You (with your team)"],
                ["Can you hire family?", "Usually no", "Yes, with some restrictions"],
                ["Unused funds", "Go back to RC", "Can redirect within your plan"],
                ["IFSP integration", "Standard process", "Can do IFSP through SDP"],
              ].map(([feature, traditional, sdp], i) => (
                <tr key={i} className="border-b border-border last:border-0">
                  <td className="py-3 pr-4 font-medium text-foreground">
                    {feature}
                  </td>
                  <td className="py-3 pr-4">{traditional}</td>
                  <td className="py-3 font-medium text-primary">{sdp}</td>
                </tr>
              ))}
            </tbody>
          </table>
        </div>
      </section>

      {/* What You Can Buy */}
      <section className="mb-6 rounded-2xl border border-border bg-white p-6">
        <h2 className="mb-4 flex items-center gap-2 text-xl font-semibold text-foreground">
          <DollarSign className="h-6 w-6 text-success" aria-hidden="true" />
          What Can You Use Your Budget For?
        </h2>
        <div className="space-y-3 text-muted-foreground">
          <p>
            Your SDP budget can cover any service or support that is related to
            your disability needs and included in your person-centered plan.
            Common uses include:
          </p>
          <div className="grid gap-2 sm:grid-cols-2">
            {[
              "ABA and behavioral services",
              "Speech and language therapy",
              "Occupational therapy",
              "Respite care",
              "Day program services",
              "Supported employment",
              "Transportation",
              "Assistive technology and devices",
              "Social skills groups and recreation",
              "Home modifications",
              "Independent Facilitator fees",
              "Financial Management Service fees",
            ].map((item, i) => (
              <div key={i} className="flex items-center gap-2">
                <CheckCircle className="h-4 w-4 shrink-0 text-success" aria-hidden="true" />
                <span className="text-sm">{item}</span>
              </div>
            ))}
          </div>
          <div className="mt-3 rounded-xl border border-border bg-primary-light/30 p-4">
            <p className="text-sm">
              <Lightbulb className="mr-1 inline h-4 w-4 text-primary" aria-hidden="true" />
              <strong className="text-foreground">Key advantage:</strong> In
              SDP, you can hire providers who are not vendored with the Regional
              Center. This means more choices and often better rates. You can
              even hire qualified family members for some services.
            </p>
          </div>
        </div>
      </section>

      {/* IFSP and SDP */}
      <section className="mb-6 rounded-2xl border border-border bg-white p-6">
        <h2 className="mb-4 flex items-center gap-2 text-xl font-semibold text-foreground">
          <FileText className="h-6 w-6 text-warning" aria-hidden="true" />
          SDP and IFSPs (Children Under 3)
        </h2>
        <div className="space-y-3 text-muted-foreground leading-relaxed">
          <p>
            Yes, families with children in the Early Start program (birth to 3)
            can participate in SDP. Your child&apos;s Individualized Family
            Service Plan (IFSP) services can be funded through your SDP budget.
          </p>
          <p>
            This is particularly popular with families because it allows you to:
          </p>
          <ul className="space-y-2 ml-1">
            {[
              "Choose your own therapists rather than being assigned one",
              "Get services from providers not vendored with the RC",
              "Have more control over scheduling and frequency of services",
              "Potentially access services faster by hiring directly",
            ].map((item, i) => (
              <li key={i} className="flex items-start gap-2">
                <CheckCircle className="mt-0.5 h-4 w-4 shrink-0 text-success" aria-hidden="true" />
                <span>{item}</span>
              </li>
            ))}
          </ul>
        </div>
      </section>

      {/* Your Rights */}
      <section className="mb-6 rounded-2xl border-2 border-accent bg-accent-light p-6">
        <h2 className="mb-4 flex items-center gap-2 text-xl font-semibold text-foreground">
          <Scale className="h-6 w-6 text-accent" aria-hidden="true" />
          Your Rights in SDP
        </h2>
        <ul className="space-y-3">
          {[
            "You can leave SDP and return to traditional services at any time",
            "You have the right to appeal your budget amount",
            "You have the right to choose your Independent Facilitator and FMS",
            "Your Regional Center cannot deny you SDP enrollment if you are eligible",
            "You have the right to receive SDP information in your preferred language",
            "You can request a fair hearing if you disagree with any decision",
          ].map((right, i) => (
            <li key={i} className="flex items-start gap-2 text-muted-foreground">
              <Shield className="mt-0.5 h-4 w-4 shrink-0 text-accent" aria-hidden="true" />
              <span>{right}</span>
            </li>
          ))}
        </ul>
        <div className="mt-4 rounded-xl bg-white/60 p-4">
          <p className="text-sm text-muted-foreground">
            <strong className="text-foreground">Need help?</strong> Office of
            Clients&apos; Rights Advocacy (OCRA):{" "}
            <a href="tel:1-800-390-7032" className="text-primary hover:underline">
              1-800-390-7032
            </a>
            . They provide free advocacy for Regional Center clients.
          </p>
        </div>
      </section>

      {/* Common Questions */}
      <section className="mb-6 rounded-2xl border border-border bg-white p-6">
        <h2 className="mb-4 text-xl font-semibold text-foreground">
          Common Questions
        </h2>
        <div className="space-y-4">
          {[
            {
              q: "How long does it take to get into SDP?",
              a: "The process typically takes 3-6 months from expressing interest to receiving services, depending on your Regional Center and whether you already have an IPP.",
            },
            {
              q: "Is my budget the same as what I was getting in traditional services?",
              a: "Your budget is calculated based on your current authorized services. It should be equivalent, but you may need to advocate if you feel it's too low. You have the right to appeal.",
            },
            {
              q: "Can I hire a family member as a service provider?",
              a: "Yes, in many cases. Family members can be hired for some services like respite care, supported living support, and personal assistance. There are some restrictions — your FMS can explain the rules.",
            },
            {
              q: "What is a Financial Management Service (FMS)?",
              a: "An FMS is an organization that handles the money side of SDP. They process timesheets, pay your providers, handle payroll taxes, and track your spending. Think of them as your bookkeeper. The FMS fee comes out of your SDP budget.",
            },
            {
              q: "What if I don't like SDP?",
              a: "You can return to traditional Regional Center services at any time. There is no penalty for leaving SDP.",
            },
            {
              q: "Can I do SDP with an IFSP for my young child?",
              a: "Yes! Many families use SDP to manage their Early Start/IFSP services. This gives you the ability to choose your own therapists and have more scheduling flexibility.",
            },
          ].map(({ q, a }, i) => (
            <div
              key={i}
              className="border-b border-border pb-4 last:border-0 last:pb-0"
            >
              <h3 className="font-semibold text-foreground">{q}</h3>
              <p className="mt-1 text-sm text-muted-foreground">{a}</p>
            </div>
          ))}
        </div>
      </section>

      {/* Helpful Resources */}
      <section className="mb-6 rounded-2xl border border-border bg-white p-6">
        <h2 className="mb-4 text-xl font-semibold text-foreground">
          Helpful Resources
        </h2>
        <div className="space-y-3">
          <div className="rounded-xl border border-border p-4">
            <h3 className="font-semibold text-foreground">
              Department of Developmental Services (DDS)
            </h3>
            <p className="mt-1 text-sm text-muted-foreground">
              Official SDP information from the state of California
            </p>
            <a
              href="https://www.dds.ca.gov/initiatives/sdp/"
              target="_blank"
              rel="noopener noreferrer"
              className="mt-2 inline-flex items-center gap-1 text-sm text-primary hover:underline"
            >
              dds.ca.gov/initiatives/sdp/
            </a>
          </div>
          <div className="rounded-xl border border-border p-4">
            <h3 className="font-semibold text-foreground">
              Disability Rights California / OCRA
            </h3>
            <p className="mt-1 text-sm text-muted-foreground">
              Free advocacy and support for Regional Center clients
            </p>
            <p className="mt-1 text-sm">
              <Phone className="mr-1 inline h-3.5 w-3.5 text-primary" aria-hidden="true" />
              <a href="tel:1-800-390-7032" className="text-primary hover:underline">
                1-800-390-7032
              </a>
            </p>
          </div>
          <div className="rounded-xl border border-border p-4">
            <h3 className="font-semibold text-foreground">
              Statewide Self-Determination Advisory Committee
            </h3>
            <p className="mt-1 text-sm text-muted-foreground">
              Community advocacy and information about SDP
            </p>
            <a
              href="https://www.dds.ca.gov/initiatives/sdp/statewide-sdac/"
              target="_blank"
              rel="noopener noreferrer"
              className="mt-2 inline-flex items-center gap-1 text-sm text-primary hover:underline"
            >
              Statewide SDAC page
            </a>
          </div>
        </div>
      </section>

      {/* CTA */}
      <div className="rounded-2xl border border-primary bg-primary-light p-6 text-center">
        <h2 className="text-lg font-semibold text-foreground">
          Ready to explore SDP?
        </h2>
        <p className="mt-2 text-sm text-muted-foreground">
          Start by calling your Regional Center and telling them you&apos;re
          interested in the Self-Determination Program. You can also browse our
          provider directory for Independent Facilitators and FMS providers.
        </p>
        <div className="mt-4 flex flex-col gap-3 sm:flex-row sm:justify-center">
          <Link
            href="/providers"
            className="inline-flex h-11 items-center justify-center gap-2 rounded-xl bg-primary px-5 font-semibold text-white transition-colors hover:bg-primary-dark"
          >
            Find Providers
          </Link>
          <Link
            href="/next-steps/regional-center"
            className="inline-flex h-11 items-center justify-center gap-2 rounded-xl border-2 border-border bg-white px-5 font-semibold transition-colors hover:bg-muted"
          >
            Regional Center Guide
          </Link>
        </div>
      </div>
    </div>
  );
}
