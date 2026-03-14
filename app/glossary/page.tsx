import { Metadata } from "next";
import { BookOpen, Search } from "lucide-react";
import { GlossarySearch } from "./glossary-search";

export const metadata: Metadata = {
  title: "Glossary",
  description:
    "Plain-language definitions of disability services terms, acronyms, and jargon used by Regional Centers, schools, and providers.",
};

export interface GlossaryTerm {
  term: string;
  aka?: string;
  definition: string;
  category: string;
}

const GLOSSARY_TERMS: GlossaryTerm[] = [
  // Regional Center & Lanterman Act
  {
    term: "Regional Center",
    definition:
      "A nonprofit agency that coordinates lifelong services for people with developmental disabilities in California. There are 21 Regional Centers across the state. Your Regional Center assigns you a service coordinator and helps you access services.",
    category: "Regional Center",
  },
  {
    term: "IPP (Individual Program Plan)",
    aka: "Individual Program Plan",
    definition:
      "A written plan created by you and your Regional Center service coordinator that describes your goals, the services you need, and who will provide them. You have a right to participate in creating your IPP and to update it at any time.",
    category: "Regional Center",
  },
  {
    term: "Service Coordinator",
    aka: "Case Manager",
    definition:
      "The person at the Regional Center assigned to help you access services, develop your IPP, and connect you with providers. If your service coordinator is not responsive, you have the right to request a new one.",
    category: "Regional Center",
  },
  {
    term: "Lanterman Act",
    aka: "Lanterman Developmental Disabilities Services Act",
    definition:
      "The California law that gives people with developmental disabilities the right to services and supports they need to live, work, and participate in their communities. It is the legal foundation for the Regional Center system.",
    category: "Regional Center",
  },
  {
    term: "POS (Purchase of Service)",
    aka: "Purchase of Service",
    definition:
      "When the Regional Center buys a service from a provider on your behalf. For example, they might purchase ILS, respite care, or day program services for you through a vendored provider.",
    category: "Regional Center",
  },
  {
    term: "Vendored / Vendorization",
    definition:
      "The process by which a service provider becomes approved by the Regional Center to deliver services. A \"vendored provider\" has been reviewed and authorized to accept Regional Center funding.",
    category: "Regional Center",
  },
  {
    term: "Fair Hearing",
    definition:
      "A formal process where you can appeal a Regional Center decision you disagree with — such as a denial, reduction, or termination of services. You have the right to request a fair hearing within 30 days of a decision.",
    category: "Regional Center",
  },
  {
    term: "OCRA (Office of Clients' Rights Advocacy)",
    aka: "Office of Clients' Rights Advocacy",
    definition:
      "A free service of Disability Rights California that helps Regional Center consumers understand their rights, resolve problems with services, and prepare for fair hearings. Call (800) 390-7032.",
    category: "Regional Center",
  },

  // Services
  {
    term: "ILS (Independent Living Services)",
    aka: "Independent Living Services",
    definition:
      "A Regional Center service that teaches adults with developmental disabilities daily living skills like cooking, budgeting, using transportation, and managing a household. ILS provides periodic check-ins and skill-building sessions.",
    category: "Services",
  },
  {
    term: "SLS (Supported Living Services)",
    aka: "Supported Living Services",
    definition:
      "More intensive support than ILS — SLS provides daily in-home assistance for adults who need ongoing help with daily activities. The goal is to help people live in their own homes as independently as possible.",
    category: "Services",
  },
  {
    term: "Day Program",
    aka: "Activity Center, Community Integration Program",
    definition:
      "A structured program during daytime hours for adults with developmental disabilities, offering social activities, skill-building, community outings, and pre-vocational training. Funded through the Regional Center.",
    category: "Services",
  },
  {
    term: "Respite Care",
    definition:
      "Short-term care for a person with a disability to give family caregivers a break. Can be provided in-home or at a facility. The number of hours is determined through your IPP.",
    category: "Services",
  },
  {
    term: "ABA (Applied Behavior Analysis)",
    aka: "Applied Behavior Analysis",
    definition:
      "An evidence-based therapy commonly used for individuals with autism that focuses on building helpful behaviors and reducing challenging ones. ABA is covered by insurance for people with an autism diagnosis.",
    category: "Services",
  },
  {
    term: "Supported Employment",
    definition:
      "Job coaching and support to help people with disabilities find and keep competitive jobs in the community. A job coach helps you learn your tasks and navigate the workplace, then gradually reduces their support.",
    category: "Services",
  },
  {
    term: "Assistive Technology (AT)",
    definition:
      "Any device or software that helps a person with a disability communicate, learn, work, or live more independently. This includes communication devices (AAC), adapted utensils, specialized software, and more.",
    category: "Services",
  },

  // Self-Determination
  {
    term: "SDP (Self-Determination Program)",
    aka: "Self-Determination Program",
    definition:
      "A program that lets Regional Center consumers control their own budget and choose their own services and providers, instead of the Regional Center selecting them. You work with an independent facilitator and a financial management service.",
    category: "Self-Determination",
  },
  {
    term: "Independent Facilitator (IF)",
    definition:
      "A person you choose to help you through the Self-Determination Program. They help you create your person-centered plan, find providers, manage your budget, and advocate for your needs.",
    category: "Self-Determination",
  },
  {
    term: "FMS (Financial Management Service)",
    aka: "Financial Management Service",
    definition:
      "A company that handles the money side of the Self-Determination Program — processing payments to providers, managing payroll for workers you hire, and tracking your budget.",
    category: "Self-Determination",
  },
  {
    term: "Person-Centered Plan",
    definition:
      "A plan built around YOUR goals, preferences, and strengths — not what services are most convenient for the system. It focuses on what matters to you and how to achieve the life you want.",
    category: "Self-Determination",
  },
  {
    term: "Individual Budget",
    definition:
      "In the Self-Determination Program, the amount of money calculated based on the services in your current IPP. You control how this budget is spent on the services and supports you choose.",
    category: "Self-Determination",
  },

  // Education
  {
    term: "IEP (Individualized Education Program)",
    aka: "Individualized Education Program",
    definition:
      "A legally binding plan for students with disabilities in public schools that describes the student's goals, the specialized instruction they'll receive, and any related services (speech therapy, OT, etc.). Parents are part of the IEP team.",
    category: "Education",
  },
  {
    term: "504 Plan",
    aka: "Section 504 Plan",
    definition:
      "A plan that provides accommodations and modifications for students with disabilities in public schools. A 504 plan doesn't provide specialized instruction like an IEP, but ensures the student has equal access to education.",
    category: "Education",
  },
  {
    term: "FAPE (Free Appropriate Public Education)",
    aka: "Free Appropriate Public Education",
    definition:
      "Under federal law, every child with a disability is entitled to a free appropriate public education. This means the school must provide the services and supports needed for the student to make progress, at no cost to the family.",
    category: "Education",
  },
  {
    term: "IFSP (Individualized Family Service Plan)",
    aka: "Individualized Family Service Plan",
    definition:
      "A plan for children from birth to age 3 who have developmental delays. Similar to an IEP but focused on the whole family. Created through the Early Start program at the Regional Center.",
    category: "Education",
  },
  {
    term: "Transition Services",
    definition:
      "Planning and support for students with disabilities as they move from school to adult life (typically ages 14-22). Covers employment, independent living, community participation, and moving from school-based services to adult services.",
    category: "Education",
  },

  // Benefits & Funding
  {
    term: "SSI (Supplemental Security Income)",
    aka: "Supplemental Security Income",
    definition:
      "A federal benefit program that provides monthly payments to people with disabilities who have limited income and resources. SSI also makes you eligible for Medi-Cal in California.",
    category: "Benefits",
  },
  {
    term: "SSDI (Social Security Disability Insurance)",
    aka: "Social Security Disability Insurance",
    definition:
      "A federal benefit for people who have worked and paid into Social Security but can no longer work due to a disability. Different from SSI — SSDI is based on work history, not financial need.",
    category: "Benefits",
  },
  {
    term: "Medi-Cal",
    definition:
      "California's Medicaid program that provides free or low-cost health coverage. Many people with developmental disabilities qualify for Medi-Cal, which can cover therapy, medical equipment, and some disability services.",
    category: "Benefits",
  },
  {
    term: "IHSS (In-Home Supportive Services)",
    aka: "In-Home Supportive Services",
    definition:
      "A Medi-Cal program that pays for in-home care to help people with disabilities remain safely in their own homes. Services can include housework, meal preparation, and personal care. Family members can sometimes be paid as IHSS providers.",
    category: "Benefits",
  },
  {
    term: "Section 8",
    aka: "Housing Choice Voucher",
    definition:
      "A federal program that helps low-income individuals pay for housing by subsidizing rent. Waitlists in the Bay Area are typically very long (2-5+ years). People with disabilities may qualify for priority placement.",
    category: "Benefits",
  },
];

const CATEGORIES = [
  "All",
  "Regional Center",
  "Services",
  "Self-Determination",
  "Education",
  "Benefits",
];

export default function GlossaryPage() {
  return (
    <div className="mx-auto max-w-4xl px-4 py-8">
      {/* Header */}
      <div className="mb-8">
        <div className="mb-3 flex items-center gap-3">
          <div className="flex h-12 w-12 items-center justify-center rounded-xl bg-primary-light text-primary">
            <BookOpen className="h-6 w-6" aria-hidden="true" />
          </div>
          <h1 className="text-3xl font-bold tracking-tight text-foreground">
            Glossary
          </h1>
        </div>
        <p className="text-lg text-muted-foreground">
          Disability services are full of acronyms and jargon. Here&apos;s what
          they actually mean, in plain language.
        </p>
      </div>

      {/* Tip */}
      <div className="mb-6 flex items-start gap-3 rounded-xl border border-primary/20 bg-primary-light/50 p-4">
        <Search
          className="mt-0.5 h-5 w-5 shrink-0 text-primary"
          aria-hidden="true"
        />
        <p className="text-sm text-foreground">
          <strong>Tip:</strong> Use the search box to find a term, or browse by
          category. These terms mean the same thing across Regional Centers,
          schools, and providers in California.
        </p>
      </div>

      {/* Client component handles search + filter */}
      <GlossarySearch terms={GLOSSARY_TERMS} categories={CATEGORIES} />
    </div>
  );
}
