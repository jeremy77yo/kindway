-- =============================================================================
-- Add supported employment providers and remove regional centers from employment
-- Employment service ID: 11111111-1111-1111-1111-111111111108
-- =============================================================================

-- 1. REMOVE regional centers from employment (they are not direct providers)
DELETE FROM provider_services
WHERE service_id = '11111111-1111-1111-1111-111111111108'
  AND provider_id IN (
    '22222222-2222-2222-2222-222222222201', -- Golden Gate Regional Center
    '22222222-2222-2222-2222-222222222202', -- Regional Center of the East Bay
    '22222222-2222-2222-2222-222222222203'  -- San Andreas Regional Center
  );

-- 2. UPDATE existing providers with better contact info

-- Clausen House (already exists as ILS provider, update with employment info)
UPDATE providers SET
  website = 'https://www.clausenhouse.org',
  email = 'info@clausenhouse.org',
  street_address = '650 Grand Ave',
  zip_code = '94610'
WHERE id = 'aaaaaaaa-aaaa-4aaa-baaa-000000000032';

-- Sentry Living Solutions (update contact info and description)
UPDATE providers SET
  website = 'https://www.sentrylivingsolutions.org',
  description = 'Sentry Living Solutions is a nonprofit serving adults with developmental disabilities since 2016. Programs include Independent Living Services, Supported Living Services, Supported Employment, and Applied Behavioral Analysis (ABA). Their supported employment program helps clients find meaningful employment through job coaching, on-the-job training, and ongoing support with a focus on self-determination, vocational skills, and community integration.'
WHERE id = 'aaaaaaaa-aaaa-4aaa-baaa-0000000000bc';

-- Social Vocational Service Oakland (update contact info)
UPDATE providers SET
  website = 'https://socialvocationalservices.org',
  description = 'Social Vocational Services (SVS) Oakland provides supported employment, community inclusion, and career exploration programs for adults with intellectual and developmental disabilities. SVS helps individuals find meaningful work through job coaching, skills training, and ongoing workplace support.'
WHERE id = 'aaaaaaaa-aaaa-4aaa-baaa-0000000000c5';

-- 3. INSERT new providers

-- Pacific Coast Community Services (PCCS) - Berkeley
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, email, website, street_address, city, state, zip_code, service_area, languages, age_groups_served, funding_accepted, accepts_new_clients, is_verified, is_active)
VALUES (
  'cccccccc-cccc-4ccc-bccc-000000000001',
  'Pacific Coast Community Services (PCCS)',
  'pacific-coast-community-services',
  'Pacific Coast Community Services (PCCS) is a California nonprofit providing employment and training services for individuals with disabilities. PCCS offers vocational training, job placement, and ongoing support to help clients achieve competitive integrated employment. Programs include digital literacy and technology skills training, food service training, and work experience placements in the Bay Area. Clients are referred through the Department of Rehabilitation and allied partner organizations.',
  'Employment training and placement services for individuals with disabilities in the Bay Area.',
  'nonprofit',
  '(510) 390-7001',
  'info@pccsonline.org',
  'https://pccsonline.org',
  '1790 Shattuck Ave.',
  'Berkeley',
  'CA',
  '94709',
  ARRAY['Berkeley', 'Oakland', 'Richmond', 'Bay Area'],
  ARRAY['English'],
  ARRAY['18-22', '22+'],
  ARRAY['Department of Rehabilitation', 'Regional Center'],
  true,
  true,
  true
) ON CONFLICT (slug) DO NOTHING;

-- Social Vocational Services (SVS) - Berkeley Office
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, website, street_address, city, state, zip_code, service_area, languages, age_groups_served, funding_accepted, accepts_new_clients, is_verified, is_active)
VALUES (
  'cccccccc-cccc-4ccc-bccc-000000000002',
  'Social Vocational Services (SVS) - Berkeley',
  'social-vocational-services-berkeley',
  'Social Vocational Services (SVS) Berkeley office provides supported employment, community inclusion, and career exploration programs for adults with intellectual and developmental disabilities. SVS offers individualized services including job coaching, skills training, and ongoing workplace support to help clients achieve their employment goals.',
  'Supported employment and community inclusion programs for adults with developmental disabilities.',
  'nonprofit',
  '(415) 896-5777',
  'https://socialvocationalservices.org',
  '2030 Addison St., Suite 700',
  'Berkeley',
  'CA',
  '94704',
  ARRAY['Berkeley', 'Oakland', 'Albany', 'El Cerrito'],
  ARRAY['English', 'Spanish'],
  ARRAY['18-22', '22+'],
  ARRAY['Regional Center', 'Department of Rehabilitation'],
  true,
  true,
  true
) ON CONFLICT (slug) DO NOTHING;

-- Helping Hands East Bay (HHEB) - Alameda
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, email, website, street_address, city, state, zip_code, service_area, languages, age_groups_served, disability_populations, funding_accepted, accepts_new_clients, is_verified, is_active)
VALUES (
  'cccccccc-cccc-4ccc-bccc-000000000003',
  'Helping Hands East Bay (HHEB)',
  'helping-hands-east-bay',
  'Helping Hands East Bay empowers Asian immigrant families impacted by developmental disabilities through supported employment, community integration, and family support services. Their supported employment program provides one-on-one training including resume preparation, interview practice, and job search assistance. HHEB also operates a community integration day program and outreach services with bilingual and bicultural staff specializing in serving Cantonese, Vietnamese, Filipino, and Pacific Islander communities.',
  'Supported employment and community programs for Asian immigrant families impacted by developmental disabilities.',
  'nonprofit',
  '(510) 871-2187',
  'info@hheb.org',
  'https://www.hheb.org',
  '2447 Santa Clara Ave, Suite 201',
  'Alameda',
  'CA',
  '94501',
  ARRAY['Alameda', 'Oakland', 'San Leandro', 'East Bay'],
  ARRAY['English', 'Chinese (Cantonese)', 'Vietnamese', 'Tagalog'],
  ARRAY['18-22', '22+'],
  ARRAY['Autism', 'Intellectual Disability', 'Developmental Delay'],
  ARRAY['Regional Center'],
  true,
  true,
  true
) ON CONFLICT (slug) DO NOTHING;

-- Commercial Support Services (CSS) / VistAbility - Richmond
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, website, street_address, city, state, zip_code, service_area, languages, age_groups_served, funding_accepted, accepts_new_clients, is_verified, is_active)
VALUES (
  'cccccccc-cccc-4ccc-bccc-000000000004',
  'Commercial Support Services (CSS) - VistAbility',
  'commercial-support-services-vistability',
  'Commercial Support Services (CSS) is a division of VistAbility (formerly Contra Costa ARC), a nonprofit providing supported employment for adults with intellectual and developmental disabilities since 1965. CSS offers both individual job placement and group employment options, where teams of workers accompanied by a job coach work at local businesses. The program helps participants make informed choices about where and how they work, with a focus on meaningful community employment.',
  'Supported employment with individual and group placement options for adults with developmental disabilities.',
  'nonprofit',
  '(510) 233-7303',
  'https://vistability.org',
  '1420 Regatta Blvd.',
  'Richmond',
  'CA',
  '94804',
  ARRAY['Richmond', 'El Cerrito', 'San Pablo', 'Contra Costa County'],
  ARRAY['English', 'Spanish'],
  ARRAY['22+'],
  ARRAY['Regional Center', 'Department of Rehabilitation'],
  true,
  true,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 4. LINK all providers to employment service

-- Existing providers: Clausen House, Sentry Living Solutions, SVS Oakland
INSERT INTO provider_services (id, provider_id, service_id, details, is_primary)
VALUES
  (gen_random_uuid(), 'aaaaaaaa-aaaa-4aaa-baaa-000000000032', '11111111-1111-1111-1111-111111111108', 'Supported employment services helping individuals with disabilities find and maintain competitive employment in the community.', false),
  (gen_random_uuid(), 'aaaaaaaa-aaaa-4aaa-baaa-0000000000bc', '11111111-1111-1111-1111-111111111108', 'Employment support and job coaching services for adults with developmental disabilities.', false),
  (gen_random_uuid(), 'aaaaaaaa-aaaa-4aaa-baaa-0000000000c5', '11111111-1111-1111-1111-111111111108', 'Supported employment, career exploration, and job coaching for adults with intellectual and developmental disabilities.', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;

-- New providers: PCCS, SVS Berkeley, HHEB, CSS/VistAbility
INSERT INTO provider_services (id, provider_id, service_id, details, is_primary)
VALUES
  (gen_random_uuid(), 'cccccccc-cccc-4ccc-bccc-000000000001', '11111111-1111-1111-1111-111111111108', 'Vocational training, job placement, and ongoing employment support. Programs include digital literacy, food service training, and work experience placements.', true),
  (gen_random_uuid(), 'cccccccc-cccc-4ccc-bccc-000000000002', '11111111-1111-1111-1111-111111111108', 'Supported employment, community inclusion, and career exploration with individualized job coaching.', true),
  (gen_random_uuid(), 'cccccccc-cccc-4ccc-bccc-000000000003', '11111111-1111-1111-1111-111111111108', 'Supported employment with one-on-one training including resume preparation, interview practice, and job search. Bilingual staff serving Cantonese, Vietnamese, Filipino, and Pacific Islander communities.', true),
  (gen_random_uuid(), 'cccccccc-cccc-4ccc-bccc-000000000004', '11111111-1111-1111-1111-111111111108', 'Individual and group supported employment placements. Teams of workers with job coaches at local businesses including retail, warehouse, and office settings.', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
