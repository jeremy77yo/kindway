import type {
  ServiceRow,
  ProviderRow,
  ProviderServiceRow,
  ExperienceReportRow,
  ProviderExperienceSummaryRow,
} from "./database";

export type { Database } from "./database";
export type {
  ServiceRow,
  ServiceInsert,
  ServiceUpdate,
  ProviderRow,
  ProviderInsert,
  ProviderUpdate,
  ProviderServiceRow,
  ExperienceReportRow,
  ProviderExperienceSummaryRow,
  CommunityPostRow,
  CommunityPostInsert,
  CommunityPostUpdate,
} from "./database";

// Derived types for joined queries
export interface ProviderWithServices extends ProviderRow {
  provider_services: (ProviderServiceRow & {
    service: ServiceRow;
  })[];
  experience_summary: ProviderExperienceSummaryRow | null;
}

export interface ServiceWithProviders extends ServiceRow {
  provider_services: (ProviderServiceRow & {
    provider: ProviderRow;
  })[];
}

export interface ProviderCardData {
  id: string;
  name: string;
  slug: string;
  short_description: string | null;
  description: string;
  provider_type: string;
  city: string | null;
  phone: string | null;
  website: string | null;
  languages: string[] | null;
  age_groups_served: string[] | null;
  disability_populations: string[] | null;
  funding_accepted: string[] | null;
  accepts_new_clients: boolean;
  waitlist_status: string | null;
  service_names: string[];
  experience_summary: ProviderExperienceSummaryRow | null;
}

export interface ServiceCardData {
  id: string;
  name: string;
  slug: string;
  category: string;
  short_description: string;
  icon_name: string | null;
  provider_count: number;
}

export interface FilterOption {
  value: string;
  label: string;
  count?: number;
}

export interface ProviderFilters {
  query?: string;
  service_type?: string;
  city?: string;
  age_group?: string;
  funding?: string;
  language?: string;
  disability_population?: string;
  waitlist_status?: string;
}
