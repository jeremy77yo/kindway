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
  Building2,
  Sun,
  Handshake,
  BookOpen,
  Car,
  Smile,
  Laptop,
  Scale,
  Stethoscope,
} from "lucide-react";
import { HomeSearchBar } from "@/components/ui/home-search-bar";
import { getServices } from "@/lib/db/services";

const ICON_MAP: Record<string, React.ComponentType<{ className?: string }>> = {
  Baby, Landmark, GraduationCap, Heart, Brain, HandHeart,
  Briefcase, Home, Car, Smile, Laptop, Scale, Users,
  Stethoscope, Sun, Key: Home,
};

const COLOR_MAP: Record<string, string> = {
  "early-intervention": "bg-pink-50 text-pink-600",
  "regional-center": "bg-blue-50 text-blue-600",
  "independent-living": "bg-emerald-50 text-emerald-600",
  "independent-living-skills": "bg-emerald-50 text-emerald-600",
  "day-programs": "bg-orange-50 text-orange-600",
  "special-education": "bg-purple-50 text-purple-600",
  "speech-therapy": "bg-red-50 text-red-600",
  "behavioral-health": "bg-amber-50 text-amber-600",
  "respite-care": "bg-teal-50 text-teal-600",
  "employment": "bg-indigo-50 text-indigo-600",
  "housing": "bg-green-50 text-green-600",
  "transportation": "bg-sky-50 text-sky-600",
  "recreation": "bg-yellow-50 text-yellow-600",
  "assistive-technology": "bg-slate-50 text-slate-600",
  "legal-advocacy": "bg-rose-50 text-rose-600",
  "family-support": "bg-violet-50 text-violet-600",
  "transition-services": "bg-cyan-50 text-cyan-600",
  "healthcare": "bg-emerald-50 text-emerald-600",
  "occupational-therapy": "bg-orange-50 text-orange-600",
};

const FEATURED_SLUGS = [
  "early-intervention",
  "regional-center",
  "independent-living",
  "independent-living-skills",
  "day-programs",
  "special-education",
  "speech-therapy",
  "behavioral-health",
  "respite-care",
  "employment",
  "housing",
];

const QUICK_ACTIONS = [
  {
    title: "Find a Provider",
    description: "Search the directory by location, service type, or language",
    href: "/providers",
    icon: Compass,
  },
  {
    title: "Get Help",
    description: "Stuck or unsure where to start? Tell us your situation and we'll help",
    href: "/get-help",
    icon: Handshake,
  },
  {
    title: "Get Next Steps",
    description: "Step-by-step guides for accessing common services",
    href: "/next-steps",
    icon: ArrowRight,
  },
  {
    title: "Know Your Rights",
    description: "Understand your rights under the Lanterman Act and how to self-advocate",
    href: "/know-your-rights",
    icon: BookOpen,
  },
  {
    title: "Community",
    description: "Ask questions and learn from others navigating the same system",
    href: "/community",
    icon: Users,
  },
  {
    title: "List Your Agency",
    description: "Are you a provider? Submit your agency to be listed on Kindway",
    href: "/submit-agency",
    icon: Building2,
  },
];

export default async function HomePage() {
  const allServices = await getServices();

  // Show featured services from DB, falling back to all if no featured match
  const featuredSet = new Set(FEATURED_SLUGS);
  const featured = allServices.filter((s) => featuredSet.has(s.slug));
  const serviceCategories = featured.length > 0 ? featured : allServices.slice(0, 10);

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
        <div className="grid grid-cols-2 gap-3 sm:grid-cols-3 md:grid-cols-5">
          {serviceCategories.map((service) => {
            const Icon = ICON_MAP[service.icon_name || ""] || Stethoscope;
            const color = COLOR_MAP[service.slug] || "bg-muted text-muted-foreground";
            return (
              <Link
                key={service.id}
                href={`/services/${service.slug}`}
                className="flex flex-col items-center gap-3 rounded-2xl border border-border bg-white p-5 text-center transition-all hover:border-primary/30 hover:shadow-md"
              >
                <div
                  className={`flex h-12 w-12 items-center justify-center rounded-xl ${color}`}
                >
                  <Icon className="h-6 w-6" aria-hidden="true" />
                </div>
                <span className="text-sm font-medium leading-tight">
                  {service.name}
                </span>
              </Link>
            );
          })}
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
