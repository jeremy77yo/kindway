CREATE TABLE next_step_flows (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  service_id uuid NOT NULL REFERENCES services(id) ON DELETE CASCADE,
  step_number integer NOT NULL,
  title text NOT NULL,
  description text NOT NULL,
  action_type text NOT NULL,
  action_details jsonb,
  created_at timestamptz NOT NULL DEFAULT now(),
  UNIQUE(service_id, step_number)
);

CREATE INDEX idx_next_step_flows_service ON next_step_flows(service_id);
