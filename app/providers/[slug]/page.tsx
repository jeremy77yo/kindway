import Link from "next/link";
import { notFound } from "next/navigation";
import { Metadata } from "next";
import {
  ArrowLeft, MapPin, Phone, Globe, Mail, Clock,
  Star, CheckCircle, Users, DollarSign, Languages,
  Brain, Calendar, ThumbsUp, MessageSquarePlus,
} from "lucide-react";
import {
  getProviderBySlug,
  getProviderExperiences,
  type ProviderDetail,
  type ExperienceWithService,
} from "@/lib/db/providers";
import { formatPhone } from "@/lib/utils";
import { ReviewForm } from "@/components/reviews/review-form";

interface Props {
  params: Promise<{ slug: string }>;
}

export async function generateMetadata({ params }: Props): Promise<Metadata> {
  const { slug } = await params;
  const provider = await getProviderBySlug(slug);
  if (!provider) return { title: "Provider Not Found" };
  return {
    title: provider.name,
    description: provider.short_description || provider.description,
  };
}

export default async function ProviderDetailPage({ params }: Props) {
  const { slug } = await params;
  const provider = await getProviderBySlug(slug);

  if (!provider) {
    notFound();
  }

  const experiences = await getProviderExperiences(provider.id);
  const summary = Array.isArray(provider.experience_summary)
    ? provider.experience_summary[0]
    : provider.experience_summary;

  const services = (provider.provider_services ?? [])
    .map((ps) => ps.service)
    .filter(Boolean);

  return (
    <div className="mx-auto max-w-4xl px-4 py-8">
      <Link
        href="/providers"
        className="mb-6 inline-flex items-center gap-1 text-sm font-medium text-muted-foreground hover:text-foreground"
      >
        <ArrowLeft className="h-4 w-4" aria-hidden="true" />
        All Providers
      </Link>

      <div className="mb-8">
        <div className="flex items-start gap-3">
          <h1 className="text-3xl font-bold tracking-tight text-foreground">
            {provider.name}
          </h1>
          {provider.is_verified && (
            <CheckCircle
              className="mt-2 h-5 w-5 text-success"
              aria-label="Verified provider"
            />
          )}
        </div>
        <p className="mt-1 text-sm font-medium text-primary capitalize">
          {provider.provider_type.replace(/-/g, " ")}
        </p>
        <p className="mt-2 text-muted-foreground leading-relaxed">
          {provider.description}
        </p>
        {provider.provider_type === "regional-center" && provider.website && (
          <a
            href={provider.website}
            target="_blank"
            rel="noopener noreferrer"
            className="mt-4 inline-flex items-center gap-2 rounded-xl bg-primary px-5 py-2.5 text-sm font-semibold text-white transition-colors hover:bg-primary-dark"
          >
            <Globe className="h-4 w-4" aria-hidden="true" />
            Visit Official Website
          </a>
        )}
      </div>

      <div className="grid gap-6 md:grid-cols-3">
        <div className="space-y-6 md:col-span-2">
          {/* Services Offered */}
          {services.length > 0 && (
            <section className="rounded-2xl border border-border bg-white p-6">
              <h2 className="mb-4 text-lg font-semibold text-foreground">
                Services Offered
              </h2>
              <div className="space-y-3">
                {services.map((service) => (
                  <Link
                    key={service!.id}
                    href={`/services/${service!.slug}`}
                    className="block rounded-xl border border-border p-3 transition-colors hover:border-primary/30 hover:bg-primary-light/30"
                  >
                    <h3 className="font-medium text-foreground">
                      {service!.name}
                    </h3>
                    {service!.short_description && (
                      <p className="mt-1 text-sm text-muted-foreground">
                        {service!.short_description}
                      </p>
                    )}
                    {service!.category && (
                      <span className="mt-2 inline-block rounded-full bg-muted px-2 py-0.5 text-xs text-muted-foreground capitalize">
                        {service!.category.replace(/-/g, " ")}
                      </span>
                    )}
                  </Link>
                ))}
              </div>
            </section>
          )}

          {/* Experience Summary — providers only, not Regional Centers */}
          {provider.provider_type !== "regional-center" && summary && (
            <section className="rounded-2xl border border-border bg-white p-6">
              <h2 className="mb-4 text-lg font-semibold text-foreground">
                Community Experience
              </h2>
              <div className="grid grid-cols-2 gap-4 sm:grid-cols-4">
                <div className="text-center">
                  <div className="flex items-center justify-center gap-1">
                    <Star className="h-5 w-5 text-warning" aria-hidden="true" />
                    <span className="text-2xl font-bold text-foreground">
                      {Number(summary.average_rating).toFixed(1)}
                    </span>
                  </div>
                  <p className="mt-1 text-xs text-muted-foreground">
                    Rating ({summary.total_reviews} reviews)
                  </p>
                </div>
                {summary.average_wait_weeks != null && (
                  <div className="text-center">
                    <div className="flex items-center justify-center gap-1">
                      <Clock className="h-5 w-5 text-primary" aria-hidden="true" />
                      <span className="text-2xl font-bold text-foreground">
                        {Math.round(Number(summary.average_wait_weeks))}
                      </span>
                    </div>
                    <p className="mt-1 text-xs text-muted-foreground">
                      Avg. wait (weeks)
                    </p>
                  </div>
                )}
                {summary.average_staff_helpfulness != null && (
                  <div className="text-center">
                    <div className="flex items-center justify-center gap-1">
                      <ThumbsUp className="h-5 w-5 text-success" aria-hidden="true" />
                      <span className="text-2xl font-bold text-foreground">
                        {Number(summary.average_staff_helpfulness).toFixed(1)}
                      </span>
                    </div>
                    <p className="mt-1 text-xs text-muted-foreground">
                      Staff helpfulness
                    </p>
                  </div>
                )}
                {summary.recommendation_rate != null && (
                  <div className="text-center">
                    <span className="text-2xl font-bold text-foreground">
                      {Math.round(Number(summary.recommendation_rate))}%
                    </span>
                    <p className="mt-1 text-xs text-muted-foreground">
                      Would recommend
                    </p>
                  </div>
                )}
              </div>
              {summary.summary_text && (
                <p className="mt-4 text-sm text-muted-foreground leading-relaxed">
                  {summary.summary_text}
                </p>
              )}
            </section>
          )}

          {/* Individual Experiences — providers only */}
          {provider.provider_type !== "regional-center" && experiences.length > 0 && (
            <section className="rounded-2xl border border-border bg-white p-6">
              <h2 className="mb-4 text-lg font-semibold text-foreground">
                Recent Experiences
              </h2>
              <div className="space-y-4">
                {experiences.map((exp: ExperienceWithService) => (
                  <div
                    key={exp.id}
                    className="border-b border-border pb-4 last:border-0 last:pb-0"
                  >
                    <div className="flex items-center gap-2">
                      <div className="flex items-center">
                        {[1, 2, 3, 4, 5].map((star) => (
                          <Star
                            key={star}
                            className={`h-4 w-4 ${
                              star <= exp.rating
                                ? "fill-warning text-warning"
                                : "text-border"
                            }`}
                            aria-hidden="true"
                          />
                        ))}
                      </div>
                      {exp.service_date && (
                        <span className="text-xs text-muted-foreground">
                          <Calendar className="mr-1 inline h-3 w-3" aria-hidden="true" />
                          {new Date(exp.service_date).toLocaleDateString()}
                        </span>
                      )}
                    </div>
                    <p className="mt-2 text-sm text-muted-foreground leading-relaxed">
                      {exp.experience_text}
                    </p>
                  </div>
                ))}
              </div>
            </section>
          )}

          {/* Share Your Experience — providers only */}
          {provider.provider_type !== "regional-center" && (
            <section className="rounded-2xl border border-border bg-white p-6">
              <div className="mb-6 flex items-center gap-2">
                <MessageSquarePlus className="h-5 w-5 text-primary" aria-hidden="true" />
                <h2 className="text-lg font-semibold text-foreground">
                  Share Your Experience
                </h2>
              </div>
              <ReviewForm
                providerId={provider.id}
                providerName={provider.name}
              />
            </section>
          )}
        </div>

        {/* Sidebar */}
        <div className="space-y-6">
          <section className="rounded-2xl border border-border bg-white p-6">
            <h2 className="mb-4 text-lg font-semibold text-foreground">
              Contact
            </h2>
            <div className="space-y-3">
              {provider.street_address && (
                <div className="flex items-start gap-2 text-sm">
                  <MapPin className="mt-0.5 h-4 w-4 shrink-0 text-muted-foreground" aria-hidden="true" />
                  <span className="text-muted-foreground">
                    {provider.street_address}
                    {provider.city && `, ${provider.city}`}
                    {provider.state && `, ${provider.state}`}{" "}
                    {provider.zip_code}
                  </span>
                </div>
              )}
              {provider.phone && (
                <div className="flex items-center gap-2 text-sm">
                  <Phone className="h-4 w-4 shrink-0 text-muted-foreground" aria-hidden="true" />
                  <a href={`tel:${provider.phone}`} className="text-primary hover:underline">
                    {formatPhone(provider.phone)}
                  </a>
                </div>
              )}
              {provider.email && (
                <div className="flex items-center gap-2 text-sm">
                  <Mail className="h-4 w-4 shrink-0 text-muted-foreground" aria-hidden="true" />
                  <a href={`mailto:${provider.email}`} className="text-primary hover:underline">
                    {provider.email}
                  </a>
                </div>
              )}
              {provider.website && (
                <div className="flex items-center gap-2 text-sm">
                  <Globe className="h-4 w-4 shrink-0 text-muted-foreground" aria-hidden="true" />
                  <a
                    href={provider.website}
                    target="_blank"
                    rel="noopener noreferrer"
                    className="text-primary hover:underline"
                  >
                    Visit Website
                  </a>
                </div>
              )}
              {provider.hours_of_operation && (
                <div className="flex items-start gap-2 text-sm">
                  <Clock className="mt-0.5 h-4 w-4 shrink-0 text-muted-foreground" aria-hidden="true" />
                  <span className="text-muted-foreground">
                    {provider.hours_of_operation}
                  </span>
                </div>
              )}
            </div>
          </section>

          <section className="rounded-2xl border border-border bg-white p-6">
            <h2 className="mb-4 text-lg font-semibold text-foreground">
              Details
            </h2>
            <div className="space-y-4">
              {provider.languages && provider.languages.length > 0 && (
                <div>
                  <h3 className="flex items-center gap-1 text-sm font-medium text-foreground">
                    <Languages className="h-4 w-4" aria-hidden="true" />
                    Languages
                  </h3>
                  <div className="mt-1 flex flex-wrap gap-1">
                    {provider.languages.map((lang) => (
                      <span key={lang} className="rounded-full bg-muted px-2 py-0.5 text-xs capitalize">
                        {lang}
                      </span>
                    ))}
                  </div>
                </div>
              )}

              {provider.age_groups_served && provider.age_groups_served.length > 0 && (
                <div>
                  <h3 className="flex items-center gap-1 text-sm font-medium text-foreground">
                    <Users className="h-4 w-4" aria-hidden="true" />
                    Age Groups
                  </h3>
                  <div className="mt-1 flex flex-wrap gap-1">
                    {provider.age_groups_served.map((age) => (
                      <span key={age} className="rounded-full bg-muted px-2 py-0.5 text-xs">
                        {age}
                      </span>
                    ))}
                  </div>
                </div>
              )}

              {provider.disability_populations && provider.disability_populations.length > 0 && (
                <div>
                  <h3 className="flex items-center gap-1 text-sm font-medium text-foreground">
                    <Brain className="h-4 w-4" aria-hidden="true" />
                    Populations Served
                  </h3>
                  <div className="mt-1 flex flex-wrap gap-1">
                    {provider.disability_populations.map((pop) => (
                      <span key={pop} className="rounded-full bg-muted px-2 py-0.5 text-xs capitalize">
                        {pop.replace(/-/g, " ")}
                      </span>
                    ))}
                  </div>
                </div>
              )}

              {provider.funding_accepted && provider.funding_accepted.length > 0 && (
                <div>
                  <h3 className="flex items-center gap-1 text-sm font-medium text-foreground">
                    <DollarSign className="h-4 w-4" aria-hidden="true" />
                    Funding Accepted
                  </h3>
                  <div className="mt-1 flex flex-wrap gap-1">
                    {provider.funding_accepted.map((fund) => (
                      <span key={fund} className="rounded-full bg-muted px-2 py-0.5 text-xs capitalize">
                        {fund.replace(/-/g, " ")}
                      </span>
                    ))}
                  </div>
                </div>
              )}
            </div>
          </section>

          <section className="rounded-2xl border border-border bg-white p-6">
            <h2 className="mb-3 text-lg font-semibold text-foreground">
              Availability
            </h2>
            {provider.accepts_new_clients ? (
              <div className="flex items-center gap-2 text-success">
                <CheckCircle className="h-5 w-5" aria-hidden="true" />
                <span className="font-medium">Accepting new clients</span>
              </div>
            ) : (
              <div className="flex items-center gap-2 text-warning">
                <Clock className="h-5 w-5" aria-hidden="true" />
                <span className="font-medium">
                  Waitlist: {provider.waitlist_status?.replace(/-/g, " ") || "Contact for info"}
                </span>
              </div>
            )}
          </section>
        </div>
      </div>
    </div>
  );
}
