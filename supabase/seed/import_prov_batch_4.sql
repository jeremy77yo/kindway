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