CREATE TABLE provider_experience_summaries (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  provider_id uuid NOT NULL UNIQUE REFERENCES providers(id) ON DELETE CASCADE,
  total_reviews integer NOT NULL DEFAULT 0,
  average_rating numeric(3,2) NOT NULL DEFAULT 0,
  average_wait_weeks numeric(5,2),
  average_staff_helpfulness numeric(3,2),
  average_accessibility numeric(3,2),
  recommendation_rate numeric(5,2),
  summary_text text,
  last_computed_at timestamptz NOT NULL DEFAULT now()
);

CREATE INDEX idx_experience_summaries_provider ON provider_experience_summaries(provider_id);
