CREATE TABLE providers (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  name text NOT NULL,
  slug text NOT NULL UNIQUE,
  description text NOT NULL,
  short_description text,
  provider_type text NOT NULL,
  phone text,
  email text,
  website text,
  street_address text,
  city text,
  state text DEFAULT 'CA',
  zip_code text,
  latitude double precision,
  longitude double precision,
  service_area text[],
  languages text[],
  age_groups_served text[],
  disability_populations text[],
  funding_accepted text[],
  accepts_new_clients boolean NOT NULL DEFAULT true,
  waitlist_status text DEFAULT 'none',
  hours_of_operation text,
  is_verified boolean NOT NULL DEFAULT false,
  is_active boolean NOT NULL DEFAULT true,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);

CREATE INDEX idx_providers_slug ON providers(slug);
CREATE INDEX idx_providers_type ON providers(provider_type);
CREATE INDEX idx_providers_city ON providers(city);
CREATE INDEX idx_providers_active ON providers(is_active);
CREATE INDEX idx_providers_languages ON providers USING GIN(languages);
CREATE INDEX idx_providers_age_groups ON providers USING GIN(age_groups_served);
CREATE INDEX idx_providers_disability ON providers USING GIN(disability_populations);
CREATE INDEX idx_providers_funding ON providers USING GIN(funding_accepted);
CREATE INDEX idx_providers_service_area ON providers USING GIN(service_area);
