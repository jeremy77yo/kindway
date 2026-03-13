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