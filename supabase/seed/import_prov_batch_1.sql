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