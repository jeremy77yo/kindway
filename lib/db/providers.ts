import { createClient } from "@/lib/supabase/server";
import type { ProviderFilters, ProviderRow, ExperienceReportRow } from "@/types";

interface ProviderServiceJoin {
  id: string;
  is_primary: boolean;
  details?: string | null;
  service: {
    id: string;
    name: string;
    slug: string;
    short_description?: string;
    category?: string;
  } | null;
}

interface ExperienceSummaryData {
  total_reviews: number;
  average_rating: number;
  average_wait_weeks: number | null;
  average_staff_helpfulness: number | null;
  average_accessibility: number | null;
  recommendation_rate: number | null;
  summary_text: string | null;
}

export interface ProviderListItem extends ProviderRow {
  provider_services: ProviderServiceJoin[];
  experience_summary: ExperienceSummaryData | ExperienceSummaryData[] | null;
}

export interface ProviderDetail extends ProviderRow {
  provider_services: ProviderServiceJoin[];
  experience_summary: ExperienceSummaryData | ExperienceSummaryData[] | null;
}

export interface ExperienceWithService extends ExperienceReportRow {
  service: { name: string; slug: string } | null;
}

export async function getProviders(filters: ProviderFilters = {}): Promise<ProviderListItem[]> {
  const supabase = await createClient();
  if (!supabase) return [];

  // eslint-disable-next-line @typescript-eslint/no-explicit-any
  let query = (supabase as any)
    .from("providers")
    .select(`
      *,
      provider_services (
        id,
        is_primary,
        service:services (id, name, slug)
      ),
      experience_summary:provider_experience_summaries (
        total_reviews,
        average_rating,
        average_wait_weeks,
        recommendation_rate,
        summary_text
      )
    `)
    .eq("is_active", true);

  if (filters.query) {
    query = query.textSearch("search_vector", filters.query, {
      type: "websearch",
    });
  }

  if (filters.city) {
    query = query.eq("city", filters.city);
  }

  if (filters.age_group) {
    query = query.contains("age_groups_served", [filters.age_group]);
  }

  if (filters.funding) {
    query = query.contains("funding_accepted", [filters.funding]);
  }

  if (filters.language) {
    query = query.contains("languages", [filters.language]);
  }

  if (filters.disability_population) {
    query = query.contains("disability_populations", [filters.disability_population]);
  }

  if (filters.waitlist_status) {
    if (filters.waitlist_status === "none") {
      query = query.eq("accepts_new_clients", true).eq("waitlist_status", "none");
    } else {
      query = query.eq("waitlist_status", filters.waitlist_status);
    }
  }

  query = query.order("name", { ascending: true });

  const { data, error } = await query;

  if (error) {
    console.error("Error fetching providers:", error);
    return [];
  }

  return (data ?? []) as ProviderListItem[];
}

export async function getProviderBySlug(slug: string): Promise<ProviderDetail | null> {
  const supabase = await createClient();
  if (!supabase) return null;
  // eslint-disable-next-line @typescript-eslint/no-explicit-any
  const { data, error } = await (supabase as any)
    .from("providers")
    .select(`
      *,
      provider_services (
        id,
        details,
        is_primary,
        service:services (id, name, slug, short_description, category)
      ),
      experience_summary:provider_experience_summaries (
        total_reviews,
        average_rating,
        average_wait_weeks,
        average_staff_helpfulness,
        average_accessibility,
        recommendation_rate,
        summary_text
      )
    `)
    .eq("slug", slug)
    .eq("is_active", true)
    .single();

  if (error) {
    console.error("Error fetching provider:", error);
    return null;
  }
  return data as ProviderDetail | null;
}

export async function getProviderExperiences(providerId: string): Promise<ExperienceWithService[]> {
  const supabase = await createClient();
  if (!supabase) return [];
  // eslint-disable-next-line @typescript-eslint/no-explicit-any
  const { data, error } = await (supabase as any)
    .from("experience_reports")
    .select(`
      *,
      service:services (name, slug)
    `)
    .eq("provider_id", providerId)
    .eq("status", "approved")
    .order("created_at", { ascending: false });

  if (error) {
    console.error("Error fetching experiences:", error);
    return [];
  }
  return (data ?? []) as ExperienceWithService[];
}
