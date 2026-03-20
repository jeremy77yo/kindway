-- =============================================================================
-- Imported Providers from Regional Center Vendor Lists
-- Generated from QPROVID files (Day Programs, ILS, Respite)
-- Date: 2026-03-13
-- =============================================================================
-- Summary:
--   Day Programs (880):  71 records
--   ILS (520):           130 records
--   Respite (862):       56 records
--   Total raw:           257 records
--   Unique new:          236 providers
--   Existing matches:    3 providers
-- =============================================================================

BEGIN;

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

-- =============================================================================
-- 2. PROVIDERS (236 new providers)
-- =============================================================================

-- 1. 1 Step Forward (Resource #HB1330, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000001',
  '1 Step Forward',
  '1-step-forward',
  '1 Step Forward provides independent living skills training and support in Fremont, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5592324001',
  '39275 Mission Blvd #104',
  'Fremont',
  'CA',
  '94539',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 2. 24hr Homecare LLC (Resource #PN1357, from: Respite)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000002',
  '24hr Homecare LLC',
  '24hr-homecare-llc',
  '24hr Homecare LLC provides respite care services for families of individuals with disabilities in Napa, California.',
  'Respite care provider for families of individuals with disabilities.',
  'respite-agency',
  '9167494078',
  '1300 1st Ste 36',
  'Napa',
  'CA',
  '94559',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 3. 24hr Homecare, LLC (Resource #HB0886, from: Respite)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000003',
  '24hr Homecare, LLC',
  '24hr-homecare-llc-2',
  '24hr Homecare, LLC provides respite care services for families of individuals with disabilities in Walnut Creek, California.',
  'Respite care provider for families of individuals with disabilities.',
  'respite-agency',
  '9252391730',
  '1390 Willow Pass Rd #250',
  'Walnut Creek',
  'CA',
  '94520',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 4. A Better Chance Transp Ca Autism Foundation (Resource #H70229, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000004',
  'A Better Chance Transp Ca Autism Foundation',
  'a-better-chance-transp-ca-autism-foundation',
  'A Better Chance Transp Ca Autism Foundation provides day program services for adults with developmental disabilities in Richmond, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '5107580433',
  '4138 Lakeside Drive',
  'Richmond',
  'CA',
  '94806',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 5. A Better Way of Living (Resource #HA0895, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000005',
  'A Better Way of Living',
  'a-better-way-of-living',
  'A Better Way of Living provides independent living skills training and support in Sacramento, California.',
  'Independent living skills training provider.',
  'independent-living',
  '9168224034',
  '7000 Franklin Blvd #350',
  'Sacramento',
  'CA',
  '95823',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 6. A Bright Future, INC Independent Living Skills (Resource #HB0953, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000006',
  'A Bright Future, INC Independent Living Skills',
  'a-bright-future-inc-independent-living-skills',
  'A Bright Future, INC Independent Living Skills provides independent living skills training and support in Pleasant Hill, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5106921804',
  '101 Gregory Lane #28',
  'Pleasant Hill',
  'CA',
  '94523',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 7. A Family Affair Bridges (Resource #HA0494, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000007',
  'A Family Affair Bridges',
  'a-family-affair-bridges',
  'A Family Affair Bridges provides day program services for adults with developmental disabilities in Sacramento, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '9163939682',
  '7395 Greenhaven Dr',
  'Sacramento',
  'CA',
  '95831',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 8. A Step Above LLC (Resource #PB2290, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000008',
  'A Step Above LLC',
  'a-step-above-llc',
  'A Step Above LLC provides day program services for adults with developmental disabilities in Brentwood, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '9254812189',
  '161 Sand Creek Ste C',
  'Brentwood',
  'CA',
  '94513',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 9. A.p.p.l.e. Familyworks (Resource #H12286, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000009',
  'A.p.p.l.e. Familyworks',
  'apple-familyworks',
  'A.p.p.l.e. Familyworks provides independent living skills training and support in Novato, California.',
  'Independent living skills training provider.',
  'independent-living',
  '4154192858',
  '365 Bel Marin Keys Bl 100',
  'Novato',
  'CA',
  '94949',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 10. ABA Shine (Resource #HB1451, from: Respite)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-00000000000a',
  'ABA Shine',
  'aba-shine',
  'ABA Shine provides respite care services for families of individuals with disabilities in Fremont, California.',
  'Respite care provider for families of individuals with disabilities.',
  'respite-agency',
  '5102847057',
  '44093 S Grimmer Blvd',
  'Fremont',
  'CA',
  '94538',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 11. Abella Autism Services Respite (Resource #HB1484, from: Respite)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-00000000000b',
  'Abella Autism Services Respite',
  'abella-autism-services-respite',
  'Abella Autism Services Respite provides respite care services for families of individuals with disabilities in San Ramon, California.',
  'Respite care provider for families of individuals with disabilities.',
  'respite-agency',
  '9252715327',
  '3420 Fostorio Way #200d',
  'San Ramon',
  'CA',
  '94583',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 12. Ablelight INC (Resource #H84769, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-00000000000c',
  'Ablelight INC',
  'ablelight-inc',
  'Ablelight INC provides independent living skills training and support in Fremont, California.',
  'Independent living skills training provider.',
  'independent-living',
  '9496006122',
  '1335 Mowry Ave',
  'Fremont',
  'CA',
  '94538',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 13. Accent Care, INC (Resource #HB0236, from: Respite)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-00000000000d',
  'Accent Care, INC',
  'accent-care-inc',
  'Accent Care, INC provides respite care services for families of individuals with disabilities in Concord, California.',
  'Respite care provider for families of individuals with disabilities.',
  'respite-agency',
  '9256859555',
  '1470 Civic Ct #340',
  'Concord',
  'CA',
  '94520',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 14. Accredited Respite (Resource #HL0621, from: Respite)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-00000000000e',
  'Accredited Respite',
  'accredited-respite',
  'Accredited Respite provides respite care services for families of individuals with disabilities in Woodland Hills, California.',
  'Respite care provider for families of individuals with disabilities.',
  'respite-agency',
  '8189861234',
  '5955 De Soto #160',
  'Woodland Hills',
  'CA',
  '91367',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 15. Action Independence Motivation Support (aims) (Resource #HB0997, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-00000000000f',
  'Action Independence Motivation Support (aims)',
  'action-independence-motivation-support-aims',
  'Action Independence Motivation Support (aims) provides independent living skills training and support in San Leandro, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5108567833',
  '1271 Washington Ave # 785',
  'San Leandro',
  'CA',
  '94577',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 16. Adult Educational Technologies (Resource #H84734, from: Day Programs, Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000010',
  'Adult Educational Technologies',
  'adult-educational-technologies',
  'Adult Educational Technologies provides day program services for adults with developmental disabilities in Oakland, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '5106381750',
  '121 Embarcadero West 2118',
  'Oakland',
  'CA',
  '94607',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 17. Adult Enrichment Services (Resource #HB0956, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000011',
  'Adult Enrichment Services',
  'adult-enrichment-services',
  'Adult Enrichment Services provides independent living skills training and support in Fremont, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5109385287',
  '39560 Stevenson Pl #120',
  'Fremont',
  'CA',
  '94539',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 18. Alegre Care, INC (Resource #HB1274, from: Respite)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000012',
  'Alegre Care, INC',
  'alegre-care-inc',
  'Alegre Care, INC provides respite care services for families of individuals with disabilities in Oakland, California.',
  'Respite care provider for families of individuals with disabilities.',
  'respite-agency',
  NULL,
  '5767 Broadway Ste 201',
  'Oakland',
  'CA',
  '94618',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 19. Alegria - Jasmine (Resource #HB0644, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000013',
  'Alegria - Jasmine',
  'alegria-jasmine',
  'Alegria - Jasmine provides day program services for adults with developmental disabilities in Castro Valley, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '5102878488',
  '5508 Jasmine Ct',
  'Castro Valley',
  'CA',
  '94552',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 20. Alegria - Sand Beach (Resource #HB0646, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000014',
  'Alegria - Sand Beach',
  'alegria-sand-beach',
  'Alegria - Sand Beach provides day program services for adults with developmental disabilities in Alameda, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '5102878488',
  '1169 Sand Beach',
  'Alameda',
  'CA',
  '94501',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 21. Alegria - Transportation (Resource #HB0706, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000015',
  'Alegria - Transportation',
  'alegria-transportation',
  'Alegria - Transportation provides day program services for adults with developmental disabilities in Oakland, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '5102878488',
  '1440 Broadway #700',
  'Oakland',
  'CA',
  '94612',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 22. Alegria-woodland Home (Resource #HB1054, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000016',
  'Alegria-woodland Home',
  'alegria-woodland-home',
  'Alegria-woodland Home provides day program services for adults with developmental disabilities in Concord, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '5102878488',
  '4219 Woodland Dr',
  'Concord',
  'CA',
  '94521',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 23. Alternative Learning Center (Resource #H84742, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000017',
  'Alternative Learning Center',
  'alternative-learning-center',
  'Alternative Learning Center provides independent living skills training and support in Oakland, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5106369694',
  '2738 73rd Avenue',
  'Oakland',
  'CA',
  '94605',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 24. Alternative Ways Llc-ilp (Resource #HC1189, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000018',
  'Alternative Ways Llc-ilp',
  'alternative-ways-llc-ilp',
  'Alternative Ways Llc-ilp provides independent living skills training and support in Fresno, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5592279297',
  '2491 W Shaw Ave Ste #105',
  'Fresno',
  'CA',
  '93711',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 25. Antioch ICF, INC Day Program (Resource #HB0336, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000019',
  'Antioch ICF, INC Day Program',
  'antioch-icf-inc-day-program',
  'Antioch ICF, INC Day Program provides day program services for adults with developmental disabilities in Antioch, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '9257553447',
  '1204 Putnam St',
  'Antioch',
  'CA',
  '94509',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 26. Arc Reedley Traing Cntr Comm Integrated Prg-trans (Resource #H08762, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-00000000001a',
  'Arc Reedley Traing Cntr Comm Integrated Prg-trans',
  'arc-reedley-traing-cntr-comm-integrated-prg-trans',
  'Arc Reedley Traing Cntr Comm Integrated Prg-trans provides day program services for adults with developmental disabilities in Reedley, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '5595472656',
  '1613 12th St',
  'Reedley',
  'CA',
  '93654',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 27. Arcadia Homecare Staffing (prn Services, Inc) (Resource #HG0106, from: Respite)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-00000000001b',
  'Arcadia Homecare Staffing (prn Services, Inc)',
  'arcadia-homecare-staffing-prn-services-inc',
  'Arcadia Homecare Staffing (prn Services, Inc) provides respite care services for families of individuals with disabilities in San Francisco, California.',
  'Respite care provider for families of individuals with disabilities.',
  'respite-agency',
  '9259227921',
  '1388 Sutter St #904',
  'San Francisco',
  'CA',
  '94109',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 28. Aurielle Care LLC (Resource #HB1644, from: Respite)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-00000000001c',
  'Aurielle Care LLC',
  'aurielle-care-llc',
  'Aurielle Care LLC provides respite care services for families of individuals with disabilities in Suite A2 Fremont, California.',
  'Respite care provider for families of individuals with disabilities.',
  'respite-agency',
  '5109546424',
  '39737 Paseo Padre Pkwy',
  'Suite A2 Fremont',
  'CA',
  '94538',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 29. Bay Area Angels LLC (Resource #HB1577, from: Respite)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-00000000001d',
  'Bay Area Angels LLC',
  'bay-area-angels-llc',
  'Bay Area Angels LLC provides respite care services for families of individuals with disabilities in Brentwood, California.',
  'Respite care provider for families of individuals with disabilities.',
  'respite-agency',
  '9256847343',
  '1120 2nd Steet',
  'Brentwood',
  'CA',
  '94513',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 30. Bay Liberty, INC (Resource #HB0925, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-00000000001e',
  'Bay Liberty, INC',
  'bay-liberty-inc',
  'Bay Liberty, INC provides independent living skills training and support in Pleasanton, California.',
  'Independent living skills training provider.',
  'independent-living',
  '9257877461',
  '6701 Koll Center Pkwy#250',
  'Pleasanton',
  'CA',
  '94566',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 31. Be Encouraged Services (Resource #HB1570, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-00000000001f',
  'Be Encouraged Services',
  'be-encouraged-services',
  'Be Encouraged Services provides independent living skills training and support in Orinda, California.',
  'Independent living skills training provider.',
  'independent-living',
  '8025582662',
  '89 Davis Rd Suite 208 #13',
  'Orinda',
  'CA',
  '94563',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 32. Beacon Home Care Group (Resource #HB1191, from: Respite)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000020',
  'Beacon Home Care Group',
  'beacon-home-care-group',
  'Beacon Home Care Group provides respite care services for families of individuals with disabilities in Albany, California.',
  'Respite care provider for families of individuals with disabilities.',
  'respite-agency',
  '5105262273',
  '555 Pierce St Unit Cml4',
  'Albany',
  'CA',
  '94706',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 33. Bethesda Lutheran Communities-mowry (Resource #H14125, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000021',
  'Bethesda Lutheran Communities-mowry',
  'bethesda-lutheran-communities-mowry',
  'Bethesda Lutheran Communities-mowry provides day program services for adults with developmental disabilities in Fremont, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  NULL,
  '1335 Mowry Ave',
  'Fremont',
  'CA',
  '94538',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 34. Blossoms Independent Living (Resource #HQ0990, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000022',
  'Blossoms Independent Living',
  'blossoms-independent-living',
  'Blossoms Independent Living provides independent living skills training and support in La Mesa, California.',
  'Independent living skills training provider.',
  'independent-living',
  '6199955062',
  '9308 Carmichael Drive',
  'La Mesa',
  'CA',
  '91941',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 35. Bridges Home (Resource #HB0850, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000023',
  'Bridges Home',
  'bridges-home',
  'Bridges Home provides day program services for adults with developmental disabilities in Hayward, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '5102447153',
  '21259 Birch Rd',
  'Hayward',
  'CA',
  '94541',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 36. Broadmoor Community Services-ils (Resource #HB0985, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000024',
  'Broadmoor Community Services-ils',
  'broadmoor-community-services-ils',
  'Broadmoor Community Services-ils provides independent living skills training and support in San Leandro, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5104838000',
  '211 Joaquin Ave',
  'San Leandro',
  'CA',
  '94577',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 37. Bttr Living LLC (Resource #HB1621, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000025',
  'Bttr Living LLC',
  'bttr-living-llc',
  'Bttr Living LLC provides independent living skills training and support in Hayward, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5107095809',
  '320 Tennyson Road #b',
  'Hayward',
  'CA',
  '94544',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 38. Buenavista Grp Homes, INC at Hercules by the Bay (Resource #HB0394, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000026',
  'Buenavista Grp Homes, INC at Hercules by the Bay',
  'buenavista-grp-homes-inc-at-hercules-by-the-bay',
  'Buenavista Grp Homes, INC at Hercules by the Bay provides day program services for adults with developmental disabilities in Hercules, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '5107243880',
  '112 Pearce St',
  'Hercules',
  'CA',
  '94547',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 39. Burnham Place (Resource #HB0539, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000027',
  'Burnham Place',
  'burnham-place',
  'Burnham Place provides day program services for adults with developmental disabilities in Fremont, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '4085156444',
  '4736 Robin Ct',
  'Fremont',
  'CA',
  '94539',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 40. Calif St Univs-wayfinders Ilp-ca State Univsy Funda (Resource #HC0899, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000028',
  'Calif St Univs-wayfinders Ilp-ca State Univsy Funda',
  'calif-st-univs-wayfinders-ilp-ca-state-univsy-funda',
  'Calif St Univs-wayfinders Ilp-ca State Univsy Funda provides independent living skills training and support in Fresno, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5592780390',
  '5005 N Maple',
  'Fresno',
  'CA',
  '93740',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 41. California Care Center (Resource #HB1588, from: Respite)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000029',
  'California Care Center',
  'california-care-center',
  'California Care Center provides respite care services for families of individuals with disabilities in Livermore, California.',
  'Respite care provider for families of individuals with disabilities.',
  'respite-agency',
  '9162984187',
  '1089 Blueball Drive #405',
  'Livermore',
  'CA',
  '94551',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 42. California Mentor-bristol (Resource #HB0605, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-00000000002a',
  'California Mentor-bristol',
  'california-mentor-bristol',
  'California Mentor-bristol provides day program services for adults with developmental disabilities in Newark, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '5303563549',
  '5242 Bristol Pl',
  'Newark',
  'CA',
  '94560',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 43. Cammie Lee Foundation (Resource #HB1154, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-00000000002b',
  'Cammie Lee Foundation',
  'cammie-lee-foundation',
  'Cammie Lee Foundation provides independent living skills training and support in Rodeo, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5104171642',
  '785 Corral Dr',
  'Rodeo',
  'CA',
  '94572',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 44. Cap Concord (Resource #H14310, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-00000000002c',
  'Cap Concord',
  'cap-concord',
  'Cap Concord provides day program services for adults with developmental disabilities in Concord, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '9256859742',
  '4615 Clayton Rd',
  'Concord',
  'CA',
  '94521',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 45. Cap Hilltop (Resource #H14210, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-00000000002d',
  'Cap Hilltop',
  'cap-hilltop',
  'Cap Hilltop provides day program services for adults with developmental disabilities in Richmond, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '5102228266',
  '2801 Robert Miller Dr',
  'Richmond',
  'CA',
  '94806',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 46. Capable and Confident (Resource #HB1571, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-00000000002e',
  'Capable and Confident',
  'capable-and-confident',
  'Capable and Confident provides independent living skills training and support in Oakland, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5103885765',
  '675 Hegenberger Rd #241',
  'Oakland',
  'CA',
  '94621',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 47. Carebuilders at Home East Bay (Resource #HB1063, from: Respite)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-00000000002f',
  'Carebuilders at Home East Bay',
  'carebuilders-at-home-east-bay',
  'Carebuilders at Home East Bay provides respite care services for families of individuals with disabilities in Oakland, California.',
  'Respite care provider for families of individuals with disabilities.',
  'respite-agency',
  '5106288426',
  '400 29th St #403',
  'Oakland',
  'CA',
  '94609',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 48. Cedar Ridge House Icf/ddn (Resource #HB0779, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000030',
  'Cedar Ridge House Icf/ddn',
  'cedar-ridge-house-icfddn',
  'Cedar Ridge House Icf/ddn provides day program services for adults with developmental disabilities in Antioch, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '9253255344',
  '5241 Cedar Ridge Wy',
  'Antioch',
  'CA',
  '94531',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 49. Cedars of Marin (Resource #HG0046, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000031',
  'Cedars of Marin',
  'cedars-of-marin',
  'Cedars of Marin provides day program services for adults with developmental disabilities in San Anselmo, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '4155261358',
  '2 Kensington Rd',
  'San Anselmo',
  'CA',
  '94960',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 50. Clausen House - ILS (Resource #H14146, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000032',
  'Clausen House - ILS',
  'clausen-house-ils',
  'Clausen House - ILS provides independent living skills training and support in Oakland, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5108390050',
  '345 Lenox Ave',
  'Oakland',
  'CA',
  '94610',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 51. Cole Vocational Services Horrigan Cole Enterprises (Resource #HB0049, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000033',
  'Cole Vocational Services Horrigan Cole Enterprises',
  'cole-vocational-services-horrigan-cole-enterprises',
  'Cole Vocational Services Horrigan Cole Enterprises provides day program services for adults with developmental disabilities in Antioch, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '5107247190',
  '5179 Lonetree Way',
  'Antioch',
  'CA',
  '94531',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 52. College Living Experience (Resource #HS0560, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000034',
  'College Living Experience',
  'college-living-experience',
  'College Living Experience provides independent living skills training and support in Monterey, California.',
  'Independent living skills training provider.',
  'independent-living',
  '9495008154',
  '300 Bonifacio Place #7',
  'Monterey',
  'CA',
  '93940',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 53. ComforCare Senior Services (Resource #HB0694, from: Respite)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000035',
  'ComforCare Senior Services',
  'comforcare-senior-services',
  'ComforCare Senior Services provides respite care services for families of individuals with disabilities in Orinda, California.',
  'Respite care provider for families of individuals with disabilities.',
  'respite-agency',
  '9252589840',
  '301 Village Sq',
  'Orinda',
  'CA',
  '94563',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 54. ComforCare Senior Srvs (Resource #HB0957, from: Respite)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000036',
  'ComforCare Senior Srvs',
  'comforcare-senior-srvs',
  'ComforCare Senior Srvs provides respite care services for families of individuals with disabilities in Pleasant Hill, California.',
  'Respite care provider for families of individuals with disabilities.',
  'respite-agency',
  '9254298320',
  '1630 Contra Costa Bl #215',
  'Pleasant Hill',
  'CA',
  '94523',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 55. Community Catalysts of California (Resource #HV0123, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000037',
  'Community Catalysts of California',
  'community-catalysts-of-california',
  'Community Catalysts of California provides independent living skills training and support in Stockton, California.',
  'Independent living skills training provider.',
  'independent-living',
  '2099552070',
  '87 W March Ln #6',
  'Stockton',
  'CA',
  '95207',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 56. Community Day Prog, INC (Resource #H54572, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000038',
  'Community Day Prog, INC',
  'community-day-prog-inc',
  'Community Day Prog, INC provides day program services for adults with developmental disabilities in Fremont, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '5104451227',
  '44250 Old Warm Spring #9',
  'Fremont',
  'CA',
  '94538',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 57. Community Enrichment (Resource #HB1089, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000039',
  'Community Enrichment',
  'community-enrichment',
  'Community Enrichment provides independent living skills training and support in San Leandro, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5102287926',
  '1051 MacArthur Blvd',
  'San Leandro',
  'CA',
  '94577',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 58. Community Integrated (Resource #HB0739, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-00000000003a',
  'Community Integrated',
  'community-integrated',
  'Community Integrated provides day program services for adults with developmental disabilities in Brentwood, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '9254206683',
  '151 Sand Creek Rd Bld6 #f',
  'Brentwood',
  'CA',
  '94513',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 59. Community Integrated Support Services (Resource #HB0138, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-00000000003b',
  'Community Integrated Support Services',
  'community-integrated-support-services',
  'Community Integrated Support Services provides day program services for adults with developmental disabilities in Antioch, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '9255847852',
  '1600 a St',
  'Antioch',
  'CA',
  '94509',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 60. Community Integrated Work (Resource #H70265, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-00000000003c',
  'Community Integrated Work',
  'community-integrated-work',
  'Community Integrated Work provides day program services for adults with developmental disabilities in Antioch, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '9257782905',
  '1105 Buchanan Rd Ste a',
  'Antioch',
  'CA',
  '94509',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 61. Community Life Skills Agency (Resource #HB0323, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-00000000003d',
  'Community Life Skills Agency',
  'community-life-skills-agency',
  'Community Life Skills Agency provides independent living skills training and support in Newark, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5107450105',
  '5920 Thornton Ave #c',
  'Newark',
  'CA',
  '94560',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 62. Compass Care Services (Resource #HB0755, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-00000000003e',
  'Compass Care Services',
  'compass-care-services',
  'Compass Care Services provides independent living skills training and support in Pleasanton, California.',
  'Independent living skills training provider.',
  'independent-living',
  '9255513227',
  '6662 Owens Dr',
  'Pleasanton',
  'CA',
  '94588',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 63. Compassionate Care Connection (Resource #HB1543, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-00000000003f',
  'Compassionate Care Connection',
  'compassionate-care-connection',
  'Compassionate Care Connection provides independent living skills training and support in Oakland, California.',
  'Independent living skills training provider.',
  'independent-living',
  '9162975152',
  '2648 International Blvd',
  'Oakland',
  'CA',
  '94601',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 64. Connected Family Supports Agency and Employment (Resource #HB1521, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000040',
  'Connected Family Supports Agency and Employment',
  'connected-family-supports-agency-and-employment',
  'Connected Family Supports Agency and Employment provides independent living skills training and support in Antioch, California.',
  'Independent living skills training provider.',
  'independent-living',
  '9258266830',
  '2350 Galloway Court',
  'Antioch',
  'CA',
  '94531',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 65. Cordelia Adult Residential Care Facility (Resource #HB1604, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000041',
  'Cordelia Adult Residential Care Facility',
  'cordelia-adult-residential-care-facility',
  'Cordelia Adult Residential Care Facility provides independent living skills training and support in Alamenda, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5108680125',
  '1101 Marina Village Pk201',
  'Alamenda',
  'CA',
  '94507',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 66. Creative Living Solutions (Resource #HB1121, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000042',
  'Creative Living Solutions',
  'creative-living-solutions',
  'Creative Living Solutions provides independent living skills training and support in Union City, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5104491369',
  '34303 Torrey Pine Ln',
  'Union City',
  'CA',
  '94587',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 67. Cypress Independent Living Skills Training (Resource #HS0176, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000043',
  'Cypress Independent Living Skills Training',
  'cypress-independent-living-skills-training',
  'Cypress Independent Living Skills Training provides independent living skills training and support in San Jose, California.',
  'Independent living skills training provider.',
  'independent-living',
  '8774457435',
  '1101s Winchester Bl#a-107',
  'San Jose',
  'CA',
  '95128',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 68. Dabs, INC (Resource #HB0769, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000044',
  'Dabs, INC',
  'dabs-inc',
  'Dabs, INC provides independent living skills training and support in Pinole, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5105588786',
  '2801 Pinole Valley Rd 208',
  'Pinole',
  'CA',
  '94564',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 69. Deaf Plus Adult Community (Resource #HB1011, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000045',
  'Deaf Plus Adult Community',
  'deaf-plus-adult-community',
  'Deaf Plus Adult Community provides day program services for adults with developmental disabilities in Newark, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '5107131801',
  '5437 Central Ave #4',
  'Newark',
  'CA',
  '94560',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 70. Development World (Resource #HB1696, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000046',
  'Development World',
  'development-world',
  'Development World provides independent living skills training and support in Concord, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5103434148',
  '1800 Sutter Street #500',
  'Concord',
  'CA',
  '94520',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 71. Dinami Home, INC (Resource #HB1144, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000047',
  'Dinami Home, INC',
  'dinami-home-inc',
  'Dinami Home, INC provides independent living skills training and support in Antioh, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5106899552',
  '1015 Fitzuren Rd #14',
  'Antioh',
  'CA',
  '94509',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 72. Dorothy Glaspie Foundatio N (Resource #HB1349, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000048',
  'Dorothy Glaspie Foundatio N',
  'dorothy-glaspie-foundatio-n',
  'Dorothy Glaspie Foundatio N provides independent living skills training and support in Oakland, California.',
  'Independent living skills training provider.',
  'independent-living',
  '9257861169',
  '8495 Pardee Drive #14481',
  'Oakland',
  'CA',
  '94614',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 73. East Bay Services to the Dd-ils %east Bay Services (Resource #H14420, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000049',
  'East Bay Services to the Dd-ils %east Bay Services',
  'east-bay-services-to-the-dd-ils-east-bay-services',
  'East Bay Services to the Dd-ils %east Bay Services provides independent living skills training and support in Concord, California.',
  'Independent living skills training provider.',
  'independent-living',
  '9258252091',
  '1870 Adobe St',
  'Concord',
  'CA',
  '94520',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 74. Easterseals Northern California (Resource #HB1314, from: Respite)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-00000000004a',
  'Easterseals Northern California',
  'easterseals-northern-california',
  'Easterseals Northern California provides respite care services for families of individuals with disabilities in Walnut Creek, California.',
  'Respite care provider for families of individuals with disabilities.',
  'respite-agency',
  '9252468400',
  '2730 Shadelands Drive B10',
  'Walnut Creek',
  'CA',
  '94598',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 75. Elite Education Services (Resource #HB0880, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-00000000004b',
  'Elite Education Services',
  'elite-education-services',
  'Elite Education Services provides independent living skills training and support in Oakland, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5104184612',
  '4851 Dunkirk Ave',
  'Oakland',
  'CA',
  '94605',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 76. Emerging Horizons (Resource #HB0757, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-00000000004c',
  'Emerging Horizons',
  'emerging-horizons',
  'Emerging Horizons provides independent living skills training and support in San Leandro, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5107768228',
  '1515 Aurora Dr #103',
  'San Leandro',
  'CA',
  '94577',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 77. Empower U Services LLC (Resource #HB1704, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-00000000004d',
  'Empower U Services LLC',
  'empower-u-services-llc',
  'Empower U Services LLC provides independent living skills training and support in Richmond, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5104088543',
  '4924 Plaza Circle',
  'Richmond',
  'CA',
  '94804',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 78. Empowerment for Success (Resource #HB1163, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-00000000004e',
  'Empowerment for Success',
  'empowerment-for-success',
  'Empowerment for Success provides independent living skills training and support in San Leandro, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5102788335',
  '1700 150th Ave',
  'San Leandro',
  'CA',
  '94578',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 79. Enriched Futures (Resource #HB1343, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-00000000004f',
  'Enriched Futures',
  'enriched-futures',
  'Enriched Futures provides independent living skills training and support in Brentwood, California.',
  'Independent living skills training provider.',
  'independent-living',
  '9252384754',
  '3130 Balfour Rd #d297',
  'Brentwood',
  'CA',
  '94513',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 80. Extended Arms Institute, (Resource #HB0589, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000050',
  'Extended Arms Institute,',
  'extended-arms-institute',
  'Extended Arms Institute, provides independent living skills training and support in Antioch, California.',
  'Independent living skills training provider.',
  'independent-living',
  '9257067958',
  '1700 Alhambra Dr',
  'Antioch',
  'CA',
  '94509',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 81. Extended Family Services (Resource #HB1019, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000051',
  'Extended Family Services',
  'extended-family-services',
  'Extended Family Services provides independent living skills training and support in El Sobrante, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5108676452',
  '4833 El Grande Pl',
  'El Sobrante',
  'CA',
  '94803',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 82. Family Support Services of the Bay Area (Resource #H09973, from: Respite)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000052',
  'Family Support Services of the Bay Area',
  'family-support-services-of-the-bay-area',
  'Family Support Services of the Bay Area provides respite care services for families of individuals with disabilities in Oakland, California.',
  'Respite care provider for families of individuals with disabilities.',
  'respite-agency',
  '5109062750',
  '303 Hegenberger Rd #400',
  'Oakland',
  'CA',
  '94621',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 83. FCSN East Bay Community Integrated Day Program (Resource #HB0749, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000053',
  'FCSN East Bay Community Integrated Day Program',
  'fcsn-east-bay-community-integrated-day-program',
  'FCSN East Bay Community Integrated Day Program provides day program services for adults with developmental disabilities in Fremont, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '5107396900',
  '2300 Peralta Blvd',
  'Fremont',
  'CA',
  '94536',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 84. Fijian Angels Homecare (Resource #HB1686, from: Respite)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000054',
  'Fijian Angels Homecare',
  'fijian-angels-homecare',
  'Fijian Angels Homecare provides respite care services for families of individuals with disabilities in Berkeley, California.',
  'Respite care provider for families of individuals with disabilities.',
  'respite-agency',
  '6505180532',
  '2001 Addison St',
  'Berkeley',
  'CA',
  '94704',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 85. Florecer INC (Resource #HB1379, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000055',
  'Florecer INC',
  'florecer-inc',
  'Florecer INC provides independent living skills training and support in Antioch, California.',
  'Independent living skills training provider.',
  'independent-living',
  '4156990424',
  '3200 Lone Tree Way #102',
  'Antioch',
  'CA',
  '94509',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 86. Flores ILP Services INC (Resource #HC1702, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000056',
  'Flores ILP Services INC',
  'flores-ilp-services-inc',
  'Flores ILP Services INC provides independent living skills training and support in Visalia, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5593084090',
  '3003 S Sheridan Ct',
  'Visalia',
  'CA',
  '93292',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 87. Focus Day Program (Resource #H89147, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000057',
  'Focus Day Program',
  'focus-day-program',
  'Focus Day Program provides day program services for adults with developmental disabilities in San Bruno, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '6505892948',
  '715 San Mateo Ave',
  'San Bruno',
  'CA',
  '94066',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 88. Friends of Children with Special Needs (Resource #ZS1039, from: Day Programs, Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000058',
  'Friends of Children with Special Needs',
  'friends-of-children-with-special-needs',
  'Friends of Children with Special Needs provides day program services for adults with developmental disabilities in San Jose, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '4087258000',
  '1029 S. Bascom Ave',
  'San Jose',
  'CA',
  '95128',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 89. Friends of Children with Special Needs (fcsn) (Resource #HB0855, from: Respite)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000059',
  'Friends of Children with Special Needs (fcsn)',
  'friends-of-children-with-special-needs-fcsn',
  'Friends of Children with Special Needs (fcsn) provides respite care services for families of individuals with disabilities in Fremont, California.',
  'Respite care provider for families of individuals with disabilities.',
  'respite-agency',
  '5107396900',
  '2300 Peralta Blvd',
  'Fremont',
  'CA',
  '94536',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 90. Full Circle of Choices (Resource #H84740, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-00000000005a',
  'Full Circle of Choices',
  'full-circle-of-choices',
  'Full Circle of Choices provides independent living skills training and support in Concord, California.',
  'Independent living skills training provider.',
  'independent-living',
  '9256826107',
  '1980 Beach St',
  'Concord',
  'CA',
  '94519',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 91. Future Explored, INC (Resource #PB0939, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-00000000005b',
  'Future Explored, INC',
  'future-explored-inc',
  'Future Explored, INC provides day program services for adults with developmental disabilities in Livermore, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '9252843240',
  '690 N L St',
  'Livermore',
  'CA',
  '94551',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 92. Golden Giants INC (Resource #HB1627, from: Respite)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-00000000005c',
  'Golden Giants INC',
  'golden-giants-inc',
  'Golden Giants INC provides respite care services for families of individuals with disabilities in Antioch, California.',
  'Respite care provider for families of individuals with disabilities.',
  'respite-agency',
  '5105443068',
  '3721 Sunset Lane Unit 103',
  'Antioch',
  'CA',
  '94509',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 93. Golden Hope Services LLC (Resource #HB1610, from: Respite)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-00000000005d',
  'Golden Hope Services LLC',
  'golden-hope-services-llc',
  'Golden Hope Services LLC provides respite care services for families of individuals with disabilities in Dublin, California.',
  'Respite care provider for families of individuals with disabilities.',
  'respite-agency',
  '9252710888',
  '11750 Dublin Blvd #205',
  'Dublin',
  'CA',
  '94568',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 94. Golden House, LLC (Resource #H38253, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-00000000005e',
  'Golden House, LLC',
  'golden-house-llc',
  'Golden House, LLC provides day program services for adults with developmental disabilities in Alameda, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '5106712130',
  '730 Central Ave',
  'Alameda',
  'CA',
  '94501',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 95. Green Oak Developmental Center (Resource #HB0495, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-00000000005f',
  'Green Oak Developmental Center',
  'green-oak-developmental-center',
  'Green Oak Developmental Center provides day program services for adults with developmental disabilities in Union City, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '5104418300',
  '2924 Whipple Rd',
  'Union City',
  'CA',
  '94587',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 96. Green Oak Developmental Center II (Resource #HB0658, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000060',
  'Green Oak Developmental Center II',
  'green-oak-developmental-center-ii',
  'Green Oak Developmental Center II provides day program services for adults with developmental disabilities in Union City, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '5104418300',
  '2827 Whipple Rd',
  'Union City',
  'CA',
  '94587',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 97. Gussie Lee Foundation (Resource #HB1381, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000061',
  'Gussie Lee Foundation',
  'gussie-lee-foundation',
  'Gussie Lee Foundation provides independent living skills training and support in Oakland, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5105420969',
  '1574 79th Ave',
  'Oakland',
  'CA',
  '94621',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 98. Happy Hearts Learning (Resource #HB1462, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000062',
  'Happy Hearts Learning',
  'happy-hearts-learning',
  'Happy Hearts Learning provides independent living skills training and support in Antioch, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5109789374',
  '4522 Elkhorn Way',
  'Antioch',
  'CA',
  '94531',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 99. Happy Valley #3 (Resource #H70244, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000063',
  'Happy Valley #3',
  'happy-valley-3',
  'Happy Valley #3 provides day program services for adults with developmental disabilities in Concord, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '9259441222',
  '4118 Phoenix St',
  'Concord',
  'CA',
  '94521',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 100. Hatch (Resource #H14153, from: Independent Living Skills, Respite)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000064',
  'Hatch',
  'hatch',
  'Hatch provides independent living skills training and support in Alameda, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5108149422',
  '1010 Versailles Ave',
  'Alameda',
  'CA',
  '94501',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 101. Hcar-ongoing Support (Resource #H11120, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000065',
  'Hcar-ongoing Support',
  'hcar-ongoing-support',
  'Hcar-ongoing Support provides independent living skills training and support in Eureka, California.',
  'Independent living skills training provider.',
  'independent-living',
  '7074438317',
  '1707 E Street #2',
  'Eureka',
  'CA',
  '95501',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 102. Hdsi Incorporated DBA ComforCare Home Care Cent (Resource #HB1558, from: Respite)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000066',
  'Hdsi Incorporated DBA ComforCare Home Care Cent',
  'hdsi-incorporated-dba-comforcare-home-care-cent',
  'Hdsi Incorporated DBA ComforCare Home Care Cent provides respite care services for families of individuals with disabilities in Orinda, California.',
  'Respite care provider for families of individuals with disabilities.',
  'respite-agency',
  '9253298539',
  '301 Village Sq',
  'Orinda',
  'CA',
  '94563',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 103. Health Connect Nursing (Resource #HB1600, from: Respite)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000067',
  'Health Connect Nursing',
  'health-connect-nursing',
  'Health Connect Nursing provides respite care services for families of individuals with disabilities in Pleasanton, California.',
  'Respite care provider for families of individuals with disabilities.',
  'respite-agency',
  '5104609670',
  '4125 Mohr Ave #c',
  'Pleasanton',
  'CA',
  '94566',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 104. Health Pathways, INC (Resource #HB0994, from: Respite)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000068',
  'Health Pathways, INC',
  'health-pathways-inc',
  'Health Pathways, INC provides respite care services for families of individuals with disabilities in Castro Valley, California.',
  'Respite care provider for families of individuals with disabilities.',
  'respite-agency',
  '5105382273',
  '20585 Wisteria St',
  'Castro Valley',
  'CA',
  '94546',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 105. Horizons Education & Training Center (Resource #HB0970, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000069',
  'Horizons Education & Training Center',
  'horizons-education-training-center',
  'Horizons Education & Training Center provides independent living skills training and support in Oakley, California.',
  'Independent living skills training provider.',
  'independent-living',
  '4085095158',
  '105 Montevino Ct',
  'Oakley',
  'CA',
  '94561',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 106. Humble Core Services LLC (Resource #HB1643, from: Respite)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-00000000006a',
  'Humble Core Services LLC',
  'humble-core-services-llc',
  'Humble Core Services LLC provides respite care services for families of individuals with disabilities in Walnut Creek, California.',
  'Respite care provider for families of individuals with disabilities.',
  'respite-agency',
  '9252360401',
  '1255 Treat Blvd #300',
  'Walnut Creek',
  'CA',
  '94597',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 107. I Promote, LLC (Resource #HA1176, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-00000000006b',
  'I Promote, LLC',
  'i-promote-llc',
  'I Promote, LLC provides independent living skills training and support in Crocklin, California.',
  'Independent living skills training provider.',
  'independent-living',
  '9167596404',
  '4750 Discovery Preserve',
  'Crocklin',
  'CA',
  '95677',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 108. ILS Unlimited Harmony Home, Associated (Resource #HB0223, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-00000000006c',
  'ILS Unlimited Harmony Home, Associated',
  'ils-unlimited-harmony-home-associated',
  'ILS Unlimited Harmony Home, Associated provides independent living skills training and support in Walnut Creek, California.',
  'Independent living skills training provider.',
  'independent-living',
  '9252566303',
  '590 Lennon Ln Ste 160',
  'Walnut Creek',
  'CA',
  '94598',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 109. Inclusion Person Centered Services (Resource #HB1401, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-00000000006d',
  'Inclusion Person Centered Services',
  'inclusion-person-centered-services',
  'Inclusion Person Centered Services provides independent living skills training and support in Dublin, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5107356320',
  '8207 N Lake Dr, #c',
  'Dublin',
  'CA',
  '94568',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 110. Independent Approach (Resource #HB1345, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-00000000006e',
  'Independent Approach',
  'independent-approach',
  'Independent Approach provides independent living skills training and support in Livermore, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5103401713',
  '569 Leisure St',
  'Livermore',
  'CA',
  '94551',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 111. Independent by Choice LLC (Resource #HB0608, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-00000000006f',
  'Independent by Choice LLC',
  'independent-by-choice-llc',
  'Independent by Choice LLC provides independent living skills training and support in Moraga, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5103842184',
  '460 Center St # 6973',
  'Moraga',
  'CA',
  '94556',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 112. Independent Services (Resource #HG0054, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000070',
  'Independent Services',
  'independent-services',
  'Independent Services provides independent living skills training and support in Pacifica, California.',
  'Independent living skills training provider.',
  'independent-living',
  '6503406100',
  '312 Firecrest Ave',
  'Pacifica',
  'CA',
  '94044',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 113. Independent Solutions Community Services (Resource #HB0904, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000071',
  'Independent Solutions Community Services',
  'independent-solutions-community-services',
  'Independent Solutions Community Services provides independent living skills training and support in Newark, California.',
  'Independent living skills training provider.',
  'independent-living',
  '8312298857',
  '6411 Marguerite Drive',
  'Newark',
  'CA',
  '94560',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 114. Inspire Higher of the (Resource #HV0756, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000072',
  'Inspire Higher of the',
  'inspire-higher-of-the',
  'Inspire Higher of the provides day program services for adults with developmental disabilities in Lathrop, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '5105090712',
  '15421 Port Washington St',
  'Lathrop',
  'CA',
  '95330',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 115. Inspired Alliance INC (Resource #HB1524, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000073',
  'Inspired Alliance INC',
  'inspired-alliance-inc',
  'Inspired Alliance INC provides independent living skills training and support in Oakland, California.',
  'Independent living skills training provider.',
  'independent-living',
  '9253540465',
  '1999 Harrison St #1800',
  'Oakland',
  'CA',
  '94612',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 116. Inspired Living INC (Resource #HB1508, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000074',
  'Inspired Living INC',
  'inspired-living-inc',
  'Inspired Living INC provides independent living skills training and support in Walnut Creek, California.',
  'Independent living skills training provider.',
  'independent-living',
  '9253663163',
  '1212 Broadway Plaza #2100',
  'Walnut Creek',
  'CA',
  '94596',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 117. Integrated Community Srvs (Resource #H12427, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000075',
  'Integrated Community Srvs',
  'integrated-community-srvs',
  'Integrated Community Srvs provides independent living skills training and support in San Rafael, California.',
  'Independent living skills training provider.',
  'independent-living',
  '4154558483',
  '3020 Kerner Blvd #a',
  'San Rafael',
  'CA',
  '94901',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 118. Jaqui' Foundation, INC (Resource #HB0455, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000076',
  'Jaqui'' Foundation, INC',
  'jaqui-foundation-inc',
  'Jaqui'' Foundation, INC provides independent living skills training and support in Oakland, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5105624721',
  '675 Hegenberger Rd #209',
  'Oakland',
  'CA',
  '94621',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 119. Jayar Home, LLC (Resource #HB0927, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000077',
  'Jayar Home, LLC',
  'jayar-home-llc',
  'Jayar Home, LLC provides day program services for adults with developmental disabilities in Hayward, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '4159909617',
  '576 Jayar Pl',
  'Hayward',
  'CA',
  '94544',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 120. Johana Segura, INC (Resource #HB1210, from: Respite)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000078',
  'Johana Segura, INC',
  'johana-segura-inc',
  'Johana Segura, INC provides respite care services for families of individuals with disabilities in Concord, California.',
  'Respite care provider for families of individuals with disabilities.',
  'respite-agency',
  '5103842857',
  '1820 Enclave Pl',
  'Concord',
  'CA',
  '94519',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 121. Jones Caring Services,llc (Resource #HB1099, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000079',
  'Jones Caring Services,llc',
  'jones-caring-servicesllc',
  'Jones Caring Services,llc provides independent living skills training and support in Hayward, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5105142249',
  '225 W Winton Ave #g',
  'Hayward',
  'CA',
  '94544',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 122. Kalos Specialized Svc-ilp Corpus, Amy a. (Resource #HC1874, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-00000000007a',
  'Kalos Specialized Svc-ilp Corpus, Amy a.',
  'kalos-specialized-svc-ilp-corpus-amy-a',
  'Kalos Specialized Svc-ilp Corpus, Amy a. provides independent living skills training and support in Fresno, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5598401928',
  '4420 N First St #115',
  'Fresno',
  'CA',
  '93726',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 123. Kalos Specialized SVS ILP Corpus , Amy a (Resource #HC1657, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-00000000007b',
  'Kalos Specialized SVS ILP Corpus , Amy a',
  'kalos-specialized-svs-ilp-corpus-amy-a',
  'Kalos Specialized SVS ILP Corpus , Amy a provides independent living skills training and support in Fresno, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5598401928',
  '4420 N First St #115',
  'Fresno',
  'CA',
  '93726',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 124. Kean Manor (Resource #HB0812, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-00000000007c',
  'Kean Manor',
  'kean-manor',
  'Kean Manor provides day program services for adults with developmental disabilities in San Leandro, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '9258338394',
  '14825 Lark St',
  'San Leandro',
  'CA',
  '94578',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 125. Kindred at Home (Resource #H89220, from: Respite)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-00000000007d',
  'Kindred at Home',
  'kindred-at-home',
  'Kindred at Home provides respite care services for families of individuals with disabilities in Daly City, California.',
  'Respite care provider for families of individuals with disabilities.',
  'respite-agency',
  '6509855660',
  '355 Gellert Bl #110',
  'Daly City',
  'CA',
  '94015',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 126. Kinetycs Independent Living Skills (Resource #HB1667, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-00000000007e',
  'Kinetycs Independent Living Skills',
  'kinetycs-independent-living-skills',
  'Kinetycs Independent Living Skills provides independent living skills training and support in Brentwood, California.',
  'Independent living skills training provider.',
  'independent-living',
  '9253069572',
  '2408 Boulder Street',
  'Brentwood',
  'CA',
  '94513',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 127. Krj Health Care, LLC (Resource #HB1493, from: Respite)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-00000000007f',
  'Krj Health Care, LLC',
  'krj-health-care-llc',
  'Krj Health Care, LLC provides respite care services for families of individuals with disabilities in Emeryville, California.',
  'Respite care provider for families of individuals with disabilities.',
  'respite-agency',
  '6504881489',
  '1900 Powell St #700',
  'Emeryville',
  'CA',
  '94608',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 128. Las Trampas, INC - ILS (Resource #HB0584, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000080',
  'Las Trampas, INC - ILS',
  'las-trampas-inc-ils',
  'Las Trampas, INC - ILS provides independent living skills training and support in Lafayette, California.',
  'Independent living skills training provider.',
  'independent-living',
  '9252841462',
  '3460 Lana Ln',
  'Lafayette',
  'CA',
  '94549',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 129. Leblanc Consulting, INC (Resource #HB0991, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000081',
  'Leblanc Consulting, INC',
  'leblanc-consulting-inc',
  'Leblanc Consulting, INC provides independent living skills training and support in Richmond, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5102753679',
  '3150 Hilltop Mall Rd',
  'Richmond',
  'CA',
  '94806',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 130. Let's Thrive LLC (Resource #HG0085, from: Independent Living Skills, Respite)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000082',
  'Let''s Thrive LLC',
  'lets-thrive-llc',
  'Let''s Thrive LLC provides independent living skills training and support in San Francisco, California.',
  'Independent living skills training provider.',
  'independent-living',
  '4152594099',
  '1 Sansome St Suite 3500',
  'San Francisco',
  'CA',
  '94104',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 131. Liahona Community Care (Resource #HB0198, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000083',
  'Liahona Community Care',
  'liahona-community-care',
  'Liahona Community Care provides day program services for adults with developmental disabilities in Union City, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '5103960850',
  '34213 Arizona St',
  'Union City',
  'CA',
  '94587',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 132. Life Services Alternative (Resource #ZS0808, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000084',
  'Life Services Alternative',
  'life-services-alternative',
  'Life Services Alternative provides day program services for adults with developmental disabilities in Santa Clara, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '4087273493',
  '455 N Cypress Avenue',
  'Santa Clara',
  'CA',
  '95050',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 133. Life Skills Solutions LLC (Resource #HB1618, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000085',
  'Life Skills Solutions LLC',
  'life-skills-solutions-llc',
  'Life Skills Solutions LLC provides independent living skills training and support in Antioch, California.',
  'Independent living skills training provider.',
  'independent-living',
  '2099819145',
  '510 W 3rd Street',
  'Antioch',
  'CA',
  '94509',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 134. Life/fcsn (Resource #PB2016, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000086',
  'Life/fcsn',
  'lifefcsn',
  'Life/fcsn provides day program services for adults with developmental disabilities in Fremont, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '5107396900',
  '2300 Peralta Blvd',
  'Fremont',
  'CA',
  '94536',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 135. Lifehouse Agency (Resource #H19653, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000087',
  'Lifehouse Agency',
  'lifehouse-agency',
  'Lifehouse Agency provides independent living skills training and support in San Rafael, California.',
  'Independent living skills training provider.',
  'independent-living',
  '4154722373',
  '18 Professional Ctr Pkwy',
  'San Rafael',
  'CA',
  '94903',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 136. Living Options, INC (Resource #HB0545, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000088',
  'Living Options, INC',
  'living-options-inc',
  'Living Options, INC provides independent living skills training and support in Brentwood, California.',
  'Independent living skills training provider.',
  'independent-living',
  '9256263870',
  '470 Harvest Park Dr #c',
  'Brentwood',
  'CA',
  '94513',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 137. Living Skills Open Door (Resource #HB0915, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000089',
  'Living Skills Open Door',
  'living-skills-open-door',
  'Living Skills Open Door provides independent living skills training and support in Oakland, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5107060494',
  '6204 Outlook Ave',
  'Oakland',
  'CA',
  '94605',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 138. Living with Purpose Home (Resource #HB1052, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-00000000008a',
  'Living with Purpose Home',
  'living-with-purpose-home',
  'Living with Purpose Home provides independent living skills training and support in #110 #117 Pleasanton, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5106896911',
  '5820 Stoneridge Mall Rd',
  '#110 #117 Pleasanton',
  'CA',
  '94588',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 139. Luminous Pathways Corp (Resource #HS1436, from: Respite)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-00000000008b',
  'Luminous Pathways Corp',
  'luminous-pathways-corp',
  'Luminous Pathways Corp provides respite care services for families of individuals with disabilities in Santa Clara, California.',
  'Respite care provider for families of individuals with disabilities.',
  'respite-agency',
  '9256400797',
  '1900 Lafayette St Ste200',
  'Santa Clara',
  'CA',
  '95050',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 140. Makana House, the (Resource #HB0440, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-00000000008c',
  'Makana House, the',
  'makana-house-the',
  'Makana House, the provides day program services for adults with developmental disabilities in Union City, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '5104411816',
  '32219 Teri Ct',
  'Union City',
  'CA',
  '94587',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 141. Manifest Development LLC (Resource #HB1712, from: Respite)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-00000000008d',
  'Manifest Development LLC',
  'manifest-development-llc',
  'Manifest Development LLC provides respite care services for families of individuals with disabilities in Danville, California.',
  'Respite care provider for families of individuals with disabilities.',
  'respite-agency',
  '9255942026',
  '6 Anthurium Court',
  'Danville',
  'CA',
  '94506',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 142. Manos Home Care (Resource #HB0827, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-00000000008e',
  'Manos Home Care',
  'manos-home-care',
  'Manos Home Care provides independent living skills training and support in Oakland, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5103362900',
  '4173 MacArthur Blvd #15',
  'Oakland',
  'CA',
  '94619',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 143. Manos Home Care - EOR (Resource #HB0873, from: Respite)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-00000000008f',
  'Manos Home Care - EOR',
  'manos-home-care-eor',
  'Manos Home Care - EOR provides respite care services for families of individuals with disabilities in Oakland, California.',
  'Respite care provider for families of individuals with disabilities.',
  'respite-agency',
  '5103362900',
  '4173 MacArthur Blvd',
  'Oakland',
  'CA',
  '94619',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 144. Manos Home Care Kevin Rath (Resource #H38241, from: Respite)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000090',
  'Manos Home Care Kevin Rath',
  'manos-home-care-kevin-rath',
  'Manos Home Care Kevin Rath provides respite care services for families of individuals with disabilities in Oakland, California.',
  'Respite care provider for families of individuals with disabilities.',
  'respite-agency',
  '5103362900',
  '4173 MacArthur Blvd, #15',
  'Oakland',
  'CA',
  '94619',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 145. Maxim Healthcare Services (Resource #HB0490, from: Respite)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000091',
  'Maxim Healthcare Services',
  'maxim-healthcare-services',
  'Maxim Healthcare Services provides respite care services for families of individuals with disabilities in Emeryville, California.',
  'Respite care provider for families of individuals with disabilities.',
  'respite-agency',
  '9256098157',
  '2000 Powell St Suite 900',
  'Emeryville',
  'CA',
  '94608',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 146. Meristem (Resource #HA0994, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000092',
  'Meristem',
  'meristem',
  'Meristem provides independent living skills training and support in Fair Oaks, California.',
  'Independent living skills training provider.',
  'independent-living',
  '9169696414',
  '9200 Fair Oaks Blvd',
  'Fair Oaks',
  'CA',
  '95628',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 147. Milestone Adult Development Center (Resource #H13460, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000093',
  'Milestone Adult Development Center',
  'milestone-adult-development-center',
  'Milestone Adult Development Center provides day program services for adults with developmental disabilities in Vallejo, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  NULL,
  '# 1 Florida St',
  'Vallejo',
  'CA',
  '94590',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 148. Mission Hope Antioch Day Program (Resource #HB0218, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000094',
  'Mission Hope Antioch Day Program',
  'mission-hope-antioch-day-program',
  'Mission Hope Antioch Day Program provides day program services for adults with developmental disabilities in Antioch, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '9257067517',
  '10 S Lake Dr',
  'Antioch',
  'CA',
  '94509',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 149. Mission Hope Day Program Brentwood (Resource #HB0734, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000095',
  'Mission Hope Day Program Brentwood',
  'mission-hope-day-program-brentwood',
  'Mission Hope Day Program Brentwood provides day program services for adults with developmental disabilities in Brentwood, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '9255162222',
  '350 Peachtree Ct',
  'Brentwood',
  'CA',
  '94513',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 150. Mission Hope Day Program Dublin (Resource #HB0555, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000096',
  'Mission Hope Day Program Dublin',
  'mission-hope-day-program-dublin',
  'Mission Hope Day Program Dublin provides day program services for adults with developmental disabilities in Dublin, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '9255609582',
  '6300 Village Parkway',
  'Dublin',
  'CA',
  '94568',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 151. Mission Hope Day Program Hayward (Resource #HB0416, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000097',
  'Mission Hope Day Program Hayward',
  'mission-hope-day-program-hayward',
  'Mission Hope Day Program Hayward provides day program services for adults with developmental disabilities in Hayward, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '5108889231',
  '21328 Mission Blvd',
  'Hayward',
  'CA',
  '94541',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 152. Mitc East Bay (Resource #HB1378, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000098',
  'Mitc East Bay',
  'mitc-east-bay',
  'Mitc East Bay provides day program services for adults with developmental disabilities in San Leandro, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '5109045966',
  '2192 E 14th Street',
  'San Leandro',
  'CA',
  '94577',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 153. Mmc Consulting Services (Resource #HB1544, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-000000000099',
  'Mmc Consulting Services',
  'mmc-consulting-services',
  'Mmc Consulting Services provides independent living skills training and support in San Leandro, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5105999144',
  '311 MacArthur Blvd #c',
  'San Leandro',
  'CA',
  '94577',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 154. Momentum ILS Services,inc (Resource #HB1088, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-00000000009a',
  'Momentum ILS Services,inc',
  'momentum-ils-servicesinc',
  'Momentum ILS Services,inc provides independent living skills training and support in Hercules, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5108679297',
  '1063 Victoria Pk',
  'Hercules',
  'CA',
  '94547',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 155. Morgan Autism Center (Resource #ZS0720, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-00000000009b',
  'Morgan Autism Center',
  'morgan-autism-center',
  'Morgan Autism Center provides day program services for adults with developmental disabilities in San Jose, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '4082418161',
  '2280 Kenwood Ave',
  'San Jose',
  'CA',
  '95128',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 156. New Beginnings (Resource #HB0820, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-00000000009c',
  'New Beginnings',
  'new-beginnings',
  'New Beginnings provides independent living skills training and support in Newark, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5102743693',
  '35111 Newark Blvd #f',
  'Newark',
  'CA',
  '94560',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 157. New Generation Support (Resource #HB0875, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-00000000009d',
  'New Generation Support',
  'new-generation-support',
  'New Generation Support provides independent living skills training and support in Fremont, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5107066683',
  '3689 Norfolk Rd',
  'Fremont',
  'CA',
  '94538',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 158. New Way #5 (Resource #HB0461, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-00000000009e',
  'New Way #5',
  'new-way-5',
  'New Way #5 provides day program services for adults with developmental disabilities in Pittsburg, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '9254270877',
  '94 Atherton Cir',
  'Pittsburg',
  'CA',
  '94565',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 159. North Star Independent Living (Resource #HB1725, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-00000000009f',
  'North Star Independent Living',
  'north-star-independent-living',
  'North Star Independent Living provides independent living skills training and support in Oakland, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5102609865',
  '9121 Burr Street',
  'Oakland',
  'CA',
  '94605',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 160. Oak Home @niles Grove (Resource #HB0631, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000a0',
  'Oak Home @niles Grove',
  'oak-home-niles-grove',
  'Oak Home @niles Grove provides day program services for adults with developmental disabilities in Fremont, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '5108180650',
  '35543 Niles Blvd',
  'Fremont',
  'CA',
  '94536',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 161. One Step Closer (Resource #HB0095, from: Day Programs, Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000a1',
  'One Step Closer',
  'one-step-closer',
  'One Step Closer provides day program services for adults with developmental disabilities in Oakland, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '5106360216',
  '7622 MacArthur Blvd',
  'Oakland',
  'CA',
  '94605',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 162. Opportunities and Beyond ILS (Resource #HB1496, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000a2',
  'Opportunities and Beyond ILS',
  'opportunities-and-beyond-ils',
  'Opportunities and Beyond ILS provides independent living skills training and support in Oakland, California.',
  'Independent living skills training provider.',
  'independent-living',
  '4707105902',
  '8033 MacArthur Blvd #5422',
  'Oakland',
  'CA',
  '94605',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 163. Options for All (Resource #HS0069, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000a3',
  'Options for All',
  'options-for-all',
  'Options for All provides independent living skills training and support in Sunnyvale, California.',
  'Independent living skills training provider.',
  'independent-living',
  '4084239484',
  '1243 Reamwood Ave',
  'Sunnyvale',
  'CA',
  '94089',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 164. Pacific Homecare Services (Resource #HB0890, from: Respite)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000a4',
  'Pacific Homecare Services',
  'pacific-homecare-services',
  'Pacific Homecare Services provides respite care services for families of individuals with disabilities in Pleasanton, California.',
  'Respite care provider for families of individuals with disabilities.',
  'respite-agency',
  '5102395506',
  '4637 Chabot Dr #104',
  'Pleasanton',
  'CA',
  '94508',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 165. PACT (Resource #HB0316, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000a5',
  'PACT',
  'pact',
  'PACT provides independent living skills training and support in Oakland, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5105790059',
  '710 Aileen St',
  'Oakland',
  'CA',
  '94609',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 166. Partners for Community Access (Resource #HB0878, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000a6',
  'Partners for Community Access',
  'partners-for-community-access',
  'Partners for Community Access provides independent living skills training and support in Berkeley, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5105586700',
  '708 Gilman St',
  'Berkeley',
  'CA',
  '94710',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 167. Passport to Learning, INC (Resource #H32687, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000a7',
  'Passport to Learning, INC',
  'passport-to-learning-inc',
  'Passport to Learning, INC provides independent living skills training and support in Northridge, California.',
  'Independent living skills training provider.',
  'independent-living',
  '8183687446',
  '19641 Singing Hills Dr',
  'Northridge',
  'CA',
  '91326',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 168. Pathway to Choices, INC (Resource #HB0233, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000a8',
  'Pathway to Choices, INC',
  'pathway-to-choices-inc',
  'Pathway to Choices, INC provides independent living skills training and support in Pinole, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5107249042',
  '751 Belmont Wy',
  'Pinole',
  'CA',
  '94564',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 169. Pathways, LLC (Resource #HB1303, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000a9',
  'Pathways, LLC',
  'pathways-llc',
  'Pathways, LLC provides independent living skills training and support in San Leandro, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5104701251',
  '1515 Aurora Dr #103e',
  'San Leandro',
  'CA',
  '94577',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 170. Peco Care Home (Resource #HB0853, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000aa',
  'Peco Care Home',
  'peco-care-home',
  'Peco Care Home provides day program services for adults with developmental disabilities in Union City, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '5105899419',
  '34914 Peco St',
  'Union City',
  'CA',
  '94587',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 171. Pinnacle Essential Living (Resource #HB1542, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000ab',
  'Pinnacle Essential Living',
  'pinnacle-essential-living',
  'Pinnacle Essential Living provides independent living skills training and support in San Leandro, California.',
  'Independent living skills training provider.',
  'independent-living',
  '3412382263',
  '1250 a Fairmont Drive 755',
  'San Leandro',
  'CA',
  '94578',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 172. Positive Adult (Resource #HB1393, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000ac',
  'Positive Adult',
  'positive-adult',
  'Positive Adult provides independent living skills training and support in Fremont, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5107060057',
  '40794 Chiltern Drive',
  'Fremont',
  'CA',
  '94539',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 173. Positive Alliance Support (Resource #HB1709, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000ad',
  'Positive Alliance Support',
  'positive-alliance-support',
  'Positive Alliance Support provides independent living skills training and support in Livermore, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5108628814',
  '4049 First Street #236',
  'Livermore',
  'CA',
  '94551',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 174. Prac Holdings, INC (Resource #HG0087, from: Respite)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000ae',
  'Prac Holdings, INC',
  'prac-holdings-inc',
  'Prac Holdings, INC provides respite care services for families of individuals with disabilities in San Francisco, California.',
  'Respite care provider for families of individuals with disabilities.',
  'respite-agency',
  '9529227921',
  '1388 Sutter St #904',
  'San Francisco',
  'CA',
  '94109',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 175. Praising Hands, LLC (Resource #HS0928, from: Respite)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000af',
  'Praising Hands, LLC',
  'praising-hands-llc',
  'Praising Hands, LLC provides respite care services for families of individuals with disabilities in Milpitas, California.',
  'Respite care provider for families of individuals with disabilities.',
  'respite-agency',
  '4089818713',
  '500 E Calavaras Blvd #200',
  'Milpitas',
  'CA',
  '95035',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 176. Premier Healthcare Services (Resource #HS0789, from: Respite)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000b0',
  'Premier Healthcare Services',
  'premier-healthcare-services',
  'Premier Healthcare Services provides respite care services for families of individuals with disabilities in San Jose, California.',
  'Respite care provider for families of individuals with disabilities.',
  'respite-agency',
  '8552886701',
  '1210 S Bascom #100',
  'San Jose',
  'CA',
  '95128',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 177. Quality Care at Home, INC (Resource #HB1397, from: Respite)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000b1',
  'Quality Care at Home, INC',
  'quality-care-at-home-inc',
  'Quality Care at Home, INC provides respite care services for families of individuals with disabilities in San Leandro, California.',
  'Respite care provider for families of individuals with disabilities.',
  'respite-agency',
  '8003854733',
  '2450 Washington Avenue',
  'San Leandro',
  'CA',
  '94577',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 178. Quality Respite & Home (Resource #HS0643, from: Respite)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000b2',
  'Quality Respite & Home',
  'quality-respite-home',
  'Quality Respite & Home provides respite care services for families of individuals with disabilities in San Jose, California.',
  'Respite care provider for families of individuals with disabilities.',
  'respite-agency',
  '4082445600',
  '777 N First St #300',
  'San Jose',
  'CA',
  '95112',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 179. Regency Care Home (Resource #HB0429, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000b3',
  'Regency Care Home',
  'regency-care-home',
  'Regency Care Home provides day program services for adults with developmental disabilities in Union City, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '5104003952',
  '3285 Santa Rosa Ct',
  'Union City',
  'CA',
  '94587',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 180. Res Day Program (Resource #H38460, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000b4',
  'Res Day Program',
  'res-day-program',
  'Res Day Program provides day program services for adults with developmental disabilities in Martinez, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '9252298228',
  '801 Ferry St',
  'Martinez',
  'CA',
  '94553',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 181. Rise 2 Success (Resource #HB1302, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000b5',
  'Rise 2 Success',
  'rise-2-success',
  'Rise 2 Success provides independent living skills training and support in Fremont, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5105654439',
  '39843 Paseo Padre Pkwy #e',
  'Fremont',
  'CA',
  '94538',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 182. Rodgers Consulting Services (Resource #HS0932, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000b6',
  'Rodgers Consulting Services',
  'rodgers-consulting-services',
  'Rodgers Consulting Services provides independent living skills training and support in Mountain View, California.',
  'Independent living skills training provider.',
  'independent-living',
  '6509383124',
  '2680 Bayshore Pkwy #208',
  'Mountain View',
  'CA',
  '94043',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 183. Rose's Garden Residential Care (Resource #HB0392, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000b7',
  'Rose''s Garden Residential Care',
  'roses-garden-residential-care',
  'Rose''s Garden Residential Care provides day program services for adults with developmental disabilities in Antioch, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '9257647564',
  '2901 N Francisco Wy',
  'Antioch',
  'CA',
  '94509',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 184. Round the Clock Care,llc (Resource #HB1319, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000b8',
  'Round the Clock Care,llc',
  'round-the-clock-carellc',
  'Round the Clock Care,llc provides independent living skills training and support in Oakland, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5104613392',
  '1853 MacArthur Blvd #b',
  'Oakland',
  'CA',
  '94602',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 185. Rscr California INC All Ways Caring Home Care (Resource #HB1575, from: Respite)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000b9',
  'Rscr California INC All Ways Caring Home Care',
  'rscr-california-inc-all-ways-caring-home-care',
  'Rscr California INC All Ways Caring Home Care provides respite care services for families of individuals with disabilities in Hayward, California.',
  'Respite care provider for families of individuals with disabilities.',
  'respite-agency',
  '5103571002',
  '1260 B Street Suite 325',
  'Hayward',
  'CA',
  '94541',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 186. S & S Tlc Mary Stewart (Resource #H14474, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000ba',
  'S & S Tlc Mary Stewart',
  's-s-tlc-mary-stewart',
  'S & S Tlc Mary Stewart provides day program services for adults with developmental disabilities in Antioch, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '9254391493',
  '2505 Crocker Wy',
  'Antioch',
  'CA',
  '94509',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 187. Salome ILS LLC (Resource #HB1470, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000bb',
  'Salome ILS LLC',
  'salome-ils-llc',
  'Salome ILS LLC provides independent living skills training and support in Dublin, California.',
  'Independent living skills training provider.',
  'independent-living',
  '9252283778',
  '7100 San Ramon Rd # 105',
  'Dublin',
  'CA',
  '94568',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 188. Sentry Living Solutions (Resource #HB1080, from: Independent Living Skills, Respite)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000bc',
  'Sentry Living Solutions',
  'sentry-living-solutions',
  'Sentry Living Solutions provides independent living skills training and support in Walnut Creek, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5104223959',
  '3100 Oak Road Suite 100',
  'Walnut Creek',
  'CA',
  '94597',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 189. Serra Center (Resource #H14141, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000bd',
  'Serra Center',
  'serra-center',
  'Serra Center provides independent living skills training and support in Union City, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5104771000',
  '2610 Central Ave #120',
  'Union City',
  'CA',
  '94587',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 190. Seva Life Solutions LLC (Resource #HB1585, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000be',
  'Seva Life Solutions LLC',
  'seva-life-solutions-llc',
  'Seva Life Solutions LLC provides independent living skills training and support in Oakland, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5104856727',
  '1853 MacArthur Blvd #b',
  'Oakland',
  'CA',
  '94602',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 191. Share the Care Services (Resource #HB1431, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000bf',
  'Share the Care Services',
  'share-the-care-services',
  'Share the Care Services provides independent living skills training and support in San Leandro, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5109383797',
  '2276 Placer Drive',
  'San Leandro',
  'CA',
  '94578',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 192. Sierra Environmental (Resource #HB0834, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000c0',
  'Sierra Environmental',
  'sierra-environmental',
  'Sierra Environmental provides independent living skills training and support in Castro Valley, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5102051448',
  '3645 Lorena Ave #e',
  'Castro Valley',
  'CA',
  '94546',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 193. Skyline Vista Home (Resource #HB0001, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000c1',
  'Skyline Vista Home',
  'skyline-vista-home',
  'Skyline Vista Home provides day program services for adults with developmental disabilities in Antioch, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '9257544898',
  '1337 Mokelumne Dr',
  'Antioch',
  'CA',
  '94509',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 194. Social Voc. Serv.,inc (Resource #HK2626, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000c2',
  'Social Voc. Serv.,inc',
  'social-voc-servinc',
  'Social Voc. Serv.,inc provides day program services for adults with developmental disabilities in Bakerfield, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '6613230533',
  '3601 Union Avenue',
  'Bakerfield',
  'CA',
  '93301',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 195. Social Vocational (Resource #HB1025, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000c3',
  'Social Vocational',
  'social-vocational',
  'Social Vocational provides day program services for adults with developmental disabilities in Pleasanton, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '9256213902',
  '6602 Owens Dr #100',
  'Pleasanton',
  'CA',
  '94588',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 196. Social Vocational Service Newark (Resource #HB0519, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000c4',
  'Social Vocational Service Newark',
  'social-vocational-service-newark',
  'Social Vocational Service Newark provides day program services for adults with developmental disabilities in Newark, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '5107971916',
  '37400 Cedar Blvd #a',
  'Newark',
  'CA',
  '94560',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 197. Social Vocational Service Oakland (Resource #HB0253, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000c5',
  'Social Vocational Service Oakland',
  'social-vocational-service-oakland',
  'Social Vocational Service Oakland provides day program services for adults with developmental disabilities in Oakland, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '5106983990',
  '1830 Embarcadero #102',
  'Oakland',
  'CA',
  '94606',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 198. Social Vocational Services, Inc-concord (Resource #HB0973, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000c6',
  'Social Vocational Services, Inc-concord',
  'social-vocational-services-inc-concord',
  'Social Vocational Services, Inc-concord provides day program services for adults with developmental disabilities in Concord, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '9258498750',
  '2300 Stanwell Dr #b',
  'Concord',
  'CA',
  '94520',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 199. Sonia INC (Resource #HN0552, from: Respite)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000c7',
  'Sonia INC',
  'sonia-inc',
  'Sonia INC provides respite care services for families of individuals with disabilities in Benicia, California.',
  'Respite care provider for families of individuals with disabilities.',
  'respite-agency',
  '7076444491',
  '1100 Rose Drive #140',
  'Benicia',
  'CA',
  '94510',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 200. Special Home Needs (Resource #H10761, from: Respite)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000c8',
  'Special Home Needs',
  'special-home-needs',
  'Special Home Needs provides respite care services for families of individuals with disabilities in Santa Clara, California.',
  'Respite care provider for families of individuals with disabilities.',
  'respite-agency',
  '4089858666',
  '1440 Jackson St',
  'Santa Clara',
  'CA',
  '95050',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 201. Spread Your Wings for (Resource #HB1425, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000c9',
  'Spread Your Wings for',
  'spread-your-wings-for',
  'Spread Your Wings for provides independent living skills training and support in 165 Pleaasanton, California.',
  'Independent living skills training provider.',
  'independent-living',
  '8318842337',
  '5776 Stoneridge Mall Rd',
  '165 Pleaasanton',
  'CA',
  '94588',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 202. Stella Day Program - San Mateo LLC (Resource #HG0182, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000ca',
  'Stella Day Program - San Mateo LLC',
  'stella-day-program-san-mateo-llc',
  'Stella Day Program - San Mateo LLC provides day program services for adults with developmental disabilities in South San Francisco, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '4086445613',
  '120 West Harris Avenue',
  'South San Francisco',
  'CA',
  '94080',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 203. Step Up Into Independence (Resource #HB1347, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000cb',
  'Step Up Into Independence',
  'step-up-into-independence',
  'Step Up Into Independence provides independent living skills training and support in Hayward, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5109406999',
  '22284 Montgomery St # B',
  'Hayward',
  'CA',
  '94541',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 204. Stepping Stones (Resource #HB1453, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000cc',
  'Stepping Stones',
  'stepping-stones',
  'Stepping Stones provides independent living skills training and support in Oakland, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5103094643',
  '8125 Mccormick Ave',
  'Oakland',
  'CA',
  '94605',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 205. Stepping Stones Adult Day Program (Resource #HM1695, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000cd',
  'Stepping Stones Adult Day Program',
  'stepping-stones-adult-day-program',
  'Stepping Stones Adult Day Program provides day program services for adults with developmental disabilities in La Habra, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '7147183637',
  '731 W Whittier Blvd #a',
  'La Habra',
  'CA',
  '90631',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 206. Steps for Independence (Resource #HB0096, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000ce',
  'Steps for Independence',
  'steps-for-independence',
  'Steps for Independence provides independent living skills training and support in Castro Valley, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5102788236',
  '20910 Redwood Rd #h',
  'Castro Valley',
  'CA',
  '94546',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 207. Supporting Hearts INC (Resource #HB1670, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000cf',
  'Supporting Hearts INC',
  'supporting-hearts-inc',
  'Supporting Hearts INC provides independent living skills training and support in Antioch, California.',
  'Independent living skills training provider.',
  'independent-living',
  '9254289945',
  '4464 Lone Tree Way #3179',
  'Antioch',
  'CA',
  '94531',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 208. SVS Antioch Adult Day Program (Resource #HB0176, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000d0',
  'SVS Antioch Adult Day Program',
  'svs-antioch-adult-day-program',
  'SVS Antioch Adult Day Program provides day program services for adults with developmental disabilities in Antioch, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '9253313116',
  '2310 Country Hills Dr',
  'Antioch',
  'CA',
  '94531',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 209. Synergy House (Resource #HB1572, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000d1',
  'Synergy House',
  'synergy-house',
  'Synergy House provides independent living skills training and support in Oakland, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5109936589',
  '66 Franklin St Suite 300',
  'Oakland',
  'CA',
  '94607',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 210. Taft College (Resource #H58500, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000d2',
  'Taft College',
  'taft-college',
  'Taft College provides independent living skills training and support in Taft, California.',
  'Independent living skills training provider.',
  'independent-living',
  '6617637769',
  '29 Emmons Park Dr',
  'Taft',
  'CA',
  '93268',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 211. The Arc of the East Bay (Resource #HB1395, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000d3',
  'The Arc of the East Bay',
  'the-arc-of-the-east-bay',
  'The Arc of the East Bay provides independent living skills training and support in Hayward, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5105828151',
  '1101 Walpert Street',
  'Hayward',
  'CA',
  '94541',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 212. The Birch House Foundatio N (Resource #HB1584, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000d4',
  'The Birch House Foundatio N',
  'the-birch-house-foundatio-n',
  'The Birch House Foundatio N provides independent living skills training and support in Oakland, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5108668247',
  '675 Hegenberger Road #244',
  'Oakland',
  'CA',
  '94621',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 213. The Davis St Community (Resource #HB1176, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000d5',
  'The Davis St Community',
  'the-davis-st-community',
  'The Davis St Community provides independent living skills training and support in San Leandro, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5103474620',
  '3081 Teagarden St',
  'San Leandro',
  'CA',
  '94577',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 214. The Golden Touch (Resource #HB0764, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000d6',
  'The Golden Touch',
  'the-golden-touch',
  'The Golden Touch provides independent living skills training and support in Pleasanton, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5105123261',
  '4695 Chabot Dr #200',
  'Pleasanton',
  'CA',
  '94588',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 215. The Macon Foundation (Resource #HB0826, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000d7',
  'The Macon Foundation',
  'the-macon-foundation',
  'The Macon Foundation provides independent living skills training and support in Richmond, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5104175686',
  '5505 Plumas Ave',
  'Richmond',
  'CA',
  '94804',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 216. Thrive Support Services (Resource #HB0689, from: Independent Living Skills, Respite)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000d8',
  'Thrive Support Services',
  'thrive-support-services',
  'Thrive Support Services provides independent living skills training and support in Martinez, California.',
  'Independent living skills training provider.',
  'independent-living',
  '9256822273',
  '900 Court St',
  'Martinez',
  'CA',
  '94553',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 217. Through Looking Glass (Resource #H14426, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000d9',
  'Through Looking Glass',
  'through-looking-glass',
  'Through Looking Glass provides independent living skills training and support in Berkeley, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5108481112',
  '3075 Adeline St #120',
  'Berkeley',
  'CA',
  '94703',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 218. Together Homecare (Resource #HB1568, from: Respite)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000da',
  'Together Homecare',
  'together-homecare',
  'Together Homecare provides respite care services for families of individuals with disabilities in Newark, California.',
  'Respite care provider for families of individuals with disabilities.',
  'respite-agency',
  '5102142036',
  '39899 Balentine Dr #200',
  'Newark',
  'CA',
  '94555',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 219. Transition to Independence (Resource #HB0900, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000db',
  'Transition to Independence',
  'transition-to-independence',
  'Transition to Independence provides independent living skills training and support in Martinez, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5103664628',
  '518 Trailview Cir',
  'Martinez',
  'CA',
  '94553',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 220. Trusting Connections (Resource #HB1457, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000dc',
  'Trusting Connections',
  'trusting-connections',
  'Trusting Connections provides independent living skills training and support in Walnut Creek, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5105662114',
  '2950 Buskirk Ave #300 Pmb',
  'Walnut Creek',
  'CA',
  '94597',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 221. UC Davis Redwood Seed Scholars (Resource #HA1374, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000dd',
  'UC Davis Redwood Seed Scholars',
  'uc-davis-redwood-seed-scholars',
  'UC Davis Redwood Seed Scholars provides independent living skills training and support in Davis, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5308483519',
  '463 California Ave',
  'Davis',
  'CA',
  '95616',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 222. Une, INC (Resource #HB1327, from: Respite)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000de',
  'Une, INC',
  'une-inc',
  'Une, INC provides respite care services for families of individuals with disabilities in Antioch, California.',
  'Respite care provider for families of individuals with disabilities.',
  'respite-agency',
  '9255290923',
  '101 H Street Suite 4',
  'Antioch',
  'CA',
  '94509',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 223. United Cerebral Palsy of the North Bay (Resource #HN0286, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000df',
  'United Cerebral Palsy of the North Bay',
  'united-cerebral-palsy-of-the-north-bay',
  'United Cerebral Palsy of the North Bay provides day program services for adults with developmental disabilities in Napa, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '7076030010',
  '720 Airpark Rd',
  'Napa',
  'CA',
  '94588',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 224. Valor Respite Home Care (Resource #HB1662, from: Respite)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000e0',
  'Valor Respite Home Care',
  'valor-respite-home-care',
  'Valor Respite Home Care provides respite care services for families of individuals with disabilities in Pinole, California.',
  'Respite care provider for families of individuals with disabilities.',
  'respite-agency',
  '4158233602',
  '2646 Appian Way',
  'Pinole',
  'CA',
  '94564',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 225. Victor Learning Center (Resource #HV0129, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000e1',
  'Victor Learning Center',
  'victor-learning-center',
  'Victor Learning Center provides day program services for adults with developmental disabilities in Stockton, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '2099411800',
  '3849 Alvarado Ave',
  'Stockton',
  'CA',
  '95204',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 226. Vineyard Services (Resource #HB0308, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000e2',
  'Vineyard Services',
  'vineyard-services',
  'Vineyard Services provides independent living skills training and support in Hayward, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5104610785',
  '1544 B St Suite #1',
  'Hayward',
  'CA',
  '94541',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 227. Visionary Independence Program (Resource #HB1010, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000e3',
  'Visionary Independence Program',
  'visionary-independence-program',
  'Visionary Independence Program provides independent living skills training and support in Livermore, California.',
  'Independent living skills training provider.',
  'independent-living',
  '9259140451',
  '4047 First Street #126a',
  'Livermore',
  'CA',
  '94551',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 228. W.a.y.s Home Care (Resource #HB1601, from: Respite)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000e4',
  'W.a.y.s Home Care',
  'ways-home-care',
  'W.a.y.s Home Care provides respite care services for families of individuals with disabilities in Antioch, California.',
  'Respite care provider for families of individuals with disabilities.',
  'respite-agency',
  '8882719297',
  '5065 Deer Valley Rd#247a',
  'Antioch',
  'CA',
  '94531',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 229. We Care Services for Children (Resource #H01874, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000e5',
  'We Care Services for Children',
  'we-care-services-for-children',
  'We Care Services for Children provides day program services for adults with developmental disabilities in Concord, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '9256710777',
  '2191 Kirker Pass Rd',
  'Concord',
  'CA',
  '94521',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 230. We Thrive LLC (Resource #HB1358, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000e6',
  'We Thrive LLC',
  'we-thrive-llc',
  'We Thrive LLC provides independent living skills training and support in Oakland, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5105574980',
  '3824 Buell Street #e',
  'Oakland',
  'CA',
  '94619',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 231. West Wind Services INC (Resource #HB1316, from: Respite)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000e7',
  'West Wind Services INC',
  'west-wind-services-inc',
  'West Wind Services INC provides respite care services for families of individuals with disabilities in Antioch, California.',
  'Respite care provider for families of individuals with disabilities.',
  'respite-agency',
  '9253032715',
  '320 E 18th Street #c',
  'Antioch',
  'CA',
  '94509',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 232. Winners and Dreamers INC (Resource #HB1405, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000e8',
  'Winners and Dreamers INC',
  'winners-and-dreamers-inc',
  'Winners and Dreamers INC provides independent living skills training and support in Antioch, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5025443068',
  '5144 Judsonville Drive',
  'Antioch',
  'CA',
  '94531',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 233. Woodbridge Health Service (Resource #HB0888, from: Day Programs)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000e9',
  'Woodbridge Health Service',
  'woodbridge-health-service',
  'Woodbridge Health Service provides day program services for adults with developmental disabilities in Antioch, California.',
  'Day program provider for adults with developmental disabilities.',
  'day-program',
  '4156866899',
  '1854 Mt Goethe Way',
  'Antioch',
  'CA',
  '94531',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 234. Your Choices Independent (Resource #HB1586, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000ea',
  'Your Choices Independent',
  'your-choices-independent',
  'Your Choices Independent provides independent living skills training and support in El Cerrito, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5104732443',
  '11461 San Pablo Ave #307',
  'El Cerrito',
  'CA',
  '94530',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 235. Zenith Care Consultants (Resource #HB1573, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000eb',
  'Zenith Care Consultants',
  'zenith-care-consultants',
  'Zenith Care Consultants provides independent living skills training and support in Concord, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5104211942',
  '1320 Willow Pass Rd #600',
  'Concord',
  'CA',
  '94529',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- 236. Zula's Helping Hands, LLC (Resource #HB1102, from: Independent Living Skills)
INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, street_address, city, state, zip_code, accepts_new_clients, is_verified, is_active)
VALUES (
  'aaaaaaaa-aaaa-4aaa-baaa-0000000000ec',
  'Zula''s Helping Hands, LLC',
  'zulas-helping-hands-llc',
  'Zula''s Helping Hands, LLC provides independent living skills training and support in Oakland, California.',
  'Independent living skills training provider.',
  'independent-living',
  '5109388347',
  '5707 Redwood Rd #9a',
  'Oakland',
  'CA',
  '94619',
  true,
  false,
  true
) ON CONFLICT (slug) DO NOTHING;

-- =============================================================================
-- 3. PROVIDER-SERVICE LINKS
-- =============================================================================

-- Links for newly imported providers

INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000001', 'aaaaaaaa-aaaa-4aaa-baaa-000000000001', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000002', 'aaaaaaaa-aaaa-4aaa-baaa-000000000002', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000003', 'aaaaaaaa-aaaa-4aaa-baaa-000000000003', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000004', 'aaaaaaaa-aaaa-4aaa-baaa-000000000004', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000005', 'aaaaaaaa-aaaa-4aaa-baaa-000000000005', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000006', 'aaaaaaaa-aaaa-4aaa-baaa-000000000006', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000007', 'aaaaaaaa-aaaa-4aaa-baaa-000000000007', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000008', 'aaaaaaaa-aaaa-4aaa-baaa-000000000008', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000009', 'aaaaaaaa-aaaa-4aaa-baaa-000000000009', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000000a', 'aaaaaaaa-aaaa-4aaa-baaa-00000000000a', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000000b', 'aaaaaaaa-aaaa-4aaa-baaa-00000000000b', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000000c', 'aaaaaaaa-aaaa-4aaa-baaa-00000000000c', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000000d', 'aaaaaaaa-aaaa-4aaa-baaa-00000000000d', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000000e', 'aaaaaaaa-aaaa-4aaa-baaa-00000000000e', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000000f', 'aaaaaaaa-aaaa-4aaa-baaa-00000000000f', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000010', 'aaaaaaaa-aaaa-4aaa-baaa-000000000010', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000011', 'aaaaaaaa-aaaa-4aaa-baaa-000000000010', '11111111-1111-1111-1111-111111111117', false)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000012', 'aaaaaaaa-aaaa-4aaa-baaa-000000000011', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000013', 'aaaaaaaa-aaaa-4aaa-baaa-000000000012', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000014', 'aaaaaaaa-aaaa-4aaa-baaa-000000000013', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000015', 'aaaaaaaa-aaaa-4aaa-baaa-000000000014', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000016', 'aaaaaaaa-aaaa-4aaa-baaa-000000000015', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000017', 'aaaaaaaa-aaaa-4aaa-baaa-000000000016', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000018', 'aaaaaaaa-aaaa-4aaa-baaa-000000000017', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000019', 'aaaaaaaa-aaaa-4aaa-baaa-000000000018', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000001a', 'aaaaaaaa-aaaa-4aaa-baaa-000000000019', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000001b', 'aaaaaaaa-aaaa-4aaa-baaa-00000000001a', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000001c', 'aaaaaaaa-aaaa-4aaa-baaa-00000000001b', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000001d', 'aaaaaaaa-aaaa-4aaa-baaa-00000000001c', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000001e', 'aaaaaaaa-aaaa-4aaa-baaa-00000000001d', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000001f', 'aaaaaaaa-aaaa-4aaa-baaa-00000000001e', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000020', 'aaaaaaaa-aaaa-4aaa-baaa-00000000001f', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000021', 'aaaaaaaa-aaaa-4aaa-baaa-000000000020', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000022', 'aaaaaaaa-aaaa-4aaa-baaa-000000000021', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000023', 'aaaaaaaa-aaaa-4aaa-baaa-000000000022', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000024', 'aaaaaaaa-aaaa-4aaa-baaa-000000000023', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000025', 'aaaaaaaa-aaaa-4aaa-baaa-000000000024', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000026', 'aaaaaaaa-aaaa-4aaa-baaa-000000000025', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000027', 'aaaaaaaa-aaaa-4aaa-baaa-000000000026', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000028', 'aaaaaaaa-aaaa-4aaa-baaa-000000000027', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000029', 'aaaaaaaa-aaaa-4aaa-baaa-000000000028', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000002a', 'aaaaaaaa-aaaa-4aaa-baaa-000000000029', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000002b', 'aaaaaaaa-aaaa-4aaa-baaa-00000000002a', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000002c', 'aaaaaaaa-aaaa-4aaa-baaa-00000000002b', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000002d', 'aaaaaaaa-aaaa-4aaa-baaa-00000000002c', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000002e', 'aaaaaaaa-aaaa-4aaa-baaa-00000000002d', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000002f', 'aaaaaaaa-aaaa-4aaa-baaa-00000000002e', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000030', 'aaaaaaaa-aaaa-4aaa-baaa-00000000002f', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000031', 'aaaaaaaa-aaaa-4aaa-baaa-000000000030', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000032', 'aaaaaaaa-aaaa-4aaa-baaa-000000000031', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000033', 'aaaaaaaa-aaaa-4aaa-baaa-000000000032', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000034', 'aaaaaaaa-aaaa-4aaa-baaa-000000000033', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000035', 'aaaaaaaa-aaaa-4aaa-baaa-000000000034', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000036', 'aaaaaaaa-aaaa-4aaa-baaa-000000000035', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000037', 'aaaaaaaa-aaaa-4aaa-baaa-000000000036', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000038', 'aaaaaaaa-aaaa-4aaa-baaa-000000000037', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000039', 'aaaaaaaa-aaaa-4aaa-baaa-000000000038', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000003a', 'aaaaaaaa-aaaa-4aaa-baaa-000000000039', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000003b', 'aaaaaaaa-aaaa-4aaa-baaa-00000000003a', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000003c', 'aaaaaaaa-aaaa-4aaa-baaa-00000000003b', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000003d', 'aaaaaaaa-aaaa-4aaa-baaa-00000000003c', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000003e', 'aaaaaaaa-aaaa-4aaa-baaa-00000000003d', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000003f', 'aaaaaaaa-aaaa-4aaa-baaa-00000000003e', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000040', 'aaaaaaaa-aaaa-4aaa-baaa-00000000003f', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000041', 'aaaaaaaa-aaaa-4aaa-baaa-000000000040', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000042', 'aaaaaaaa-aaaa-4aaa-baaa-000000000041', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000043', 'aaaaaaaa-aaaa-4aaa-baaa-000000000042', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000044', 'aaaaaaaa-aaaa-4aaa-baaa-000000000043', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000045', 'aaaaaaaa-aaaa-4aaa-baaa-000000000044', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000046', 'aaaaaaaa-aaaa-4aaa-baaa-000000000045', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000047', 'aaaaaaaa-aaaa-4aaa-baaa-000000000046', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000048', 'aaaaaaaa-aaaa-4aaa-baaa-000000000047', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000049', 'aaaaaaaa-aaaa-4aaa-baaa-000000000048', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000004a', 'aaaaaaaa-aaaa-4aaa-baaa-000000000049', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000004b', 'aaaaaaaa-aaaa-4aaa-baaa-00000000004a', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000004c', 'aaaaaaaa-aaaa-4aaa-baaa-00000000004b', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000004d', 'aaaaaaaa-aaaa-4aaa-baaa-00000000004c', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000004e', 'aaaaaaaa-aaaa-4aaa-baaa-00000000004d', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000004f', 'aaaaaaaa-aaaa-4aaa-baaa-00000000004e', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000050', 'aaaaaaaa-aaaa-4aaa-baaa-00000000004f', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000051', 'aaaaaaaa-aaaa-4aaa-baaa-000000000050', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000052', 'aaaaaaaa-aaaa-4aaa-baaa-000000000051', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000053', 'aaaaaaaa-aaaa-4aaa-baaa-000000000052', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000054', 'aaaaaaaa-aaaa-4aaa-baaa-000000000053', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000055', 'aaaaaaaa-aaaa-4aaa-baaa-000000000054', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000056', 'aaaaaaaa-aaaa-4aaa-baaa-000000000055', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000057', 'aaaaaaaa-aaaa-4aaa-baaa-000000000056', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000058', 'aaaaaaaa-aaaa-4aaa-baaa-000000000057', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000059', 'aaaaaaaa-aaaa-4aaa-baaa-000000000058', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000005a', 'aaaaaaaa-aaaa-4aaa-baaa-000000000058', '11111111-1111-1111-1111-111111111117', false)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000005b', 'aaaaaaaa-aaaa-4aaa-baaa-000000000059', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000005c', 'aaaaaaaa-aaaa-4aaa-baaa-00000000005a', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000005d', 'aaaaaaaa-aaaa-4aaa-baaa-00000000005b', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000005e', 'aaaaaaaa-aaaa-4aaa-baaa-00000000005c', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000005f', 'aaaaaaaa-aaaa-4aaa-baaa-00000000005d', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000060', 'aaaaaaaa-aaaa-4aaa-baaa-00000000005e', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000061', 'aaaaaaaa-aaaa-4aaa-baaa-00000000005f', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000062', 'aaaaaaaa-aaaa-4aaa-baaa-000000000060', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000063', 'aaaaaaaa-aaaa-4aaa-baaa-000000000061', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000064', 'aaaaaaaa-aaaa-4aaa-baaa-000000000062', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000065', 'aaaaaaaa-aaaa-4aaa-baaa-000000000063', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000066', 'aaaaaaaa-aaaa-4aaa-baaa-000000000064', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000067', 'aaaaaaaa-aaaa-4aaa-baaa-000000000064', '11111111-1111-1111-1111-111111111107', false)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000068', 'aaaaaaaa-aaaa-4aaa-baaa-000000000065', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000069', 'aaaaaaaa-aaaa-4aaa-baaa-000000000066', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000006a', 'aaaaaaaa-aaaa-4aaa-baaa-000000000067', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000006b', 'aaaaaaaa-aaaa-4aaa-baaa-000000000068', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000006c', 'aaaaaaaa-aaaa-4aaa-baaa-000000000069', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000006d', 'aaaaaaaa-aaaa-4aaa-baaa-00000000006a', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000006e', 'aaaaaaaa-aaaa-4aaa-baaa-00000000006b', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000006f', 'aaaaaaaa-aaaa-4aaa-baaa-00000000006c', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000070', 'aaaaaaaa-aaaa-4aaa-baaa-00000000006d', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000071', 'aaaaaaaa-aaaa-4aaa-baaa-00000000006e', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000072', 'aaaaaaaa-aaaa-4aaa-baaa-00000000006f', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000073', 'aaaaaaaa-aaaa-4aaa-baaa-000000000070', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000074', 'aaaaaaaa-aaaa-4aaa-baaa-000000000071', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000075', 'aaaaaaaa-aaaa-4aaa-baaa-000000000072', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000076', 'aaaaaaaa-aaaa-4aaa-baaa-000000000073', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000077', 'aaaaaaaa-aaaa-4aaa-baaa-000000000074', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000078', 'aaaaaaaa-aaaa-4aaa-baaa-000000000075', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000079', 'aaaaaaaa-aaaa-4aaa-baaa-000000000076', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000007a', 'aaaaaaaa-aaaa-4aaa-baaa-000000000077', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000007b', 'aaaaaaaa-aaaa-4aaa-baaa-000000000078', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000007c', 'aaaaaaaa-aaaa-4aaa-baaa-000000000079', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000007d', 'aaaaaaaa-aaaa-4aaa-baaa-00000000007a', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000007e', 'aaaaaaaa-aaaa-4aaa-baaa-00000000007b', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000007f', 'aaaaaaaa-aaaa-4aaa-baaa-00000000007c', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000080', 'aaaaaaaa-aaaa-4aaa-baaa-00000000007d', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000081', 'aaaaaaaa-aaaa-4aaa-baaa-00000000007e', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000082', 'aaaaaaaa-aaaa-4aaa-baaa-00000000007f', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000083', 'aaaaaaaa-aaaa-4aaa-baaa-000000000080', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000084', 'aaaaaaaa-aaaa-4aaa-baaa-000000000081', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000085', 'aaaaaaaa-aaaa-4aaa-baaa-000000000082', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000086', 'aaaaaaaa-aaaa-4aaa-baaa-000000000082', '11111111-1111-1111-1111-111111111107', false)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000087', 'aaaaaaaa-aaaa-4aaa-baaa-000000000083', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000088', 'aaaaaaaa-aaaa-4aaa-baaa-000000000084', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000089', 'aaaaaaaa-aaaa-4aaa-baaa-000000000085', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000008a', 'aaaaaaaa-aaaa-4aaa-baaa-000000000086', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000008b', 'aaaaaaaa-aaaa-4aaa-baaa-000000000087', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000008c', 'aaaaaaaa-aaaa-4aaa-baaa-000000000088', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000008d', 'aaaaaaaa-aaaa-4aaa-baaa-000000000089', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000008e', 'aaaaaaaa-aaaa-4aaa-baaa-00000000008a', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000008f', 'aaaaaaaa-aaaa-4aaa-baaa-00000000008b', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000090', 'aaaaaaaa-aaaa-4aaa-baaa-00000000008c', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000091', 'aaaaaaaa-aaaa-4aaa-baaa-00000000008d', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000092', 'aaaaaaaa-aaaa-4aaa-baaa-00000000008e', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000093', 'aaaaaaaa-aaaa-4aaa-baaa-00000000008f', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000094', 'aaaaaaaa-aaaa-4aaa-baaa-000000000090', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000095', 'aaaaaaaa-aaaa-4aaa-baaa-000000000091', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000096', 'aaaaaaaa-aaaa-4aaa-baaa-000000000092', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000097', 'aaaaaaaa-aaaa-4aaa-baaa-000000000093', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000098', 'aaaaaaaa-aaaa-4aaa-baaa-000000000094', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000099', 'aaaaaaaa-aaaa-4aaa-baaa-000000000095', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000009a', 'aaaaaaaa-aaaa-4aaa-baaa-000000000096', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000009b', 'aaaaaaaa-aaaa-4aaa-baaa-000000000097', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000009c', 'aaaaaaaa-aaaa-4aaa-baaa-000000000098', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000009d', 'aaaaaaaa-aaaa-4aaa-baaa-000000000099', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000009e', 'aaaaaaaa-aaaa-4aaa-baaa-00000000009a', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000009f', 'aaaaaaaa-aaaa-4aaa-baaa-00000000009b', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000a0', 'aaaaaaaa-aaaa-4aaa-baaa-00000000009c', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000a1', 'aaaaaaaa-aaaa-4aaa-baaa-00000000009d', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000a2', 'aaaaaaaa-aaaa-4aaa-baaa-00000000009e', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000a3', 'aaaaaaaa-aaaa-4aaa-baaa-00000000009f', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000a4', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000a0', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000a5', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000a1', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000a6', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000a1', '11111111-1111-1111-1111-111111111117', false)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000a7', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000a2', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000a8', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000a3', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000a9', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000a4', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000aa', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000a5', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000ab', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000a6', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000ac', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000a7', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000ad', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000a8', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000ae', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000a9', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000af', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000aa', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000b0', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000ab', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000b1', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000ac', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000b2', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000ad', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000b3', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000ae', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000b4', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000af', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000b5', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000b0', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000b6', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000b1', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000b7', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000b2', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000b8', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000b3', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000b9', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000b4', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000ba', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000b5', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000bb', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000b6', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000bc', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000b7', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000bd', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000b8', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000be', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000b9', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000bf', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000ba', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000c0', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000bb', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000c1', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000bc', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000c2', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000bc', '11111111-1111-1111-1111-111111111107', false)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000c3', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000bd', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000c4', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000be', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000c5', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000bf', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000c6', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000c0', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000c7', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000c1', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000c8', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000c2', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000c9', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000c3', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000ca', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000c4', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000cb', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000c5', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000cc', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000c6', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000cd', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000c7', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000ce', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000c8', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000cf', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000c9', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000d0', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000ca', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000d1', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000cb', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000d2', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000cc', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000d3', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000cd', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000d4', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000ce', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000d5', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000cf', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000d6', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000d0', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000d7', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000d1', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000d8', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000d2', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000d9', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000d3', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000da', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000d4', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000db', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000d5', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000dc', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000d6', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000dd', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000d7', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000de', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000d8', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000df', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000d8', '11111111-1111-1111-1111-111111111107', false)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000e0', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000d9', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000e1', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000da', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000e2', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000db', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000e3', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000dc', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000e4', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000dd', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000e5', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000de', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000e6', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000df', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000e7', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000e0', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000e8', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000e1', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000e9', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000e2', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000ea', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000e3', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000eb', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000e4', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000ec', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000e5', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000ed', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000e6', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000ee', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000e7', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000ef', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000e8', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000f0', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000e9', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000f1', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000ea', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000f2', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000eb', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000f3', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000ec', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;

-- Links for existing seed providers found in vendor lists

-- Existing: Ability Now Bay Area -> Day Programs
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000f4', '22222222-2222-2222-2222-222222222208', '11111111-1111-1111-1111-111111111116', false)
ON CONFLICT (provider_id, service_id) DO NOTHING;
-- Existing: East Bay Innovations -> ILS
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000f5', '22222222-2222-2222-2222-222222222207', '11111111-1111-1111-1111-111111111117', false)
ON CONFLICT (provider_id, service_id) DO NOTHING;
-- Existing: East Bay Innovations -> Respite
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000f6', '22222222-2222-2222-2222-222222222207', '11111111-1111-1111-1111-111111111107', false)
ON CONFLICT (provider_id, service_id) DO NOTHING;
-- Existing: Toolworks -> ILS
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000f7', '22222222-2222-2222-2222-222222222212', '11111111-1111-1111-1111-111111111117', false)
ON CONFLICT (provider_id, service_id) DO NOTHING;

COMMIT;