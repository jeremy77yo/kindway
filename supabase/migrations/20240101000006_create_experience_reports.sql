CREATE TABLE experience_reports (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  provider_id uuid NOT NULL REFERENCES providers(id) ON DELETE CASCADE,
  service_id uuid REFERENCES services(id) ON DELETE SET NULL,
  session_id uuid REFERENCES user_sessions(id) ON DELETE SET NULL,
  rating integer NOT NULL CHECK (rating >= 1 AND rating <= 5),
  experience_text text NOT NULL,
  service_date date,
  wait_time_weeks integer,
  staff_helpfulness integer CHECK (staff_helpfulness >= 1 AND staff_helpfulness <= 5),
  accessibility_rating integer CHECK (accessibility_rating >= 1 AND accessibility_rating <= 5),
  would_recommend boolean,
  status text NOT NULL DEFAULT 'pending' CHECK (status IN ('pending', 'approved', 'rejected')),
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);

CREATE INDEX idx_experience_reports_provider ON experience_reports(provider_id);
CREATE INDEX idx_experience_reports_status ON experience_reports(status);
