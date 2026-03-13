import Link from "next/link";
import { notFound } from "next/navigation";
import { Metadata } from "next";
import {
  ArrowLeft, FileText, HelpCircle, Clock, Users, CheckCircle,
  MapPin, Phone, ExternalLink,
} from "lucide-react";
import { getServiceWithProviders, getServiceBySlug, type ServiceWithProviders } from "@/lib/db/services";

interface Props {
  params: Promise<{ slug: string }>;
}

export async function generateMetadata({ params }: Props): Promise<Metadata> {
  const { slug } = await params;
  const service = await getServiceBySlug(slug);
  if (!service) return { title: "Service Not Found" };
  return {
    title: service.name,
    description: service.short_description,
  };
}

export default async function ServiceDetailPage({ params }: Props) {
  const { slug } = await params;
  const service = await getServiceWithProviders(slug);

  if (!service) {
    notFound();
  }

  const providers = (service.provider_services ?? [])
    .map((ps) => ps.provider)
    .filter(Boolean);

  return (
    <div className="mx-auto max-w-4xl px-4 py-8">
      <Link
        href="/services"
        className="mb-6 inline-flex items-center gap-1 text-sm font-medium text-muted-foreground hover:text-foreground"
      >
        <ArrowLeft className="h-4 w-4" aria-hidden="true" />
        All Services
      </Link>

      <div className="mb-8">
        <h1 className="text-3xl font-bold tracking-tight text-foreground">
          {service.name}
        </h1>
        <p className="mt-2 text-lg text-muted-foreground">
          {service.short_description}
        </p>
      </div>

      <section className="mb-8">
        <div className="prose max-w-none text-foreground/90">
          {service.full_description.split("\n").map((paragraph, i) => (
            <p key={i} className="mb-4 leading-relaxed">
              {paragraph}
            </p>
          ))}
        </div>
      </section>

      <div className="grid gap-6 md:grid-cols-2">
        {service.eligibility_criteria && (
          <section className="rounded-2xl border border-border bg-white p-6">
            <h2 className="mb-3 flex items-center gap-2 font-semibold text-foreground">
              <CheckCircle className="h-5 w-5 text-success" aria-hidden="true" />
              Eligibility
            </h2>
            <p className="text-sm text-muted-foreground leading-relaxed">
              {service.eligibility_criteria}
            </p>
          </section>
        )}

        {service.typical_timeline && (
          <section className="rounded-2xl border border-border bg-white p-6">
            <h2 className="mb-3 flex items-center gap-2 font-semibold text-foreground">
              <Clock className="h-5 w-5 text-warning" aria-hidden="true" />
              Typical Timeline
            </h2>
            <p className="text-sm text-muted-foreground leading-relaxed">
              {service.typical_timeline}
            </p>
          </section>
        )}

        {service.documents_needed && service.documents_needed.length > 0 && (
          <section className="rounded-2xl border border-border bg-white p-6">
            <h2 className="mb-3 flex items-center gap-2 font-semibold text-foreground">
              <FileText className="h-5 w-5 text-primary" aria-hidden="true" />
              Documents You May Need
            </h2>
            <ul className="space-y-2">
              {service.documents_needed.map((doc, i) => (
                <li key={i} className="flex items-start gap-2 text-sm text-muted-foreground">
                  <span className="mt-1.5 h-1.5 w-1.5 shrink-0 rounded-full bg-primary" />
                  {doc}
                </li>
              ))}
            </ul>
          </section>
        )}

        {service.what_to_ask_for && service.what_to_ask_for.length > 0 && (
          <section className="rounded-2xl border border-border bg-white p-6">
            <h2 className="mb-3 flex items-center gap-2 font-semibold text-foreground">
              <HelpCircle className="h-5 w-5 text-accent" aria-hidden="true" />
              What to Ask For
            </h2>
            <ul className="space-y-2">
              {service.what_to_ask_for.map((q, i) => (
                <li key={i} className="flex items-start gap-2 text-sm text-muted-foreground">
                  <span className="mt-1.5 h-1.5 w-1.5 shrink-0 rounded-full bg-accent" />
                  {q}
                </li>
              ))}
            </ul>
          </section>
        )}
      </div>

      {service.age_groups && service.age_groups.length > 0 && (
        <section className="mt-6 mb-8">
          <h2 className="mb-3 flex items-center gap-2 font-semibold text-foreground">
            <Users className="h-5 w-5 text-secondary" aria-hidden="true" />
            Age Groups
          </h2>
          <div className="flex flex-wrap gap-2">
            {service.age_groups.map((age) => (
              <span
                key={age}
                className="rounded-full bg-secondary-light px-3 py-1 text-sm font-medium text-secondary"
              >
                {age}
              </span>
            ))}
          </div>
        </section>
      )}

      {providers.length > 0 && (
        <section className="mt-8" aria-labelledby="providers-heading">
          <h2
            id="providers-heading"
            className="mb-4 text-xl font-semibold text-foreground"
          >
            Providers Offering This Service
          </h2>
          <div className="space-y-3">
            {providers.map((provider) => (
              <Link
                key={provider!.id}
                href={`/providers/${provider!.slug}`}
                className="flex items-start justify-between gap-4 rounded-2xl border border-border bg-white p-5 transition-all hover:border-primary/30 hover:shadow-md"
              >
                <div className="min-w-0">
                  <h3 className="font-semibold text-foreground">
                    {provider!.name}
                  </h3>
                  {provider!.short_description && (
                    <p className="mt-1 text-sm text-muted-foreground line-clamp-1">
                      {provider!.short_description}
                    </p>
                  )}
                  <div className="mt-2 flex flex-wrap items-center gap-3 text-xs text-muted-foreground">
                    {provider!.city && (
                      <span className="flex items-center gap-1">
                        <MapPin className="h-3 w-3" aria-hidden="true" />
                        {provider!.city}
                      </span>
                    )}
                    {provider!.phone && (
                      <span className="flex items-center gap-1">
                        <Phone className="h-3 w-3" aria-hidden="true" />
                        {provider!.phone}
                      </span>
                    )}
                    {provider!.accepts_new_clients ? (
                      <span className="text-success font-medium">
                        Accepting clients
                      </span>
                    ) : (
                      <span className="text-warning font-medium">
                        Waitlist
                      </span>
                    )}
                  </div>
                </div>
                <ExternalLink
                  className="mt-1 h-4 w-4 shrink-0 text-muted-foreground"
                  aria-hidden="true"
                />
              </Link>
            ))}
          </div>
        </section>
      )}
    </div>
  );
}
