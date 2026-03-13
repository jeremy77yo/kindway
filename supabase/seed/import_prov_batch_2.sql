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