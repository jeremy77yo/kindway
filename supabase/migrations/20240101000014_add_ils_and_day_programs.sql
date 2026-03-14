-- Add Independent Living Services (ILS) and Day Programs as dedicated service categories
-- These were previously buried in other service descriptions

INSERT INTO services (id, name, slug, category, short_description, full_description, eligibility_criteria, documents_needed, what_to_ask_for, typical_timeline, age_groups, icon_name, sort_order) VALUES

-- Independent Living Services (ILS)
(
  '11111111-1111-1111-1111-111111111116',
  'Independent Living Services (ILS)',
  'independent-living',
  'Adult Services',
  'ILS teaches adults with developmental disabilities essential life skills — cooking, budgeting, transportation, and self-advocacy — to live on their own or with minimal support.',
  'Independent Living Services (ILS) help adults with developmental disabilities learn and practice the skills needed to live as independently as possible in their own homes and communities. ILS is one of the most commonly requested Regional Center services for adults transitioning out of the family home or looking to increase their independence.

ILS staff work one-on-one with individuals in their homes and communities, teaching practical skills such as meal planning and cooking, grocery shopping, managing money and paying bills, cleaning and home maintenance, using public transportation, scheduling medical appointments, understanding their rights as tenants, and building social connections. The frequency and focus of ILS sessions are tailored to each person''s goals and needs, typically ranging from a few hours per week to daily check-ins.

ILS differs from Supported Living Services (SLS) in the level of support provided. ILS is designed for individuals who need periodic skill-building and check-ins, while SLS provides more intensive daily support. Many people start with SLS and transition to ILS as they gain skills and confidence. The goal of both programs is to support people in living the most independent lives possible, consistent with their preferences and abilities.

ILS is funded through the Regional Center and is included in the Individual Program Plan (IPP). To access ILS, talk to your Regional Center service coordinator about your independent living goals. They will help identify a vendored ILS provider in your area and authorize the appropriate level of service.',
  'Adults (typically 18+) with developmental disabilities who are Regional Center consumers. Must have independent living goals in their Individual Program Plan (IPP). The individual must have or be planning to have their own living arrangement (apartment, shared housing, etc.).',
  ARRAY['Regional Center eligibility documentation', 'Individual Program Plan (IPP) with independent living goals', 'Proof of residence or housing plan', 'Identification documents'],
  ARRAY['How many hours per week of ILS support will I receive?', 'What specific skills does your program focus on teaching?', 'Can ILS staff help me learn to use public transportation?', 'How do you match me with an ILS worker and can I request a change?', 'What is the process if I need more support than ILS provides?'],
  'Regional Center authorization is part of the IPP process, typically 30-60 days. Finding a matched ILS provider may take an additional 2-4 weeks depending on availability in your area.',
  ARRAY['18-22', '22+'],
  'Home',
  3
),

-- Day Programs
(
  '11111111-1111-1111-1111-111111111117',
  'Day Programs',
  'day-programs',
  'Adult Services',
  'Day programs provide structured daytime activities for adults with disabilities, including skill-building, social interaction, community outings, volunteering, and pre-vocational training.',
  'Day programs offer structured activities during daytime hours for adults with developmental disabilities. These programs provide a safe, engaging environment where participants can build skills, socialize with peers, engage in meaningful activities, and participate in their communities. Day programs are one of the most widely used Regional Center services for adults who are not yet employed or who need a combination of work and structured activities.

There are several types of day programs:

Activity Centers provide group-based activities in a facility setting, focusing on social skills, daily living skills, arts and crafts, music, fitness, and community outings. These programs typically operate Monday through Friday and provide a consistent daily routine.

Community Integration Programs focus on getting participants out into the community — volunteering, taking classes, visiting local businesses, and practicing real-world skills like ordering at a restaurant or navigating a store.

Pre-Vocational Programs help individuals build work-related skills like following directions, working on a team, time management, and completing tasks. These programs often serve as a stepping stone to supported employment.

Many programs now offer person-centered approaches that tailor activities to each individual''s interests and goals rather than using a one-size-fits-all schedule. When choosing a day program, visit multiple sites, observe activities, talk to current participants and their families, and make sure the program aligns with the individual''s preferences and long-term goals.

Day programs are funded through the Regional Center and authorized as part of the Individual Program Plan (IPP). Transportation to and from the program is often included or separately funded through the Regional Center.',
  'Adults (typically 18-22 after school transition, or 22+) with developmental disabilities who are Regional Center consumers. Must be included in the Individual Program Plan (IPP). Some programs have specific criteria related to support needs or behavioral considerations.',
  ARRAY['Regional Center eligibility documentation', 'Individual Program Plan (IPP)', 'Medical information and emergency contacts', 'Behavioral support plan (if applicable)', 'Transportation needs assessment'],
  ARRAY['What does a typical day look like at your program?', 'What is the staff-to-participant ratio?', 'How do you individualize activities for each person?', 'Do you offer community outings, and how often?', 'Is transportation provided or can the Regional Center fund it separately?', 'What are your policies on behavioral support and how is staff trained?'],
  'Regional Center authorization is part of the IPP process. Visiting and selecting a day program typically takes 2-4 weeks. Some programs have waitlists of 1-3 months.',
  ARRAY['18-22', '22+'],
  'Sun',
  4
);

-- Shift existing services down to make room for ILS and Day Programs near the top
UPDATE services SET sort_order = sort_order + 2 WHERE slug NOT IN ('early-intervention', 'regional-center', 'independent-living', 'day-programs') AND sort_order >= 3;
