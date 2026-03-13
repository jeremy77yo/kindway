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

