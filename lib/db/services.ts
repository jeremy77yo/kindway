import { createClient } from "@/lib/supabase/server";
import type { ServiceRow, ProviderRow } from "@/types";

interface ServiceProviderJoin {
  id: string;
  details: string | null;
  is_primary: boolean;
  provider: Pick<ProviderRow, "id" | "name" | "slug" | "short_description" | "city" | "phone" | "languages" | "accepts_new_clients" | "waitlist_status"> | null;
}

export interface ServiceWithProviders extends ServiceRow {
  provider_services: ServiceProviderJoin[];
}

export async function getServices(): Promise<ServiceRow[]> {
  const supabase = await createClient();
  if (!supabase) return [];
  // eslint-disable-next-line @typescript-eslint/no-explicit-any
  const { data, error } = await (supabase as any)
    .from("services")
    .select("*")
    .eq("is_active", true)
    .order("sort_order", { ascending: true });

  if (error) {
    console.error("Error fetching services:", error);
    return [];
  }
  return (data ?? []) as ServiceRow[];
}

export async function getServiceBySlug(slug: string): Promise<ServiceRow | null> {
  const supabase = await createClient();
  if (!supabase) return null;
  // eslint-disable-next-line @typescript-eslint/no-explicit-any
  const { data, error } = await (supabase as any)
    .from("services")
    .select("*")
    .eq("slug", slug)
    .eq("is_active", true)
    .single();

  if (error) {
    console.error("Error fetching service:", error);
    return null;
  }
  return data as ServiceRow | null;
}

export async function getServiceCategories(): Promise<string[]> {
  const supabase = await createClient();
  if (!supabase) return [];
  // eslint-disable-next-line @typescript-eslint/no-explicit-any
  const { data, error } = await (supabase as any)
    .from("services")
    .select("category")
    .eq("is_active", true)
    .order("category");

  if (error) {
    console.error("Error fetching categories:", error);
    return [];
  }
  const categories = (data ?? []).map((s: { category: string }) => s.category);
  return [...new Set(categories)] as string[];
}

export async function searchServices(query: string): Promise<ServiceRow[]> {
  const supabase = await createClient();
  if (!supabase) return [];
  // eslint-disable-next-line @typescript-eslint/no-explicit-any
  const { data, error } = await (supabase as any)
    .from("services")
    .select("*")
    .eq("is_active", true)
    .textSearch("search_vector", query, { type: "websearch" })
    .order("sort_order", { ascending: true });

  if (error) {
    console.error("Error searching services:", error);
    return [];
  }
  return (data ?? []) as ServiceRow[];
}

export async function getServiceWithProviders(slug: string): Promise<ServiceWithProviders | null> {
  const supabase = await createClient();
  if (!supabase) return null;
  // eslint-disable-next-line @typescript-eslint/no-explicit-any
  const { data, error } = await (supabase as any)
    .from("services")
    .select(`
      *,
      provider_services (
        id,
        details,
        is_primary,
        provider:providers (
          id, name, slug, short_description, city, phone,
          languages, accepts_new_clients, waitlist_status
        )
      )
    `)
    .eq("slug", slug)
    .eq("is_active", true)
    .single();

  if (error) {
    console.error("Error fetching service with providers:", error);
    return null;
  }
  return data as ServiceWithProviders | null;
}
