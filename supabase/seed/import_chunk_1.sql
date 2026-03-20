-- =============================================================================
-- 1. ADD MISSING SERVICE CATEGORIES
-- =============================================================================

-- Day Programs (event code 880) - new service category
INSERT INTO services (id, name, slug, category, short_description, full_description, eligibility_criteria, documents_needed, what_to_ask_for, typical_timeline, age_groups, icon_name, sort_order) VALUES
(
  '11111111-1111-1111-1111-111111111116',
  'Day Programs',
  'day-programs',
  'Adult Services',
  'Structured day programs for adults with developmental disabilities offering skill-building, social activities, and community integration.',
  'Day programs provide structured daytime activities for adults with developmental disabilities. Programs may include life skills training, vocational readiness, community integration activities, social skills development, arts and recreation, and personal care support. Day programs are typically funded through Regional Center and operate during weekday business hours. They serve as an alternative to employment for individuals who need more support or as a complement to part-time employment.',
  'Adults (18+) with developmental disabilities who are Regional Center consumers. Must have a day program authorized in the Individual Program Plan (IPP).',
  ARRAY['Regional Center eligibility', 'IPP authorization for day program services', 'Current assessment or evaluation'],
  ARRAY['What is the staff-to-participant ratio?', 'What activities and skill-building opportunities are offered?', 'How do you support community integration?', 'What are the hours of operation?', 'Is transportation provided?'],
  'Authorization through Regional Center IPP process. Placement depends on program availability and waitlists.',
  ARRAY['18-22', '22+'],
  'Building',
  16
)
ON CONFLICT (slug) DO NOTHING;

-- Independent Living Skills / ILS (event code 520) - new service category
INSERT INTO services (id, name, slug, category, short_description, full_description, eligibility_criteria, documents_needed, what_to_ask_for, typical_timeline, age_groups, icon_name, sort_order) VALUES
(
  '11111111-1111-1111-1111-111111111117',
  'Independent Living Skills (ILS)',
  'independent-living',
  'Adult Services',
  'Training and support to help individuals with developmental disabilities develop skills for independent living in the community.',
  'Independent Living Skills (ILS) programs help individuals with developmental disabilities learn and practice skills needed for greater independence. Services may include training in cooking, cleaning, budgeting, shopping, using public transportation, personal hygiene, medication management, social skills, and community navigation. ILS is typically provided one-on-one or in small groups, either in the individual''s home or in community settings. The goal is to increase self-sufficiency and community participation.',
  'Individuals with developmental disabilities who are Regional Center consumers. Must have ILS authorized in the Individual Program Plan (IPP). Available to adults and transition-age youth.',
  ARRAY['Regional Center eligibility', 'IPP authorization for ILS services', 'Assessment of independent living needs'],
  ARRAY['What specific skills does the program focus on?', 'How are goals set and progress measured?', 'What is the staff-to-client ratio?', 'Are services provided in-home or in the community?', 'How many hours per week of service are typical?'],
  'Authorization through Regional Center IPP process. Finding a qualified ILS provider may take 2-6 weeks.',
  ARRAY['18-22', '22+'],
  'Key',
  17
)
ON CONFLICT (slug) DO NOTHING;