-- Enable RLS on all tables
ALTER TABLE services ENABLE ROW LEVEL SECURITY;
ALTER TABLE providers ENABLE ROW LEVEL SECURITY;
ALTER TABLE provider_services ENABLE ROW LEVEL SECURITY;
ALTER TABLE user_sessions ENABLE ROW LEVEL SECURITY;
ALTER TABLE next_step_flows ENABLE ROW LEVEL SECURITY;
ALTER TABLE experience_reports ENABLE ROW LEVEL SECURITY;
ALTER TABLE provider_experience_summaries ENABLE ROW LEVEL SECURITY;
ALTER TABLE saved_items ENABLE ROW LEVEL SECURITY;
ALTER TABLE ai_conversations ENABLE ROW LEVEL SECURITY;
ALTER TABLE moderation_actions ENABLE ROW LEVEL SECURITY;

-- Public read access to active services and providers
CREATE POLICY "Public can view active services" ON services
  FOR SELECT USING (is_active = true);

CREATE POLICY "Public can view active providers" ON providers
  FOR SELECT USING (is_active = true);

CREATE POLICY "Public can view provider services" ON provider_services
  FOR SELECT USING (true);

CREATE POLICY "Public can view next step flows" ON next_step_flows
  FOR SELECT USING (true);

-- Public can view approved experience reports
CREATE POLICY "Public can view approved experiences" ON experience_reports
  FOR SELECT USING (status = 'approved');

-- Public can submit experience reports
CREATE POLICY "Public can submit experiences" ON experience_reports
  FOR INSERT WITH CHECK (true);

-- Public can view experience summaries
CREATE POLICY "Public can view experience summaries" ON provider_experience_summaries
  FOR SELECT USING (true);

-- Updated timestamp trigger function
CREATE OR REPLACE FUNCTION update_updated_at()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = now();
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Apply updated_at triggers
CREATE TRIGGER set_services_updated_at
  BEFORE UPDATE ON services
  FOR EACH ROW EXECUTE FUNCTION update_updated_at();

CREATE TRIGGER set_providers_updated_at
  BEFORE UPDATE ON providers
  FOR EACH ROW EXECUTE FUNCTION update_updated_at();

CREATE TRIGGER set_experience_reports_updated_at
  BEFORE UPDATE ON experience_reports
  FOR EACH ROW EXECUTE FUNCTION update_updated_at();

CREATE TRIGGER set_ai_conversations_updated_at
  BEFORE UPDATE ON ai_conversations
  FOR EACH ROW EXECUTE FUNCTION update_updated_at();
