import Link from "next/link";
import { Metadata } from "next";
import {
  Baby, Landmark, GraduationCap, Heart, Brain, HandHeart,
  Briefcase, Home, Car, Smile, Laptop, Scale, Users,
  Stethoscope, ArrowRightCircle,
} from "lucide-react";
import { getServices } from "@/lib/db/services";

export const metadata: Metadata = {
  title: "Service Categories",
  description: "Browse disability service categories to find the support you need.",
};

const ICON_MAP: Record<string, React.ComponentType<{ className?: string }>> = {
  Baby, Landmark, GraduationCap, Heart, Brain, HandHeart,
  Briefcase, Home, Car, Smile, Laptop, Scale, Users,
  Stethoscope, ArrowRightCircle,
};

const COLOR_MAP: Record<string, string> = {
  "early-intervention": "bg-pink-50 text-pink-600",
  "regional-center": "bg-blue-50 text-blue-600",
  "special-education": "bg-purple-50 text-purple-600",
  "speech-therapy": "bg-red-50 text-red-600",
  "occupational-therapy": "bg-orange-50 text-orange-600",
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
};

export default async function ServicesPage() {
  const services = await getServices();

  // Fallback for when Supabase isn't connected
  const hasData = services.length > 0;

  return (
    <div className="mx-auto max-w-7xl px-4 py-8">
      <div className="mb-8">
        <h1 className="text-3xl font-bold tracking-tight text-foreground">
          Service Categories
        </h1>
        <p className="mt-2 text-lg text-muted-foreground">
          Explore the types of services available for people with disabilities
          in the Bay Area.
        </p>
      </div>

      {hasData ? (
        <div className="grid gap-4 sm:grid-cols-2 lg:grid-cols-3">
          {services.map((service) => {
            const Icon = ICON_MAP[service.icon_name || ""] || Stethoscope;
            const colorClass = COLOR_MAP[service.slug] || "bg-muted text-muted-foreground";
            return (
              <Link
                key={service.id}
                href={`/services/${service.slug}`}
                className="group flex gap-4 rounded-2xl border border-border bg-white p-5 transition-all hover:border-primary/30 hover:shadow-md"
              >
                <div
                  className={`flex h-12 w-12 shrink-0 items-center justify-center rounded-xl ${colorClass}`}
                >
                  <Icon className="h-6 w-6" aria-hidden="true" />
                </div>
                <div className="min-w-0">
                  <h2 className="font-semibold text-foreground group-hover:text-primary">
                    {service.name}
                  </h2>
                  <p className="mt-1 text-sm text-muted-foreground line-clamp-2">
                    {service.short_description}
                  </p>
                </div>
              </Link>
            );
          })}
        </div>
      ) : (
        <div className="rounded-2xl border-2 border-dashed border-border bg-white p-12 text-center">
          <Stethoscope className="mx-auto h-12 w-12 text-muted-foreground/50" />
          <h2 className="mt-4 text-lg font-semibold text-foreground">
            No services loaded yet
          </h2>
          <p className="mt-2 text-muted-foreground">
            Connect your Supabase database and run the seed data to see service
            categories here.
          </p>
        </div>
      )}
    </div>
  );
}
