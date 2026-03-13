import { Metadata } from "next";
import Link from "next/link";
import { Suspense } from "react";
import {
  MapPin, Phone, Globe, Star, Clock, CheckCircle,
  Building2, SlidersHorizontal,
} from "lucide-react";
import { getProviders, type ProviderListItem } from "@/lib/db/providers";
import { SearchInput } from "@/components/ui/search-input";
import { FilterChip } from "@/components/ui/filter-chip";
import {
  BAY_AREA_CITIES,
  FUNDING_OPTIONS,
  LANGUAGES,
  WAITLIST_OPTIONS,
} from "@/lib/constants";
import { truncateText, formatPhone } from "@/lib/utils";
import type { ProviderFilters } from "@/types";

export const metadata: Metadata = {
  title: "Provider Directory",
  description: "Find disability service providers in the Bay Area.",
};

interface Props {
  searchParams: Promise<Record<string, string | string[] | undefined>>;
}

function getFilterValue(
  val: string | string[] | undefined
): string | undefined {
  if (Array.isArray(val)) return val[0];
  return val;
}

async function ProviderList({
  searchParams,
}: {
  searchParams: Record<string, string | string[] | undefined>;
}) {
  const filters: ProviderFilters = {
    query: getFilterValue(searchParams.q),
    city: getFilterValue(searchParams.city),
    service_type: getFilterValue(searchParams.service),
    age_group: getFilterValue(searchParams.age),
    funding: getFilterValue(searchParams.funding),
    language: getFilterValue(searchParams.lang),
    disability_population: getFilterValue(searchParams.population),
    waitlist_status: getFilterValue(searchParams.waitlist),
  };

  const providers = await getProviders(filters);
  const hasFilters = Object.values(filters).some(Boolean);

  if (providers.length === 0) {
    return (
      <div className="rounded-2xl border-2 border-dashed border-border bg-white p-12 text-center">
        <Building2 className="mx-auto h-12 w-12 text-muted-foreground/50" />
        <h2 className="mt-4 text-lg font-semibold text-foreground">
          {hasFilters ? "No providers match your filters" : "No providers loaded yet"}
        </h2>
        <p className="mt-2 text-muted-foreground">
          {hasFilters
            ? "Try adjusting your search or filters to see more results."
            : "Connect your Supabase database and run the seed data to see providers here."}
        </p>
      </div>
    );
  }

  return (
    <div className="space-y-4">
      <p className="text-sm text-muted-foreground">
        {providers.length} provider{providers.length !== 1 ? "s" : ""} found
      </p>
      {providers.map((provider: ProviderListItem) => {
        const serviceNames = (provider.provider_services ?? [])
          .map((ps) => ps.service?.name)
          .filter(Boolean) as string[];
        const summary = Array.isArray(provider.experience_summary)
          ? provider.experience_summary[0]
          : provider.experience_summary;

        return (
          <Link
            key={provider.id}
            href={`/providers/${provider.slug}`}
            className="block rounded-2xl border border-border bg-white p-5 transition-all hover:border-primary/30 hover:shadow-md"
          >
            <div className="flex items-start justify-between gap-4">
              <div className="min-w-0 flex-1">
                <div className="flex items-center gap-2">
                  <h2 className="font-semibold text-foreground">
                    {provider.name}
                  </h2>
                  {provider.is_verified && (
                    <CheckCircle
                      className="h-4 w-4 text-success"
                      aria-label="Verified provider"
                    />
                  )}
                </div>
                <p className="mt-1 text-sm text-muted-foreground line-clamp-2">
                  {truncateText(provider.short_description || provider.description)}
                </p>

                <div className="mt-3 flex flex-wrap items-center gap-x-4 gap-y-1 text-xs text-muted-foreground">
                  {provider.city && (
                    <span className="flex items-center gap-1">
                      <MapPin className="h-3.5 w-3.5" aria-hidden="true" />
                      {provider.city}
                    </span>
                  )}
                  {provider.phone && (
                    <span className="flex items-center gap-1">
                      <Phone className="h-3.5 w-3.5" aria-hidden="true" />
                      {formatPhone(provider.phone)}
                    </span>
                  )}
                  {provider.website && (
                    <span className="flex items-center gap-1">
                      <Globe className="h-3.5 w-3.5" aria-hidden="true" />
                      Website
                    </span>
                  )}
                  {summary && (
                    <span className="flex items-center gap-1 font-medium text-foreground">
                      <Star className="h-3.5 w-3.5 text-warning" aria-hidden="true" />
                      {Number(summary.average_rating).toFixed(1)} ({summary.total_reviews})
                    </span>
                  )}
                </div>

                {serviceNames.length > 0 && (
                  <div className="mt-3 flex flex-wrap gap-1.5">
                    {serviceNames.slice(0, 4).map((name) => (
                      <span
                        key={name}
                        className="rounded-full bg-primary-light px-2.5 py-0.5 text-xs font-medium text-primary"
                      >
                        {name}
                      </span>
                    ))}
                    {serviceNames.length > 4 && (
                      <span className="rounded-full bg-muted px-2.5 py-0.5 text-xs text-muted-foreground">
                        +{serviceNames.length - 4} more
                      </span>
                    )}
                  </div>
                )}
              </div>

              <div className="shrink-0 text-right">
                {provider.accepts_new_clients ? (
                  <span className="inline-flex items-center gap-1 rounded-full bg-green-50 px-2.5 py-1 text-xs font-medium text-success">
                    <span className="h-1.5 w-1.5 rounded-full bg-success" />
                    Open
                  </span>
                ) : (
                  <span className="inline-flex items-center gap-1 rounded-full bg-amber-50 px-2.5 py-1 text-xs font-medium text-warning">
                    <Clock className="h-3 w-3" aria-hidden="true" />
                    Waitlist
                  </span>
                )}
              </div>
            </div>
          </Link>
        );
      })}
    </div>
  );
}

export default async function ProvidersPage({ searchParams }: Props) {
  const resolvedSearchParams = await searchParams;

  return (
    <div className="mx-auto max-w-7xl px-4 py-8">
      <div className="mb-6">
        <h1 className="text-3xl font-bold tracking-tight text-foreground">
          Provider Directory
        </h1>
        <p className="mt-2 text-lg text-muted-foreground">
          Find disability service providers in the Bay Area.
        </p>
      </div>

      <div className="mb-6">
        <Suspense fallback={<div className="h-12 animate-pulse rounded-xl bg-muted" />}>
          <SearchInput
            paramName="q"
            placeholder="Search providers by name or service..."
          />
        </Suspense>
      </div>

      <div className="mb-6">
        <div className="flex items-center gap-2 mb-3">
          <SlidersHorizontal className="h-4 w-4 text-muted-foreground" aria-hidden="true" />
          <span className="text-sm font-medium text-muted-foreground">Filters</span>
        </div>
        <Suspense fallback={null}>
          <div className="space-y-3">
            <div className="flex flex-wrap gap-2">
              {BAY_AREA_CITIES.slice(0, 6).map((city) => (
                <FilterChip
                  key={city.value}
                  label={city.label}
                  paramName="city"
                  paramValue={city.value}
                />
              ))}
            </div>
            <div className="flex flex-wrap gap-2">
              {FUNDING_OPTIONS.slice(0, 4).map((f) => (
                <FilterChip
                  key={f.value}
                  label={f.label}
                  paramName="funding"
                  paramValue={f.value}
                />
              ))}
            </div>
            <div className="flex flex-wrap gap-2">
              {LANGUAGES.slice(0, 4).map((l) => (
                <FilterChip
                  key={l.value}
                  label={l.label}
                  paramName="lang"
                  paramValue={l.value}
                />
              ))}
            </div>
            <div className="flex flex-wrap gap-2">
              {WAITLIST_OPTIONS.map((w) => (
                <FilterChip
                  key={w.value}
                  label={w.label}
                  paramName="waitlist"
                  paramValue={w.value}
                />
              ))}
            </div>
          </div>
        </Suspense>
      </div>

      <Suspense
        fallback={
          <div className="space-y-4">
            {[1, 2, 3].map((i) => (
              <div key={i} className="h-32 animate-pulse rounded-2xl bg-muted" />
            ))}
          </div>
        }
      >
        <ProviderList searchParams={resolvedSearchParams} />
      </Suspense>
    </div>
  );
}
