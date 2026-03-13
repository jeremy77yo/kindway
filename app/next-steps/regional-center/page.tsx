import { Metadata } from "next";
import Link from "next/link";
import {
  ArrowLeft,
  Phone,
  FileText,
  Users,
  CheckCircle,
  AlertCircle,
  Scale,
  Clock,
  ClipboardList,
  UserCheck,
  HeartHandshake,
  ShieldCheck,
  HelpCircle,
  Globe,
  MapPin,
  ExternalLink,
  Lightbulb,
  BookOpen,
} from "lucide-react";

export const metadata: Metadata = {
  title: "Becoming a Regional Center Client",
  description:
    "A step-by-step guide to the Regional Center intake process in the Bay Area, including eligibility, referrals, assessments, and your rights.",
};

/* -------------------------------------------------------------------------- */
/*  Data                                                                       */
/* -------------------------------------------------------------------------- */

const REGIONAL_CENTERS = [
  {
    name: "Golden Gate Regional Center",
    counties: "San Francisco, San Mateo, Marin",
    phone: "(415) 546-9222",
    phoneTel: "tel:+14155469222",
    website: "https://www.ggrc.org",
    address: "1355 Market Street, Suite 220, San Francisco, CA 94103",
  },
  {
    name: "Regional Center of the East Bay",
    counties: "Alameda, Contra Costa",
    phone: "(510) 618-6100",
    phoneTel: "tel:+15106186100",
    website: "https://www.rceb.org",
    address: "500 Davis Street, Suite 100, San Leandro, CA 94577",
  },
  {
    name: "San Andreas Regional Center",
    counties: "Santa Clara, Santa Cruz, San Benito, Monterey",
    phone: "(408) 374-9960",
    phoneTel: "tel:+14083749960",
    website: "https://www.sarc.org",
    address: "300 Orchard City Drive, Suite 170, Campbell, CA 95008",
  },
];

const DOCUMENTS_TO_BRING = [
  "ID or birth certificate",
  "Medical records and evaluations",
  "School records (IEPs, report cards)",
  "Any psychological or developmental assessments",
  "Insurance information (Medi-Cal, private insurance)",
];

const COMMON_SERVICES = [
  "Applied Behavior Analysis (ABA) therapy",
  "Speech and language therapy",
  "Occupational therapy",
  "Respite care",
  "Supported living services",
  "Day programs and activities",
  "Transportation assistance",
  "Behavioral support services",
];

const IPP_CHECKLIST = [
  "Specific services (therapy, respite, behavioral support, etc.)",
  "How many hours per week or month for each service",
  "Who will provide the services (you can request specific vendors)",
  "How progress will be measured",
  "When the plan will be reviewed (at least annually)",
];

const YOUR_RIGHTS = [
  "Right to receive services in your preferred language",
  "Right to appeal any Regional Center decision (within 30 days)",
  "Right to request an independent evaluation",
  "Right to access and review your records",
  "Right to change your Service Coordinator at any time",
  "Right to file a complaint with the Department of Developmental Services",
  "Right to a Fair Hearing if you disagree with the Regional Center\u2019s decision",
];

const FAQ_ITEMS = [
  {
    question: "How long does the whole process take?",
    answer:
      "From referral to receiving services, the process typically takes 4 to 8 months. The Regional Center must complete the evaluation within 120 days of the initial referral and develop the IPP within 60 days after eligibility is determined.",
  },
  {
    question: "Does it cost anything?",
    answer:
      "Regional Center services are free to eligible individuals regardless of income. Some services may require Medi-Cal or private insurance as a first payer, but the Regional Center covers what insurance does not.",
  },
  {
    question: "What if my child is under 3?",
    answer:
      "Contact your Regional Center about the Early Start program. The process is faster and eligibility criteria are broader. Children with developmental delays or those at risk of delays may qualify.",
  },
  {
    question: "What if I\u2019m an adult seeking services?",
    answer:
      "Adults can self-refer to the Regional Center. The intake and evaluation process is the same. You do not need a doctor or family member to make the referral for you.",
  },
  {
    question: "What if I\u2019m denied eligibility?",
    answer:
      "You have the right to appeal. The Regional Center must provide a written notice explaining the denial and your appeal rights. Contact the Office of Clients\u2019 Rights Advocacy (OCRA) at 1-800-390-7032 for free advocacy support.",
  },
  {
    question: "Can I get services while waiting for eligibility?",
    answer:
      "In some cases, yes. Ask your intake coordinator about emergency or provisional services, especially if there is an urgent need. Early Start services for children under 3 can sometimes begin before a full eligibility determination.",
  },
];

/* -------------------------------------------------------------------------- */
/*  Component                                                                  */
/* -------------------------------------------------------------------------- */

export default function RegionalCenterGuidePage() {
  return (
    <div className="mx-auto max-w-4xl px-4 py-8">
      {/* Back link */}
      <Link
        href="/next-steps"
        className="mb-6 inline-flex items-center gap-1.5 rounded-lg px-1 py-1 text-sm font-medium text-muted-foreground transition-colors hover:text-foreground focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-primary focus-visible:ring-offset-2"
      >
        <ArrowLeft className="h-4 w-4" aria-hidden="true" />
        <span>Back to Next Steps</span>
      </Link>

      {/* Page header */}
      <header className="mb-8">
        <div className="mb-4 flex items-center gap-3">
          <div className="flex h-12 w-12 items-center justify-center rounded-xl bg-blue-50 text-blue-600">
            <BookOpen className="h-6 w-6" aria-hidden="true" />
          </div>
          <div>
            <h1 className="text-3xl font-bold tracking-tight text-foreground">
              Becoming a Regional Center Client
            </h1>
          </div>
        </div>
        <p className="text-lg text-muted-foreground">
          A step-by-step guide to understanding the Regional Center intake
          process, from your first phone call to receiving services.
        </p>
      </header>

      {/* Disclaimer */}
      <div className="mb-8 rounded-2xl border-2 border-yellow-400 bg-yellow-50 p-5">
        <div className="flex gap-3">
          <AlertCircle
            className="mt-0.5 h-5 w-5 shrink-0 text-yellow-600"
            aria-hidden="true"
          />
          <div className="text-sm text-muted-foreground">
            <p className="font-semibold text-foreground">
              Informational purposes only
            </p>
            <p className="mt-1">
              Kindway is not affiliated with any Regional Center or government
              agency. This guide is based on publicly available information and
              may not reflect the most recent policy changes. Always verify
              current requirements directly with your Regional Center.
            </p>
          </div>
        </div>
      </div>

      {/* ---------- Introduction ---------- */}
      <section className="mb-6 rounded-2xl border border-border bg-white p-6">
        <h2 className="mb-4 text-xl font-semibold text-foreground">
          What Are Regional Centers?
        </h2>
        <div className="space-y-3 text-muted-foreground">
          <p>
            Regional Centers are nonprofit organizations that coordinate
            services for people with developmental disabilities in California.
            There are 21 Regional Centers across the state. In the Bay Area,
            the three Regional Centers are:
          </p>
          <ul className="space-y-2 pl-1">
            {REGIONAL_CENTERS.map((rc) => (
              <li key={rc.name} className="flex items-start gap-2">
                <MapPin
                  className="mt-1 h-4 w-4 shrink-0 text-primary"
                  aria-hidden="true"
                />
                <span>
                  <strong className="text-foreground">{rc.name}</strong> &mdash;{" "}
                  {rc.counties} {rc.counties.includes(",") ? "counties" : "County"}
                </span>
              </li>
            ))}
          </ul>
          <p>
            Regional Centers are funded by the California Department of
            Developmental Services (DDS) but operate as independent nonprofit
            organizations.
          </p>
        </div>
      </section>

      {/* ---------- Who Is Eligible ---------- */}
      <section className="mb-6 rounded-2xl border border-border bg-white p-6">
        <div className="mb-4 flex items-center gap-3">
          <div className="flex h-10 w-10 items-center justify-center rounded-xl bg-green-50 text-green-600">
            <UserCheck className="h-5 w-5" aria-hidden="true" />
          </div>
          <h2 className="text-xl font-semibold text-foreground">
            Who Is Eligible?
          </h2>
        </div>
        <ul className="space-y-3 text-muted-foreground">
          <li className="flex items-start gap-2">
            <CheckCircle
              className="mt-1 h-4 w-4 shrink-0 text-success"
              aria-hidden="true"
            />
            <span>
              People with developmental disabilities that begin before age 18
            </span>
          </li>
          <li className="flex items-start gap-2">
            <CheckCircle
              className="mt-1 h-4 w-4 shrink-0 text-success"
              aria-hidden="true"
            />
            <span>
              Qualifying conditions include: intellectual disability, cerebral
              palsy, epilepsy, autism, and conditions requiring similar services
            </span>
          </li>
          <li className="flex items-start gap-2">
            <CheckCircle
              className="mt-1 h-4 w-4 shrink-0 text-success"
              aria-hidden="true"
            />
            <span>
              <strong className="text-foreground">For children under 3:</strong>{" "}
              The Early Start program accepts children with developmental delays
              or those at risk of delays
            </span>
          </li>
          <li className="flex items-start gap-2">
            <CheckCircle
              className="mt-1 h-4 w-4 shrink-0 text-success"
              aria-hidden="true"
            />
            <span>
              The condition must be expected to continue indefinitely and
              represent a substantial disability
            </span>
          </li>
        </ul>
      </section>

      {/* ---------- Step 1: Make a Referral ---------- */}
      <StepCard
        step={1}
        title="Make a Referral"
        icon={Phone}
        iconBg="bg-blue-50"
        iconColor="text-blue-600"
      >
        <div className="space-y-3 text-muted-foreground">
          <p>
            Anyone can make a referral &mdash; you can refer yourself, or a
            family member, doctor, teacher, or social worker can refer on your
            behalf.
          </p>
          <ul className="space-y-2">
            <li className="flex items-start gap-2">
              <CheckCircle
                className="mt-1 h-4 w-4 shrink-0 text-success"
                aria-hidden="true"
              />
              <span>
                Contact your local Regional Center directly by phone
              </span>
            </li>
            <li className="flex items-start gap-2">
              <CheckCircle
                className="mt-1 h-4 w-4 shrink-0 text-success"
                aria-hidden="true"
              />
              <span>
                You do <strong className="text-foreground">not</strong> need a
                diagnosis to request an evaluation
              </span>
            </li>
          </ul>

          {/* Phone numbers */}
          <div className="mt-4 space-y-2">
            {REGIONAL_CENTERS.map((rc) => (
              <a
                key={rc.phoneTel}
                href={rc.phoneTel}
                className="flex items-center gap-2 rounded-xl bg-muted px-4 py-3 text-sm font-medium text-foreground transition-colors hover:bg-primary-light"
              >
                <Phone
                  className="h-4 w-4 shrink-0 text-primary"
                  aria-hidden="true"
                />
                <span className="truncate">
                  {rc.name}: {rc.phone}
                </span>
              </a>
            ))}
          </div>

          <div className="mt-4 rounded-xl bg-blue-50 p-4">
            <p className="text-sm font-medium text-blue-800">
              <Lightbulb
                className="mb-0.5 mr-1.5 inline h-4 w-4"
                aria-hidden="true"
              />
              What to say when you call:
            </p>
            <p className="mt-1 text-sm italic text-blue-700">
              &ldquo;I&apos;d like to make a referral for an intake evaluation
              for [yourself / your child].&rdquo;
            </p>
          </div>
        </div>
      </StepCard>

      {/* ---------- Step 2: Intake Interview ---------- */}
      <StepCard
        step={2}
        title="Intake Interview"
        icon={ClipboardList}
        iconBg="bg-purple-50"
        iconColor="text-purple-600"
      >
        <div className="space-y-3 text-muted-foreground">
          <div className="flex items-start gap-2 rounded-xl bg-amber-50 px-4 py-3">
            <Clock
              className="mt-0.5 h-4 w-4 shrink-0 text-amber-600"
              aria-hidden="true"
            />
            <p className="text-sm text-amber-800">
              <strong>Timeline:</strong> The Regional Center must respond within
              15 working days of your referral.
            </p>
          </div>
          <p>
            You will meet with an intake coordinator who will gather information
            about your situation. They will ask about:
          </p>
          <ul className="space-y-1 pl-5">
            <li className="list-disc">Developmental history</li>
            <li className="list-disc">Current challenges and support needs</li>
            <li className="list-disc">What services you are seeking</li>
          </ul>

          <div className="mt-4">
            <p className="mb-2 font-medium text-foreground">
              <FileText
                className="mb-0.5 mr-1.5 inline h-4 w-4 text-primary"
                aria-hidden="true"
              />
              Documents to bring:
            </p>
            <ul className="space-y-2">
              {DOCUMENTS_TO_BRING.map((doc) => (
                <li key={doc} className="flex items-start gap-2">
                  <CheckCircle
                    className="mt-1 h-4 w-4 shrink-0 text-success"
                    aria-hidden="true"
                  />
                  <span>{doc}</span>
                </li>
              ))}
            </ul>
          </div>
        </div>
      </StepCard>

      {/* ---------- Step 3: Assessment & Evaluation ---------- */}
      <StepCard
        step={3}
        title="Assessment & Evaluation"
        icon={FileText}
        iconBg="bg-teal-50"
        iconColor="text-teal-600"
      >
        <div className="space-y-3 text-muted-foreground">
          <p>
            The Regional Center will arrange assessments at no cost to you. These
            may include:
          </p>
          <ul className="space-y-1 pl-5">
            <li className="list-disc">Psychological testing</li>
            <li className="list-disc">Medical evaluations</li>
            <li className="list-disc">Adaptive behavior assessments</li>
          </ul>

          <div className="flex items-start gap-2 rounded-xl bg-amber-50 px-4 py-3">
            <Clock
              className="mt-0.5 h-4 w-4 shrink-0 text-amber-600"
              aria-hidden="true"
            />
            <p className="text-sm text-amber-800">
              <strong>Timeline:</strong> The Regional Center must complete the
              evaluation within 120 days of the initial referral.
            </p>
          </div>

          <ul className="mt-2 space-y-2">
            <li className="flex items-start gap-2">
              <CheckCircle
                className="mt-1 h-4 w-4 shrink-0 text-success"
                aria-hidden="true"
              />
              <span>
                You have the right to participate in choosing assessors
              </span>
            </li>
          </ul>

          <div className="rounded-xl bg-blue-50 p-4">
            <p className="text-sm text-blue-800">
              <Lightbulb
                className="mb-0.5 mr-1.5 inline h-4 w-4"
                aria-hidden="true"
              />
              <strong>Tip:</strong> Ask for copies of all assessment reports.
              These documents are valuable for other services and programs.
            </p>
          </div>
        </div>
      </StepCard>

      {/* ---------- Step 4: Eligibility Determination ---------- */}
      <StepCard
        step={4}
        title="Eligibility Determination"
        icon={UserCheck}
        iconBg="bg-green-50"
        iconColor="text-green-600"
      >
        <div className="space-y-3 text-muted-foreground">
          <p>
            A team will review the assessment results and make a determination
            about eligibility. You will receive a written notice of the decision.
          </p>
          <ul className="space-y-2">
            <li className="flex items-start gap-2">
              <CheckCircle
                className="mt-1 h-4 w-4 shrink-0 text-success"
                aria-hidden="true"
              />
              <span>
                <strong className="text-foreground">If eligible:</strong> You
                will be assigned a Service Coordinator who will help develop your
                service plan
              </span>
            </li>
            <li className="flex items-start gap-2">
              <AlertCircle
                className="mt-1 h-4 w-4 shrink-0 text-warning"
                aria-hidden="true"
              />
              <span>
                <strong className="text-foreground">If denied:</strong> You have
                the right to appeal the decision (see Your Rights section below)
              </span>
            </li>
          </ul>
        </div>
      </StepCard>

      {/* ---------- Step 5: Individual Program Plan (IPP) ---------- */}
      <StepCard
        step={5}
        title="Individual Program Plan (IPP)"
        icon={ClipboardList}
        iconBg="bg-indigo-50"
        iconColor="text-indigo-600"
      >
        <div className="space-y-3 text-muted-foreground">
          <div className="flex items-start gap-2 rounded-xl bg-amber-50 px-4 py-3">
            <Clock
              className="mt-0.5 h-4 w-4 shrink-0 text-amber-600"
              aria-hidden="true"
            />
            <p className="text-sm text-amber-800">
              <strong>Timeline:</strong> Within 60 days of eligibility, you will
              create an IPP with your Service Coordinator.
            </p>
          </div>

          <p>
            The IPP is <strong className="text-foreground">your</strong> plan
            &mdash; you are an equal participant in creating it. It outlines the
            services and supports you will receive.
          </p>
          <p>
            <strong className="text-foreground">
              For children under 3:
            </strong>{" "}
            This is called an Individualized Family Service Plan (IFSP).
          </p>

          <div className="mt-2">
            <p className="mb-2 font-medium text-foreground">
              What to discuss at your IPP meeting:
            </p>
            <ul className="space-y-2">
              {IPP_CHECKLIST.map((item) => (
                <li key={item} className="flex items-start gap-2">
                  <CheckCircle
                    className="mt-1 h-4 w-4 shrink-0 text-success"
                    aria-hidden="true"
                  />
                  <span>{item}</span>
                </li>
              ))}
            </ul>
          </div>

          <div className="rounded-xl bg-blue-50 p-4">
            <p className="text-sm text-blue-800">
              <Lightbulb
                className="mb-0.5 mr-1.5 inline h-4 w-4"
                aria-hidden="true"
              />
              <strong>Tip:</strong> You can bring an advocate or support person
              to your IPP meeting. Having someone with you can help make sure
              your needs are fully represented.
            </p>
          </div>
        </div>
      </StepCard>

      {/* ---------- Step 6: Receiving Services ---------- */}
      <StepCard
        step={6}
        title="Receiving Services"
        icon={HeartHandshake}
        iconBg="bg-pink-50"
        iconColor="text-pink-600"
      >
        <div className="space-y-3 text-muted-foreground">
          <p>
            Once your IPP is in place, services are coordinated by your Service
            Coordinator. You can choose from vendored (approved) service
            providers.
          </p>

          <div className="mt-2">
            <p className="mb-2 font-medium text-foreground">
              Common services include:
            </p>
            <div className="grid gap-2 sm:grid-cols-2">
              {COMMON_SERVICES.map((service) => (
                <div key={service} className="flex items-start gap-2">
                  <CheckCircle
                    className="mt-1 h-4 w-4 shrink-0 text-success"
                    aria-hidden="true"
                  />
                  <span className="text-sm">{service}</span>
                </div>
              ))}
            </div>
          </div>

          <ul className="mt-2 space-y-2">
            <li className="flex items-start gap-2">
              <CheckCircle
                className="mt-1 h-4 w-4 shrink-0 text-success"
                aria-hidden="true"
              />
              <span>
                Your Service Coordinator should check in with you regularly
              </span>
            </li>
            <li className="flex items-start gap-2">
              <CheckCircle
                className="mt-1 h-4 w-4 shrink-0 text-success"
                aria-hidden="true"
              />
              <span>
                You can request an IPP review at any time &mdash; you do not
                have to wait for the annual review
              </span>
            </li>
          </ul>
        </div>
      </StepCard>

      {/* ---------- Your Rights ---------- */}
      <section className="mb-6 rounded-2xl border-2 border-primary/30 bg-primary-light/30 p-6">
        <div className="mb-4 flex items-center gap-3">
          <div className="flex h-10 w-10 items-center justify-center rounded-xl bg-primary-light text-primary">
            <Scale className="h-5 w-5" aria-hidden="true" />
          </div>
          <h2 className="text-xl font-semibold text-foreground">Your Rights</h2>
        </div>
        <ul className="space-y-3 text-muted-foreground">
          {YOUR_RIGHTS.map((right) => (
            <li key={right} className="flex items-start gap-2">
              <ShieldCheck
                className="mt-1 h-4 w-4 shrink-0 text-primary"
                aria-hidden="true"
              />
              <span>{right}</span>
            </li>
          ))}
        </ul>

        <div className="mt-5 rounded-xl bg-white p-4">
          <p className="text-sm font-medium text-foreground">
            <Scale
              className="mb-0.5 mr-1.5 inline h-4 w-4 text-primary"
              aria-hidden="true"
            />
            Fair Hearing Process
          </p>
          <p className="mt-1 text-sm text-muted-foreground">
            If you disagree with a Regional Center decision, you can request a
            Fair Hearing through the Office of Administrative Hearings. The
            Regional Center must provide you with written instructions on how to
            file.
          </p>
        </div>

        <div className="mt-4 rounded-xl bg-white p-4">
          <p className="text-sm font-medium text-foreground">
            <Phone
              className="mb-0.5 mr-1.5 inline h-4 w-4 text-primary"
              aria-hidden="true"
            />
            Office of Clients&apos; Rights Advocacy (OCRA)
          </p>
          <p className="mt-1 text-sm text-muted-foreground">
            Free advocacy support for Regional Center clients and applicants.
          </p>
          <a
            href="tel:+18003907032"
            className="mt-2 inline-flex items-center gap-1.5 rounded-lg px-3 py-2 text-sm font-medium text-primary transition-colors hover:bg-primary-light"
          >
            <Phone className="h-4 w-4" aria-hidden="true" />
            1-800-390-7032
          </a>
        </div>
      </section>

      {/* ---------- Common Questions ---------- */}
      <section className="mb-6 rounded-2xl border border-border bg-white p-6">
        <div className="mb-5 flex items-center gap-3">
          <div className="flex h-10 w-10 items-center justify-center rounded-xl bg-amber-50 text-amber-600">
            <HelpCircle className="h-5 w-5" aria-hidden="true" />
          </div>
          <h2 className="text-xl font-semibold text-foreground">
            Common Questions
          </h2>
        </div>
        <div className="divide-y divide-border">
          {FAQ_ITEMS.map((item, index) => (
            <div
              key={index}
              className={index === 0 ? "pb-4" : "py-4"}
            >
              <h3 className="font-semibold text-foreground">{item.question}</h3>
              <p className="mt-1 text-sm text-muted-foreground">
                {item.answer}
              </p>
            </div>
          ))}
        </div>
      </section>

      {/* ---------- Helpful Resources ---------- */}
      <section className="mb-6 rounded-2xl border border-border bg-white p-6">
        <div className="mb-5 flex items-center gap-3">
          <div className="flex h-10 w-10 items-center justify-center rounded-xl bg-cyan-50 text-cyan-600">
            <Globe className="h-5 w-5" aria-hidden="true" />
          </div>
          <h2 className="text-xl font-semibold text-foreground">
            Helpful Resources
          </h2>
        </div>

        {/* Regional Center contact cards */}
        <h3 className="mb-3 font-semibold text-foreground">
          Bay Area Regional Centers
        </h3>
        <div className="mb-6 grid gap-3 sm:grid-cols-1">
          {REGIONAL_CENTERS.map((rc) => (
            <div
              key={rc.name}
              className="rounded-xl border border-border p-4"
            >
              <h4 className="font-semibold text-foreground">{rc.name}</h4>
              <p className="mt-1 text-sm text-muted-foreground">
                {rc.counties} {rc.counties.includes(",") ? "counties" : "County"}
              </p>
              <div className="mt-3 flex flex-wrap gap-2">
                <a
                  href={rc.phoneTel}
                  className="inline-flex items-center gap-1.5 rounded-lg bg-muted px-3 py-2 text-sm font-medium text-foreground transition-colors hover:bg-primary-light hover:text-primary"
                >
                  <Phone className="h-3.5 w-3.5" aria-hidden="true" />
                  {rc.phone}
                </a>
                <a
                  href={rc.website}
                  target="_blank"
                  rel="noopener noreferrer"
                  className="inline-flex items-center gap-1.5 rounded-lg bg-muted px-3 py-2 text-sm font-medium text-foreground transition-colors hover:bg-primary-light hover:text-primary"
                >
                  <ExternalLink className="h-3.5 w-3.5" aria-hidden="true" />
                  Website
                </a>
              </div>
            </div>
          ))}
        </div>

        {/* Additional resources */}
        <h3 className="mb-3 font-semibold text-foreground">
          Additional Resources
        </h3>
        <div className="space-y-2">
          <a
            href="https://www.dds.ca.gov"
            target="_blank"
            rel="noopener noreferrer"
            className="flex items-center gap-3 rounded-xl px-4 py-3 text-sm transition-colors hover:bg-muted"
          >
            <ExternalLink
              className="h-4 w-4 shrink-0 text-primary"
              aria-hidden="true"
            />
            <div>
              <span className="font-medium text-foreground">
                Department of Developmental Services (DDS)
              </span>
              <span className="block text-muted-foreground">dds.ca.gov</span>
            </div>
          </a>
          <a
            href="https://www.disabilityrightsca.org/what-we-do/programs/office-of-clients-rights-advocacy-ocra"
            target="_blank"
            rel="noopener noreferrer"
            className="flex items-center gap-3 rounded-xl px-4 py-3 text-sm transition-colors hover:bg-muted"
          >
            <ExternalLink
              className="h-4 w-4 shrink-0 text-primary"
              aria-hidden="true"
            />
            <div>
              <span className="font-medium text-foreground">
                Office of Clients&apos; Rights Advocacy (OCRA)
              </span>
              <span className="block text-muted-foreground">
                disabilityrightsca.org
              </span>
            </div>
          </a>
          <a
            href="https://www.disabilityrightsca.org"
            target="_blank"
            rel="noopener noreferrer"
            className="flex items-center gap-3 rounded-xl px-4 py-3 text-sm transition-colors hover:bg-muted"
          >
            <ExternalLink
              className="h-4 w-4 shrink-0 text-primary"
              aria-hidden="true"
            />
            <div>
              <span className="font-medium text-foreground">
                Disability Rights California
              </span>
              <span className="block text-muted-foreground">
                disabilityrightsca.org
              </span>
            </div>
          </a>
        </div>
      </section>

      {/* Bottom back link */}
      <div className="mt-8 text-center">
        <Link
          href="/next-steps"
          className="inline-flex items-center gap-1.5 rounded-lg px-4 py-2 text-sm font-medium text-muted-foreground transition-colors hover:text-foreground"
        >
          <ArrowLeft className="h-4 w-4" aria-hidden="true" />
          Back to all guides
        </Link>
      </div>
    </div>
  );
}

/* -------------------------------------------------------------------------- */
/*  Step Card Component                                                        */
/* -------------------------------------------------------------------------- */

function StepCard({
  step,
  title,
  icon: Icon,
  iconBg,
  iconColor,
  children,
}: {
  step: number;
  title: string;
  icon: React.ComponentType<{ className?: string }>;
  iconBg: string;
  iconColor: string;
  children: React.ReactNode;
}) {
  return (
    <section className="mb-6 rounded-2xl border border-border bg-white p-6">
      <div className="mb-4 flex items-center gap-3">
        <div className="relative">
          <div
            className={`flex h-10 w-10 items-center justify-center rounded-xl ${iconBg} ${iconColor}`}
          >
            <Icon className="h-5 w-5" aria-hidden="true" />
          </div>
          <span className="absolute -right-1 -top-1 flex h-5 w-5 items-center justify-center rounded-full bg-primary text-[10px] font-bold text-white">
            {step}
          </span>
        </div>
        <h2 className="text-xl font-semibold text-foreground">
          Step {step}: {title}
        </h2>
      </div>
      {children}
    </section>
  );
}
