import Link from "next/link";
import {
  Baby,
  Landmark,
  GraduationCap,
  Heart,
  Brain,
  HandHeart,
  Briefcase,
  Home,
  ArrowRight,
  Compass,
  Users,
  MessageCircle,
  Building2,
} from "lucide-react";
import { HomeSearchBar } from "@/components/ui/home-search-bar";

const SERVICE_CATEGORIES = [
  { name: "Early Intervention", slug: "early-intervention", icon: Baby, color: "bg-pink-50 text-pink-600" },
  { name: "Regional Center", slug: "regional-center", icon: Landmark, color: "bg-blue-50 text-blue-600" },
  { name: "Special Education", slug: "special-education", icon: GraduationCap, color: "bg-purple-50 text-purple-600" },
  { name: "Therapy Services", slug: "speech-therapy", icon: Heart, color: "bg-red-50 text-red-600" },
  { name: "Behavioral Health", slug: "behavioral-health", icon: Brain, color: "bg-amber-50 text-amber-600" },
  { name: "Respite Care", slug: "respite-care", icon: HandHeart, color: "bg-teal-50 text-teal-600" },
  { name: "Employment", slug: "employment", icon: Briefcase, color: "bg-indigo-50 text-indigo-600" },
  { name: "Housing", slug: "housing", icon: Home, color: "bg-green-50 text-green-600" },
];

const QUICK_ACTIONS = [
  {
    title: "Find a Provider",
    description: "Search the directory by location, service type, or language",
    href: "/providers",
    icon: Compass,
  },
  {
    title: "Get Next Steps",
    description: "Step-by-step guides for accessing common services",
    href: "/next-steps",
    icon: ArrowRight,
  },
  {
    title: "Community Experiences",
    description: "Read what others have shared about local providers",
    href: "/community",
    icon: Users,
  },
  {
    title: "Ask AI Helper",
    description: "Get personalized guidance about services and eligibility",
    href: "/ai-help",
    icon: MessageCircle,
  },
  {
    title: "List Your Agency",
    description: "Are you a provider? Submit your agency to be listed on Kindway",
    href: "/submit-agency",
    icon: Building2,
  },
];

export default function HomePage() {
  return (
    <div className="mx-auto max-w-7xl px-4 py-8">
      {/* Hero Section */}
      <section className="mb-12 text-center">
        <h1 className="mb-4 text-3xl font-bold tracking-tight text-foreground sm:text-4xl">
          Find Disability Services
          <br />
          <span className="text-primary">in the Bay Area</span>
        </h1>
        <p className="mx-auto mb-8 max-w-2xl text-lg text-muted-foreground">
          Discover services, find providers, and understand next steps — all in
          one place. No case manager needed to get started.
        </p>

        {/* Search Bar */}
        <HomeSearchBar />
      </section>

      {/* Service Categories Grid */}
      <section className="mb-12" aria-labelledby="categories-heading">
        <h2
          id="categories-heading"
          className="mb-6 text-xl font-semibold text-foreground"
        >
          Browse by Service Type
        </h2>
        <div className="grid grid-cols-2 gap-3 sm:grid-cols-3 md:grid-cols-4">
          {SERVICE_CATEGORIES.map(({ name, slug, icon: Icon, color }) => (
            <Link
              key={slug}
              href={`/services/${slug}`}
              className="flex flex-col items-center gap-3 rounded-2xl border border-border bg-white p-5 text-center transition-all hover:border-primary/30 hover:shadow-md"
            >
              <div
                className={`flex h-12 w-12 items-center justify-center rounded-xl ${color}`}
              >
                <Icon className="h-6 w-6" aria-hidden="true" />
              </div>
              <span className="text-sm font-medium leading-tight">
                {name}
              </span>
            </Link>
          ))}
        </div>
        <div className="mt-4 text-center">
          <Link
            href="/services"
            className="inline-flex items-center gap-1 text-sm font-medium text-primary hover:underline"
          >
            View all service categories
            <ArrowRight className="h-4 w-4" aria-hidden="true" />
          </Link>
        </div>
      </section>

      {/* Quick Actions */}
      <section aria-labelledby="quick-actions-heading">
        <h2
          id="quick-actions-heading"
          className="mb-6 text-xl font-semibold text-foreground"
        >
          What would you like to do?
        </h2>
        <div className="grid gap-4 sm:grid-cols-2">
          {QUICK_ACTIONS.map(({ title, description, href, icon: Icon }) => (
            <Link
              key={href}
              href={href}
              className="flex items-start gap-4 rounded-2xl border border-border bg-white p-5 transition-all hover:border-primary/30 hover:shadow-md"
            >
              <div className="flex h-11 w-11 shrink-0 items-center justify-center rounded-xl bg-primary-light text-primary">
                <Icon className="h-5 w-5" aria-hidden="true" />
              </div>
              <div>
                <h3 className="font-semibold text-foreground">{title}</h3>
                <p className="mt-1 text-sm text-muted-foreground">
                  {description}
                </p>
              </div>
            </Link>
          ))}
        </div>
      </section>
    </div>
  );
}
