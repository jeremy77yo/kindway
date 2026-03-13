-- =============================================================================
-- Seed Data for Bay Area Disability Services Navigator
-- =============================================================================
-- Uses deterministic UUIDs for cross-referencing between tables.
-- All data is fictional but modeled on realistic Bay Area services.
-- =============================================================================

BEGIN;

-- =============================================================================
-- 1. SERVICE CATEGORIES (15 records)
-- UUIDs: 11111111-1111-1111-1111-111111111101 through ...115
-- =============================================================================

INSERT INTO services (id, name, slug, category, short_description, full_description, eligibility_criteria, documents_needed, what_to_ask_for, typical_timeline, age_groups, icon_name, sort_order) VALUES

-- 1. Early Intervention (0-3)
(
  '11111111-1111-1111-1111-111111111101',
  'Early Intervention (0-3)',
  'early-intervention',
  'Early Childhood',
  'Free developmental services for infants and toddlers who have delays or disabilities. Services are provided in your home or community settings.',
  'Early Intervention services help babies and toddlers (birth to age 3) who are not meeting developmental milestones or who have been diagnosed with a condition that may affect their development. In California, these services are coordinated through the Regional Center system under the Early Start program.

Services can include speech therapy, physical therapy, occupational therapy, special instruction, and family training. A service coordinator will work with your family to create an Individualized Family Service Plan (IFSP) that outlines the specific supports your child needs. All core services are provided at no cost to families regardless of income.

The earlier your child begins receiving support, the better their long-term outcomes tend to be. You do not need a formal diagnosis to request an evaluation. If you have concerns about your child''s development, you can refer yourself directly to your local Regional Center.',
  'Children from birth to 36 months who have a developmental delay of 33% or more in one or more areas, have an established risk condition, or are at high risk for developmental disability.',
  ARRAY['Child''s birth certificate or proof of age', 'Health insurance information (Medi-Cal or private)', 'Any existing medical or developmental evaluations', 'Immunization records'],
  ARRAY['How long is the current wait for an initial evaluation?', 'What does the evaluation process involve and how long does it take?', 'Can services be provided in our home or at daycare?', 'What happens when my child turns 3 and ages out of Early Start?', 'Are there parent support groups available through the program?'],
  'Initial evaluation typically completed within 45 days of referral. IFSP developed within 45 days of evaluation. Services begin as soon as possible after the IFSP is finalized.',
  ARRAY['0-3'],
  'Baby',
  1
),

-- 2. Regional Center Services
(
  '11111111-1111-1111-1111-111111111102',
  'Regional Center Services',
  'regional-center',
  'Core Services',
  'California Regional Centers coordinate lifelong services for people with developmental disabilities, including case management, funding, and referrals.',
  'Regional Centers are nonprofit organizations funded by the California Department of Developmental Services. They serve as the main point of entry for people with developmental disabilities to access a wide range of services and supports throughout their lives. There are 21 Regional Centers in California, with several covering the Bay Area.

Your Regional Center service coordinator helps you navigate available programs, connects you with providers, and develops an Individual Program Plan (IPP) that reflects your goals and needs. Services can include respite care, day programs, supported employment, independent living assistance, behavioral supports, transportation, and much more.

Eligibility is based on having a qualifying developmental disability that originated before age 18. This includes intellectual disability, cerebral palsy, epilepsy, autism, and conditions closely related to intellectual disability. Services are provided at no cost to the individual for most programs, though some may involve a share of cost depending on the specific service and your circumstances.',
  'Must have a developmental disability that originated before age 18, including intellectual disability, cerebral palsy, epilepsy, autism, or a condition requiring services similar to those needed by individuals with intellectual disability. Must be a California resident.',
  ARRAY['Proof of California residency', 'Medical records or diagnostic evaluations', 'School records (IEP or psychoeducational evaluations)', 'Proof of identity (birth certificate, ID, or passport)', 'Health insurance information'],
  ARRAY['How long does the intake and eligibility process take?', 'What services are available under the Individual Program Plan?', 'How often will I meet with my service coordinator?', 'What is the process for appealing a denial of services?', 'Are there self-determination program options available?'],
  'Intake process typically takes 60-120 days. Initial assessment and eligibility determination may take longer if additional evaluations are needed.',
  ARRAY['0-3', '3-5', '6-12', '13-17', '18-22', '22+'],
  'Landmark',
  2
),

-- 3. Special Education (IEP/504)
(
  '11111111-1111-1111-1111-111111111103',
  'Special Education (IEP/504)',
  'special-education',
  'Education',
  'Public schools must provide free, appropriate education for students with disabilities through IEP or 504 plans, including specialized instruction and accommodations.',
  'Under federal law (IDEA and Section 504), every child with a disability is entitled to a free appropriate public education (FAPE). An Individualized Education Program (IEP) provides specialized instruction and related services for students who qualify under one of 13 disability categories. A 504 Plan provides accommodations and modifications for students whose disability affects a major life activity but who may not need specialized instruction.

The IEP process begins with a referral for evaluation, which can come from a parent, teacher, or other professional. The school district has 60 days to complete the evaluation after you consent. If your child qualifies, the IEP team (which includes you as a parent) meets to develop goals and determine services. These can include specialized academic instruction, speech therapy, occupational therapy, counseling, assistive technology, and more.

Parents are critical members of the IEP team and have the right to participate in all decisions. If you disagree with the school''s decisions, you have options including requesting an Independent Educational Evaluation, filing for mediation, or pursuing a due process hearing. Many families find it helpful to bring an advocate to IEP meetings.',
  'Any student aged 3-22 enrolled in a public school or residing in a public school district who is suspected of having a disability that affects their ability to learn. For IEP: must meet criteria under one of 13 IDEA disability categories. For 504: must have a disability that substantially limits a major life activity.',
  ARRAY['Any existing medical diagnoses or evaluations', 'Previous school records and report cards', 'Written request for evaluation (parent letter)', 'Examples of your child''s work showing areas of concern', 'Private therapy or assessment reports if available'],
  ARRAY['What assessments will be used and who will conduct them?', 'What related services (speech, OT, counseling) does my child qualify for?', 'How will progress on IEP goals be measured and reported?', 'What placement options are available if the current one is not working?', 'Can I get a copy of my procedural safeguards and parent rights?'],
  'School district has 15 days to respond to a written evaluation request. Evaluation must be completed within 60 days of consent. IEP must be developed within 30 days of eligibility determination.',
  ARRAY['3-5', '6-12', '13-17', '18-22'],
  'GraduationCap',
  3
),

-- 4. Speech & Language Therapy
(
  '11111111-1111-1111-1111-111111111104',
  'Speech & Language Therapy',
  'speech-therapy',
  'Therapy',
  'Speech-language pathologists help with communication challenges including speech sounds, language development, social communication, stuttering, and feeding issues.',
  'Speech and language therapy addresses a wide range of communication difficulties. Speech-language pathologists (SLPs) work with individuals who have trouble producing speech sounds, understanding or using language, social communication challenges (like those associated with autism), voice disorders, stuttering, and feeding or swallowing difficulties.

For children, therapy often focuses on building vocabulary, forming sentences, following directions, and developing social communication skills like turn-taking and conversation. For individuals with autism or related conditions, therapy may include augmentative and alternative communication (AAC) such as picture systems or speech-generating devices. Sessions can occur in clinics, schools, homes, or via telehealth.

Speech therapy can be accessed through multiple pathways: your child''s school (as part of an IEP), through Regional Center (for children 0-3 or as a vendored service), through private insurance, or through Medi-Cal. Many families access services through more than one pathway to maximize the support their child receives. Frequency and duration of sessions depend on individual needs.',
  'Anyone with a communication, speech, language, voice, or feeding/swallowing disorder. A referral from a physician is required for some insurance plans. No diagnosis required to request an evaluation.',
  ARRAY['Physician referral (if required by insurance)', 'Health insurance card', 'Any previous speech or developmental evaluations', 'School IEP or IFSP if applicable'],
  ARRAY['What is your experience with my child''s specific diagnosis or challenges?', 'How frequently do you recommend therapy sessions?', 'Do you use AAC (augmentative and alternative communication) approaches?', 'How do you involve parents in therapy and practice at home?', 'What insurance plans do you accept and what are the out-of-pocket costs?'],
  'Wait times for private SLPs range from 2-8 weeks. School-based services begin after IEP is finalized. Regional Center services typically begin within 30 days of authorization.',
  ARRAY['0-3', '3-5', '6-12', '13-17', '18-22', '22+'],
  'Heart',
  4
),

-- 5. Occupational Therapy
(
  '11111111-1111-1111-1111-111111111105',
  'Occupational Therapy',
  'occupational-therapy',
  'Therapy',
  'Occupational therapists help build skills for daily living, including fine motor skills, sensory processing, self-care, handwriting, and adaptive behavior.',
  'Occupational therapy (OT) helps people develop, recover, or maintain the skills needed for daily living and independence. For children with disabilities, OT commonly addresses fine motor skills (writing, cutting, buttoning), sensory processing challenges (sensitivity to textures, sounds, or movement), self-care skills (dressing, feeding, toileting), visual-motor integration, and regulation of attention and behavior.

Occupational therapists use purposeful activities and play-based approaches to help children build these skills. For example, an OT might use therapeutic swinging activities to help a child who is sensitive to movement, or use fun hand-strengthening exercises to improve a child''s ability to hold a pencil. Sensory integration therapy, a specialized approach many OTs use, can be particularly helpful for children with autism or sensory processing differences.

OT services can be accessed through schools (as part of an IEP), Regional Centers, private clinics, hospitals, or home-based programs. Many occupational therapists offer telehealth sessions as well. If your child struggles with everyday tasks that other children their age can do, an OT evaluation can help identify areas where support would be beneficial.',
  'Individuals of any age who have difficulty with daily living activities, fine motor skills, sensory processing, or other functional skills due to a disability, developmental delay, injury, or medical condition.',
  ARRAY['Physician referral (if required by insurance)', 'Health insurance information', 'Previous OT evaluations or reports', 'School IEP or IFSP if applicable', 'List of current medications'],
  ARRAY['Do you have experience with sensory processing challenges?', 'What does a typical therapy session look like for my child''s age?', 'How do you measure progress and how often will I get updates?', 'Do you offer clinic-based, home-based, or telehealth sessions?', 'What activities can we practice at home between sessions?'],
  'Private OT wait times range from 2-12 weeks depending on the clinic. School-based OT begins after the IEP is finalized. Insurance authorization typically takes 1-2 weeks.',
  ARRAY['0-3', '3-5', '6-12', '13-17', '18-22', '22+'],
  'Heart',
  5
),

-- 6. Behavioral Health / ABA
(
  '11111111-1111-1111-1111-111111111106',
  'Behavioral Health / ABA',
  'behavioral-health',
  'Therapy',
  'Applied Behavior Analysis (ABA) and behavioral health services help individuals develop adaptive skills, manage challenging behaviors, and build social competence.',
  'Applied Behavior Analysis (ABA) is an evidence-based therapy that uses principles of learning to increase helpful behaviors and reduce behaviors that interfere with learning or daily life. ABA is widely used for individuals with autism spectrum disorder but can benefit anyone with behavioral challenges or skill deficits. Therapy is individualized and data-driven, with specific goals tailored to each person.

ABA services can range from intensive programs (20-40 hours per week for young children) to focused interventions targeting specific skills like social interaction, communication, self-care, or academic readiness. A Board Certified Behavior Analyst (BCBA) develops the treatment plan and supervises Registered Behavior Technicians (RBTs) who deliver the direct therapy. Sessions can occur in homes, clinics, schools, or community settings.

In California, health insurance plans (including Medi-Cal) are required to cover ABA therapy for individuals with an autism diagnosis. Regional Centers also fund behavioral services for eligible individuals. The demand for ABA services in the Bay Area often exceeds provider capacity, so waitlists are common. It is a good idea to get on multiple waitlists while you are waiting for services to begin.',
  'A diagnosis of autism spectrum disorder is required for insurance-funded ABA. Regional Center behavioral services are available to individuals with any qualifying developmental disability. A behavioral assessment is typically needed before services begin.',
  ARRAY['Autism or developmental disability diagnosis', 'Health insurance card', 'Physician referral or prescription for ABA', 'Any previous behavioral or psychological evaluations', 'Regional Center authorization (if applicable)'],
  ARRAY['What is your staff-to-client ratio and BCBA supervision frequency?', 'How do you individualize treatment and involve families in goal-setting?', 'What is your approach to reducing challenging behaviors (do you use positive strategies)?', 'How long is your current waitlist for new clients?', 'Do you offer services in-home, in a center, or at school?'],
  'Insurance authorization takes 2-4 weeks after assessment. Waitlists for ABA providers in the Bay Area can range from 1 to 6 months. Regional Center authorization typically takes 30-60 days.',
  ARRAY['0-3', '3-5', '6-12', '13-17', '18-22', '22+'],
  'Brain',
  6
),

-- 7. Respite Care
(
  '11111111-1111-1111-1111-111111111107',
  'Respite Care',
  'respite-care',
  'Family Support',
  'Respite care gives family caregivers a break by providing short-term care for individuals with disabilities, either in-home or at a facility.',
  'Respite care provides temporary relief for family members who are the primary caregivers of a person with a disability. This service allows caregivers to take time for themselves, run errands, attend to other family needs, or simply rest and recharge. Caregiver burnout is a real concern, and respite care is an important support that helps families sustain their ability to care for their loved one over the long term.

Respite services can be provided in your home by a trained respite worker, at a licensed respite facility, or through specialized day programs. In-home respite workers can assist with supervision, personal care, medication management, meal preparation, and engagement in activities. Some programs also offer after-school and weekend respite options specifically designed for children and teens.

In California, respite care is most commonly funded through the Regional Center, which provides a set number of hours per month based on the family''s Individual Program Plan (IPP). Medi-Cal waiver programs may also cover respite services. Some nonprofit organizations offer additional respite programs, including volunteer-based options. The number of hours available varies, so it is important to discuss your family''s needs during your IPP meeting.',
  'Families must be receiving services through a Regional Center or qualify for Medi-Cal Home and Community-Based Services waiver. The individual receiving care must have a developmental disability. Availability of hours depends on assessed family needs.',
  ARRAY['Regional Center authorization letter', 'Individual Program Plan (IPP) or IFSP', 'Emergency contact and medical information for the individual', 'Any behavioral support plans or safety protocols'],
  ARRAY['What training do your respite workers receive, especially for behavioral needs?', 'Can the same respite worker be assigned consistently for continuity?', 'What are the available hours and how flexible is scheduling?', 'What happens if the assigned worker is sick or unavailable?', 'Is there a process for the respite worker to learn my child''s specific routines and needs?'],
  'Regional Center authorization for respite is typically included in the IPP process. Finding a qualified respite worker can take 2-6 weeks depending on availability in your area.',
  ARRAY['0-3', '3-5', '6-12', '13-17', '18-22', '22+'],
  'HandHeart',
  7
),

-- 8. Employment Services
(
  '11111111-1111-1111-1111-111111111108',
  'Employment Services',
  'employment',
  'Adult Services',
  'Employment services help people with disabilities find and keep meaningful jobs through job coaching, skills training, supported employment, and vocational rehabilitation.',
  'Employment services support individuals with disabilities in preparing for, finding, and maintaining competitive integrated employment. This can include vocational assessments to identify strengths and interests, job skills training, resume building, interview preparation, job placement assistance, and ongoing job coaching once employed.

Supported employment programs provide one-on-one job coaching at the worksite to help the individual learn their job tasks, navigate workplace social situations, and build independence over time. The goal is typically to fade job coaching support as the individual becomes more confident and skilled in their role. Some programs also offer customized employment, which involves working with an employer to create or modify a job to match the individual''s abilities.

In California, the Department of Rehabilitation (DOR) provides vocational rehabilitation services for eligible individuals. Regional Centers also fund supported employment programs through vendored service providers. The Ticket to Work program allows individuals receiving Social Security disability benefits to explore employment without immediately losing their benefits. Many Bay Area nonprofits operate employment programs that specialize in placing people with developmental disabilities in local businesses.',
  'Adults with disabilities who want to work. Department of Rehabilitation requires a disability that results in a substantial barrier to employment. Regional Center employment services require eligibility for Regional Center services. No age minimum for DOR (typically 16+).',
  ARRAY['Regional Center or DOR referral', 'Resume or work history (if available)', 'Documentation of disability', 'Any vocational assessments or evaluations', 'Social Security benefit information (if applicable)'],
  ARRAY['What types of jobs do you typically help people find?', 'How long does job coaching continue after placement?', 'Do you help with benefits planning so I understand how working affects my SSI/SSDI?', 'What is your job retention rate after 6 months and 1 year?', 'Can I try different job types before committing to one?'],
  'DOR intake typically takes 30-60 days. Job placement timelines vary widely from 1-6 months depending on the individual''s goals, skills, and the local job market.',
  ARRAY['16-17', '18-22', '22+'],
  'Briefcase',
  8
),

-- 9. Supported Housing
(
  '11111111-1111-1111-1111-111111111109',
  'Supported Housing',
  'housing',
  'Adult Services',
  'Housing programs help adults with disabilities find and maintain safe, affordable housing with varying levels of support from independent apartments to group homes.',
  'Supported housing programs help adults with developmental disabilities live as independently as possible in the community. Options range from independent or semi-independent living with periodic check-ins and skill-building support, to supported living services (SLS) with daily assistance, to licensed residential facilities (group homes) that provide 24-hour care and supervision.

Independent Living Services (ILS) and Supported Living Services (SLS) are funded through the Regional Center and provide individualized support in the person''s own apartment or home. Support can include help with cooking, cleaning, budgeting, medication management, transportation, and community participation. The level of support is determined by the individual''s needs and preferences, and the goal is always to maximize independence and self-determination.

Finding affordable housing in the Bay Area is a significant challenge for everyone, and it is especially difficult for people with disabilities who often live on fixed incomes. Housing programs can help navigate Section 8 vouchers, affordable housing waitlists, and other subsidized housing options. Some organizations in the Bay Area specialize in developing affordable housing specifically designed for people with disabilities.',
  'Adults (typically 18+) with developmental disabilities who are Regional Center consumers. Housing support level is determined by assessed needs. Section 8 and other subsidized housing programs have separate eligibility requirements based on income.',
  ARRAY['Regional Center eligibility documentation', 'Individual Program Plan (IPP)', 'Proof of income (SSI/SSDI award letters)', 'Identification documents', 'Section 8 or housing voucher documentation (if applicable)'],
  ARRAY['What level of daily support is provided and how flexible is it?', 'How are roommates or housemates matched if it is a shared living situation?', 'What is the process for transitioning to more independent living over time?', 'What are the monthly costs to the individual and what is covered by funding?', 'How do you handle emergencies or after-hours support needs?'],
  'Regional Center housing authorization is part of the IPP process. Waitlists for supported living placements can range from 3 months to over a year. Section 8 waitlists in the Bay Area are typically 2-5 years.',
  ARRAY['18-22', '22+'],
  'Home',
  9
),

-- 10. Transportation
(
  '11111111-1111-1111-1111-111111111110',
  'Transportation',
  'transportation',
  'Daily Living',
  'Specialized transportation services help people with disabilities get to appointments, work, school, and community activities when standard public transit is not accessible.',
  'Transportation is one of the most common barriers people with disabilities face in accessing services, employment, and community life. Specialized transportation options go beyond standard public transit to serve individuals who cannot independently use buses or trains due to their disability.

Paratransit services (like East Bay Paratransit and SF Access) provide door-to-door shared rides for individuals who are unable to use fixed-route public transit due to a disability. These services must be available anywhere the regular bus or train goes and at the same hours. Regional Centers may also fund transportation to and from day programs, employment, or medical appointments. Some nonprofit organizations operate their own transportation programs or provide gas cards, ride-share vouchers, or volunteer driver programs.

Travel training is another important service that teaches individuals with disabilities how to safely and independently use public transportation. This can dramatically increase a person''s independence and expand their access to employment, social activities, and services. Many Regional Centers and school transition programs offer travel training as part of their services.',
  'Paratransit eligibility requires a disability that prevents the use of fixed-route transit. ADA paratransit certification involves an assessment process. Regional Center transportation is available to RC consumers as part of their IPP. Travel training is typically available to transition-age youth and adults.',
  ARRAY['Completed ADA paratransit application', 'Documentation of disability (physician letter)', 'Regional Center authorization (if applicable)', 'Photo identification'],
  ARRAY['How far in advance do I need to schedule rides?', 'What is the service area and are there limits on trip distance?', 'How are pick-up and drop-off times determined, and how long are typical waits?', 'Is there a travel training program to help me learn public transit?', 'What is the cost per ride and are there reduced fare programs?'],
  'ADA paratransit certification takes 2-4 weeks after application. Regional Center transportation authorization is part of the IPP process. Travel training programs typically run 4-12 weeks.',
  ARRAY['6-12', '13-17', '18-22', '22+'],
  'Car',
  10
),

-- 11. Recreation & Social
(
  '11111111-1111-1111-1111-111111111111',
  'Recreation & Social Programs',
  'recreation',
  'Community',
  'Inclusive recreation and social programs offer sports, arts, camps, social skills groups, and community outings designed for people with disabilities.',
  'Recreation and social programs are essential for building friendships, developing social skills, staying physically active, and participating fully in community life. These programs are specifically designed to be inclusive and accessible for people with disabilities, though many also serve the broader community.

Options include adaptive sports leagues (swimming, basketball, soccer, horseback riding), art and music programs, social skills groups, day camps, weekend outings, after-school programs, and special interest clubs. Many programs provide trained staff or volunteers who offer one-on-one support to participants who need it. For children and teens, these programs can be an important complement to therapy and school services by providing natural opportunities to practice social skills and build friendships.

Many Bay Area cities offer inclusive recreation programs through their parks and recreation departments, sometimes at reduced or no cost for individuals with disabilities. Nonprofit organizations run a variety of specialized programs as well. Regional Centers may fund social recreation services, day programs, or after-school care as part of an individual''s IPP. Some programs operate year-round, while others are seasonal. Summer camp programs specifically designed for children with disabilities are very popular and often fill up months in advance.',
  'Varies by program. Most inclusive recreation programs welcome individuals with any type of disability. Some programs are age-specific or focus on specific disability populations. Regional Center-funded programs require RC eligibility.',
  ARRAY['Regional Center authorization (if RC-funded)', 'Medical information and emergency contacts', 'Any behavioral support plans or accommodation needs', 'Proof of disability (for reduced-fee programs)'],
  ARRAY['What is the staff-to-participant ratio?', 'How do you accommodate participants with different support needs?', 'Are there opportunities for my child to build friendships outside of program hours?', 'What safety protocols and staff training are in place?', 'Is financial assistance available for program fees?'],
  'Most programs have rolling enrollment or seasonal registration. Popular summer camps may require registration 2-4 months in advance. Regional Center authorization for social recreation is part of the IPP process.',
  ARRAY['3-5', '6-12', '13-17', '18-22', '22+'],
  'Smile',
  11
),

-- 12. Assistive Technology
(
  '11111111-1111-1111-1111-111111111112',
  'Assistive Technology',
  'assistive-technology',
  'Daily Living',
  'Assistive technology includes devices and software that help people with disabilities communicate, learn, work, and live more independently.',
  'Assistive technology (AT) refers to any device, equipment, or software that helps a person with a disability do things they would otherwise have difficulty doing. This ranges from simple low-tech solutions (like picture communication boards or adapted utensils) to high-tech options (like speech-generating devices, eye-tracking computers, power wheelchairs, and specialized software).

For individuals with communication disabilities, augmentative and alternative communication (AAC) devices can be life-changing. These range from simple picture exchange systems to sophisticated tablet-based apps and dedicated speech-generating devices. An AT evaluation by a qualified specialist helps determine what technology would be most beneficial based on the individual''s abilities, needs, and goals.

Assistive technology can be funded through multiple sources. Schools are required to consider AT needs as part of the IEP process. Regional Centers may fund AT through the IPP. Health insurance (including Medi-Cal) may cover medically necessary devices like wheelchairs and communication devices. The California Assistive Technology Program (CalAT) offers device demonstrations, short-term loans, and an exchange program. Some organizations also offer refurbished devices at low cost or have lending libraries where families can try devices before committing to one.',
  'Any individual with a disability that affects their ability to communicate, learn, work, or perform daily activities. No specific diagnosis required. Funding eligibility varies by source (insurance, Regional Center, school district, etc.).',
  ARRAY['Documentation of disability or functional limitations', 'Physician prescription (for insurance-funded devices)', 'AT evaluation report (or request for evaluation)', 'Insurance information', 'IEP or IPP documentation showing AT needs'],
  ARRAY['Can I try the device or software before we commit to it?', 'What training is provided for the individual and family members?', 'Who provides ongoing technical support and repairs?', 'What funding sources can help cover the cost?', 'How often can the device be upgraded or replaced as needs change?'],
  'AT evaluations can be scheduled within 2-6 weeks. Insurance authorization for devices takes 2-8 weeks. School-based AT is addressed within the IEP timeline.',
  ARRAY['0-3', '3-5', '6-12', '13-17', '18-22', '22+'],
  'Laptop',
  12
),

-- 13. Legal Advocacy
(
  '11111111-1111-1111-1111-111111111113',
  'Legal Advocacy',
  'legal-advocacy',
  'Rights & Advocacy',
  'Legal advocates and attorneys help people with disabilities protect their rights in education, employment, housing, benefits, and access to services.',
  'Legal advocacy services help individuals with disabilities and their families understand and exercise their legal rights. Disability rights are protected under numerous federal and state laws, including the Americans with Disabilities Act (ADA), the Individuals with Disabilities Education Act (IDEA), Section 504 of the Rehabilitation Act, and the Lanterman Developmental Disabilities Act in California.

Common areas where legal advocacy is needed include special education disputes (IEP disagreements, denial of services, disciplinary issues), Regional Center service denials or reductions, Social Security disability benefits (applications and appeals), housing discrimination, employment discrimination, guardianship and conservatorship, and access to public accommodations. Some situations can be resolved through informal advocacy, while others may require formal legal representation.

The Bay Area has several organizations that provide free or low-cost legal services for people with disabilities. Disability Rights California is the state''s federally mandated protection and advocacy organization. Bay Area Legal Aid provides free civil legal services to low-income individuals. The Office of Clients'' Rights Advocacy (OCRA) specifically helps Regional Center consumers. Many of these organizations also offer workshops, self-advocacy training, and informational materials to help families advocate for themselves.',
  'People with disabilities and their family members who need assistance with disability-related legal matters. Most free legal services are income-qualified. Some organizations serve specific populations (Regional Center consumers, special education families, etc.).',
  ARRAY['Documentation of the issue or dispute', 'Copies of relevant correspondence (denial letters, IEP documents)', 'Regional Center records or IPP (if applicable)', 'Income verification (for free legal services)', 'Timeline of events related to the issue'],
  ARRAY['Do you have experience with my specific type of legal issue?', 'What are my rights in this situation and what are my options?', 'Is there a fee for services, or do you offer sliding scale or pro bono representation?', 'What is the likely timeline for resolving this issue?', 'Can you represent me at hearings or meetings, or do you provide advice only?'],
  'Initial consultations are usually available within 1-3 weeks. Case timelines vary widely depending on the type of legal matter. Education due process cases typically take 3-6 months. Benefits appeals can take 6-18 months.',
  ARRAY['0-3', '3-5', '6-12', '13-17', '18-22', '22+'],
  'Scale',
  13
),

-- 14. Family Support Groups
(
  '11111111-1111-1111-1111-111111111114',
  'Family Support Groups',
  'family-support',
  'Family Support',
  'Parent and family support groups connect caregivers of people with disabilities for emotional support, information sharing, and community building.',
  'Raising a child or caring for a family member with a disability can be isolating, and connecting with other families who understand your experience can be profoundly helpful. Family support groups bring together parents, siblings, and other caregivers to share experiences, exchange practical advice, learn from guest speakers, and build lasting friendships.

Support groups come in many forms. Some are diagnosis-specific (autism parent groups, Down syndrome family circles, epilepsy support networks) while others welcome families across all disability types. Formats include in-person meetings, virtual sessions, social media communities, and family events. Many groups are facilitated by professionals such as social workers or family therapists, while others are peer-led by experienced parent advocates.

In the Bay Area, family support services are offered by Family Resource Centers (often connected to Regional Centers), parent training and information centers, disability-specific nonprofit organizations, and hospital family support programs. Many of these programs also offer parent-to-parent mentoring, where a veteran parent is matched with a family that is new to the disability community. In addition to emotional support, these groups are often the best source of practical, real-world information about local providers, navigating systems, and accessing services.',
  'Open to any family member or caregiver of a person with a disability. Some groups focus on specific diagnoses, age groups, or languages. No income requirements or referrals needed for most groups.',
  ARRAY['No formal documents typically required', 'Diagnosis information may help match you with the right group', 'Contact information for follow-up'],
  ARRAY['Are meetings held in person, online, or both?', 'Is there a group specifically for my child''s diagnosis or age group?', 'Are meetings available in languages other than English?', 'Do you offer parent-to-parent mentoring or peer matching?', 'Is childcare or respite available during meetings?'],
  'Most support groups have open enrollment and you can join at any time. Some structured programs (like parent training series) have specific start dates.',
  ARRAY['0-3', '3-5', '6-12', '13-17', '18-22', '22+'],
  'Users',
  14
),

-- 15. Transition Services (18-22)
(
  '11111111-1111-1111-1111-111111111115',
  'Transition Services (18-22)',
  'transition-services',
  'Education',
  'Transition services help young adults with disabilities move from school to adult life, covering employment, education, independent living, and community participation.',
  'Transition planning is the process of preparing young people with disabilities for life after high school. Under IDEA, transition planning must begin by age 16 (and earlier when appropriate) and should address postsecondary education, employment, and independent living skills. The goal is to ensure that when a student exits the school system, they have a clear path forward and the skills and connections they need to thrive as an adult.

Transition services can include vocational assessments, job exploration and work experiences, college preparation, independent living skills instruction (cooking, budgeting, self-care, transportation), self-advocacy training, and connections to adult service agencies. The IEP transition plan should reflect the student''s own preferences, interests, and goals for their future. Students with disabilities can remain in public school programs until age 22, and many districts operate transition programs specifically for young adults aged 18-22.

The transition from school to adult services is one of the most challenging periods for families. While the school system is required to identify and serve students with disabilities, adult systems (Regional Center, Department of Rehabilitation, Social Security) often require families to apply and advocate for services. Starting the planning process early and connecting with adult agencies before the student exits school is critical for avoiding gaps in services.',
  'Students with disabilities aged 16-22 who have an IEP. Transition planning is a required component of the IEP beginning at age 16. Students may remain in school transition programs until age 22.',
  ARRAY['Current IEP with transition plan', 'Vocational assessments or interest inventories', 'Regional Center eligibility documentation (if applicable)', 'Identification documents (for adult service applications)', 'Social Security benefit information (if applicable)'],
  ARRAY['What postsecondary education or training options are available?', 'How does the transition program help students gain real work experience?', 'What independent living skills are taught and how?', 'How do you coordinate with Regional Center and Department of Rehabilitation?', 'What happens after my child exits the school program at 22?'],
  'Transition planning should begin by age 16 in the IEP. Applications to adult agencies (Regional Center, DOR) should be submitted 1-2 years before school exit. The transition process is ongoing throughout the high school years.',
  ARRAY['16-17', '18-22'],
  'ArrowRightCircle',
  15
);


-- =============================================================================
-- 2. PROVIDERS (14 records)
-- UUIDs: 22222222-2222-2222-2222-222222222201 through ...214
-- =============================================================================

INSERT INTO providers (id, name, slug, description, short_description, provider_type, phone, email, website, street_address, city, state, zip_code, latitude, longitude, service_area, languages, age_groups_served, disability_populations, funding_accepted, accepts_new_clients, waitlist_status, hours_of_operation, is_verified, is_active) VALUES

-- 1. Golden Gate Regional Center
(
  '22222222-2222-2222-2222-222222222201',
  'Golden Gate Regional Center',
  'golden-gate-regional-center',
  'Golden Gate Regional Center (GGRC) is a nonprofit organization that coordinates services for people with developmental disabilities in San Francisco, Marin, and San Mateo counties. Established in 1966, GGRC provides lifelong services including case management, Early Start services for infants and toddlers, respite care, day programs, supported employment, and independent living support. GGRC serves over 11,000 individuals and their families, offering culturally and linguistically responsive services.',
  'Coordinates services for people with developmental disabilities in San Francisco, Marin, and San Mateo counties.',
  'regional-center',
  '(415) 546-9222',
  'info@ggrc.org',
  'https://www.ggrc.org',
  '1355 Market Street, Suite 220',
  'San Francisco',
  'CA',
  '94103',
  37.7764,
  -122.4174,
  ARRAY['San Francisco', 'Daly City', 'South San Francisco', 'San Mateo', 'Redwood City', 'San Rafael', 'Novato', 'Pacifica', 'Half Moon Bay'],
  ARRAY['English', 'Spanish', 'Chinese (Cantonese)', 'Chinese (Mandarin)', 'Tagalog', 'Vietnamese', 'Russian'],
  ARRAY['0-3', '3-5', '6-12', '13-17', '18-22', '22+'],
  ARRAY['Autism', 'Intellectual Disability', 'Cerebral Palsy', 'Epilepsy', 'Down Syndrome', 'Developmental Delay'],
  ARRAY['Regional Center', 'Medi-Cal', 'No cost to families'],
  true,
  'none',
  'Monday-Friday 8:30 AM - 5:00 PM',
  true,
  true
),

-- 2. Regional Center of the East Bay
(
  '22222222-2222-2222-2222-222222222202',
  'Regional Center of the East Bay',
  'regional-center-east-bay',
  'Regional Center of the East Bay (RCEB) is a nonprofit that provides services and support to individuals with developmental disabilities in Alameda and Contra Costa counties. RCEB helps individuals and families access services including early intervention, respite care, therapy, day programs, supported employment, housing, and more through individualized service plans. RCEB is committed to helping people with developmental disabilities live full, independent lives in their communities.',
  'Provides services and support for individuals with developmental disabilities in Alameda and Contra Costa counties.',
  'regional-center',
  '(510) 383-1200',
  'info@rceb.org',
  'https://www.rceb.org',
  '500 Davis Street, Suite 100',
  'Oakland',
  'CA',
  '94607',
  37.7958,
  -122.2768,
  ARRAY['Oakland', 'Berkeley', 'Fremont', 'Hayward', 'Richmond', 'Concord', 'Walnut Creek', 'Livermore', 'Antioch', 'Pleasanton'],
  ARRAY['English', 'Spanish', 'Chinese (Cantonese)', 'Chinese (Mandarin)', 'Vietnamese', 'Farsi', 'Arabic'],
  ARRAY['0-3', '3-5', '6-12', '13-17', '18-22', '22+'],
  ARRAY['Autism', 'Intellectual Disability', 'Cerebral Palsy', 'Epilepsy', 'Down Syndrome', 'Developmental Delay'],
  ARRAY['Regional Center', 'Medi-Cal', 'No cost to families'],
  true,
  'none',
  'Monday-Friday 8:00 AM - 5:00 PM',
  true,
  true
),

-- 3. San Andreas Regional Center
(
  '22222222-2222-2222-2222-222222222203',
  'San Andreas Regional Center',
  'san-andreas-regional-center',
  'San Andreas Regional Center (SARC) serves individuals with developmental disabilities and their families in Santa Clara, Santa Cruz, Monterey, and San Benito counties. SARC provides intake, assessment, and ongoing case management, helping connect individuals with a wide array of community-based services. SARC serves over 18,000 individuals and operates multiple office locations throughout its service area.',
  'Serves individuals with developmental disabilities in Santa Clara, Santa Cruz, Monterey, and San Benito counties.',
  'regional-center',
  '(408) 374-9960',
  'info@sarc.org',
  'https://www.sarc.org',
  '300 Orchard City Drive, Suite 170',
  'San Jose',
  'CA',
  '95128',
  37.3194,
  -121.9466,
  ARRAY['San Jose', 'Santa Clara', 'Sunnyvale', 'Mountain View', 'Palo Alto', 'Milpitas', 'Gilroy', 'Santa Cruz', 'Monterey'],
  ARRAY['English', 'Spanish', 'Vietnamese', 'Chinese (Mandarin)', 'Tagalog', 'Hindi'],
  ARRAY['0-3', '3-5', '6-12', '13-17', '18-22', '22+'],
  ARRAY['Autism', 'Intellectual Disability', 'Cerebral Palsy', 'Epilepsy', 'Down Syndrome', 'Developmental Delay'],
  ARRAY['Regional Center', 'Medi-Cal', 'No cost to families'],
  true,
  'none',
  'Monday-Friday 8:00 AM - 5:00 PM',
  true,
  true
),

-- 4. Bay Area Autism Services
(
  '22222222-2222-2222-2222-222222222204',
  'Bay Area Autism Services',
  'bay-area-autism-services',
  'Bay Area Autism Services is a nonprofit organization providing comprehensive autism support in the East Bay. Services include Applied Behavior Analysis (ABA) therapy, social skills groups, parent training, diagnostic evaluations, and community integration programs. Their team of Board Certified Behavior Analysts and therapists works with individuals across the lifespan, from early intervention through adulthood. They are committed to evidence-based practices and family-centered care.',
  'Nonprofit providing ABA therapy, social skills groups, parent training, and diagnostic evaluations in the East Bay.',
  'nonprofit',
  '(510) 845-7820',
  'intake@bayareaautism.org',
  'https://www.bayareaautism.org',
  '1720 Solano Avenue, Suite 201',
  'Berkeley',
  'CA',
  '94707',
  37.8916,
  -122.2785,
  ARRAY['Berkeley', 'Oakland', 'Albany', 'El Cerrito', 'Richmond', 'Emeryville', 'Walnut Creek', 'Lafayette'],
  ARRAY['English', 'Spanish'],
  ARRAY['0-3', '3-5', '6-12', '13-17', '18-22', '22+'],
  ARRAY['Autism', 'Developmental Delay', 'Intellectual Disability'],
  ARRAY['Regional Center', 'Medi-Cal', 'Private Insurance', 'Kaiser', 'Blue Cross', 'Aetna'],
  true,
  'moderate',
  'Monday-Friday 8:00 AM - 6:00 PM, Saturday 9:00 AM - 1:00 PM',
  true,
  true
),

-- 5. Pacific Behavioral Health
(
  '22222222-2222-2222-2222-222222222205',
  'Pacific Behavioral Health',
  'pacific-behavioral-health',
  'Pacific Behavioral Health is a private practice specializing in behavioral health services for children and adolescents with autism and related developmental conditions. Their multidisciplinary team includes Board Certified Behavior Analysts, licensed psychologists, and speech-language pathologists who collaborate to provide comprehensive, individualized treatment. They offer ABA therapy in clinic and home settings, psychological evaluations, social skills groups, and parent consultation.',
  'Private practice specializing in ABA therapy, psychological evaluations, and social skills groups for children and adolescents.',
  'private-practice',
  '(650) 321-4567',
  'info@pacificbehavioralhealth.com',
  'https://www.pacificbehavioralhealth.com',
  '2600 El Camino Real, Suite 408',
  'Palo Alto',
  'CA',
  '94306',
  37.4220,
  -122.1485,
  ARRAY['Palo Alto', 'Mountain View', 'Los Altos', 'Menlo Park', 'Redwood City', 'Sunnyvale', 'Stanford'],
  ARRAY['English', 'Spanish', 'Chinese (Mandarin)'],
  ARRAY['0-3', '3-5', '6-12', '13-17'],
  ARRAY['Autism', 'ADHD', 'Anxiety', 'Developmental Delay'],
  ARRAY['Private Insurance', 'Blue Cross', 'Aetna', 'United Healthcare', 'Cigna', 'Self-pay'],
  true,
  'short',
  'Monday-Friday 8:00 AM - 7:00 PM, Saturday 9:00 AM - 3:00 PM',
  true,
  true
),

-- 6. SF Unified School District - Special Education
(
  '22222222-2222-2222-2222-222222222206',
  'SF Unified School District - Special Education',
  'sfusd-special-education',
  'The San Francisco Unified School District Special Education Department provides services to students with disabilities from ages 3 through 22. SFUSD offers a continuum of placement options from full inclusion in general education classrooms with support, to specialized day classes, to nonpublic school placements for students with intensive needs. Related services include speech and language therapy, occupational therapy, adapted physical education, counseling, and assistive technology. The district also operates transition programs for young adults aged 18-22.',
  'Provides special education services including IEP development, specialized instruction, and related services for students ages 3-22.',
  'school-district',
  '(415) 241-6085',
  'specialeducation@sfusd.edu',
  'https://www.sfusd.edu/special-education',
  '555 Franklin Street',
  'San Francisco',
  'CA',
  '94102',
  37.7775,
  -122.4213,
  ARRAY['San Francisco'],
  ARRAY['English', 'Spanish', 'Chinese (Cantonese)', 'Chinese (Mandarin)', 'Filipino', 'Vietnamese', 'Arabic'],
  ARRAY['3-5', '6-12', '13-17', '18-22'],
  ARRAY['Autism', 'Intellectual Disability', 'Learning Disability', 'Speech/Language Impairment', 'Emotional Disturbance', 'Other Health Impairment', 'Orthopedic Impairment'],
  ARRAY['Public school (free)', 'IDEA Part B funding'],
  true,
  'none',
  'Monday-Friday 8:00 AM - 4:30 PM (school year), Monday-Friday 8:00 AM - 3:00 PM (summer)',
  true,
  true
),

-- 7. East Bay Innovations
(
  '22222222-2222-2222-2222-222222222207',
  'East Bay Innovations',
  'east-bay-innovations',
  'East Bay Innovations (EBI) is a nonprofit organization that helps people with developmental and other disabilities live independently in the community. EBI provides supported and independent living services, employment training and placement, community integration programs, and person-centered planning. Their approach emphasizes self-determination, inclusion, and empowerment. EBI has been serving the East Bay community for over 30 years and supports hundreds of individuals in achieving their personal goals.',
  'Helps people with disabilities live independently through supported living, employment services, and community programs in the East Bay.',
  'nonprofit',
  '(510) 613-0330',
  'info@eastbayinnovations.org',
  'https://www.eastbayinnovations.org',
  '2450 Washington Avenue, Suite 240',
  'Oakland',
  'CA',
  '94601',
  37.7750,
  -122.2230,
  ARRAY['Oakland', 'Berkeley', 'Fremont', 'Hayward', 'Richmond', 'San Leandro', 'Alameda', 'Union City'],
  ARRAY['English', 'Spanish', 'Chinese (Cantonese)', 'ASL'],
  ARRAY['18-22', '22+'],
  ARRAY['Autism', 'Intellectual Disability', 'Cerebral Palsy', 'Down Syndrome', 'Developmental Delay'],
  ARRAY['Regional Center', 'Department of Rehabilitation', 'Medi-Cal'],
  true,
  'short',
  'Monday-Friday 8:30 AM - 5:00 PM',
  true,
  true
),

-- 8. Ability Now Bay Area
(
  '22222222-2222-2222-2222-222222222208',
  'Ability Now Bay Area',
  'ability-now-bay-area',
  'Ability Now Bay Area provides a comprehensive range of services for adults with developmental disabilities in San Francisco and Alameda counties. Programs include community-based day services, supported employment, social enterprises, recreation and social programs, respite care, and independent living skills training. Their mission is to help people with disabilities lead fulfilling lives in their communities. Ability Now operates multiple program sites and serves over 400 individuals.',
  'Comprehensive day services, employment, recreation, and respite programs for adults with developmental disabilities.',
  'nonprofit',
  '(415) 543-4430',
  'info@abilitynow.org',
  'https://www.abilitynow.org',
  '525 Mission Street, Suite 200',
  'San Francisco',
  'CA',
  '94105',
  37.7879,
  -122.3971,
  ARRAY['San Francisco', 'Oakland', 'Berkeley', 'Daly City', 'South San Francisco', 'Alameda'],
  ARRAY['English', 'Spanish', 'Chinese (Cantonese)', 'ASL'],
  ARRAY['18-22', '22+'],
  ARRAY['Autism', 'Intellectual Disability', 'Cerebral Palsy', 'Down Syndrome', 'Traumatic Brain Injury', 'Developmental Delay'],
  ARRAY['Regional Center', 'Medi-Cal', 'Department of Rehabilitation'],
  true,
  'moderate',
  'Monday-Friday 8:00 AM - 5:00 PM',
  true,
  true
),

-- 9. Silicon Valley Independent Living Center
(
  '22222222-2222-2222-2222-222222222209',
  'Silicon Valley Independent Living Center',
  'silicon-valley-independent-living',
  'Silicon Valley Independent Living Center (SVILC) empowers people with disabilities to live independently and participate fully in community life. SVILC provides peer support, independent living skills training, assistive technology assessments, housing assistance, benefits advocacy, and information and referral services. As a Center for Independent Living, SVILC is run by and for people with disabilities and serves individuals across all disability types and age groups in Santa Clara County.',
  'Peer support, independent living skills, assistive technology, and housing assistance for people with disabilities in Santa Clara County.',
  'nonprofit',
  '(408) 894-9041',
  'info@svilc.org',
  'https://www.svilc.org',
  '25 North 14th Street, Suite 1000',
  'San Jose',
  'CA',
  '95112',
  37.3405,
  -121.8886,
  ARRAY['San Jose', 'Santa Clara', 'Sunnyvale', 'Mountain View', 'Milpitas', 'Campbell', 'Los Gatos', 'Gilroy'],
  ARRAY['English', 'Spanish', 'Vietnamese', 'Chinese (Mandarin)', 'ASL'],
  ARRAY['18-22', '22+'],
  ARRAY['Autism', 'Intellectual Disability', 'Physical Disability', 'Sensory Disability', 'Traumatic Brain Injury', 'Mental Health'],
  ARRAY['Regional Center', 'Department of Rehabilitation', 'Medi-Cal', 'No cost for core services'],
  true,
  'none',
  'Monday-Friday 9:00 AM - 5:00 PM',
  true,
  true
),

-- 10. Bay Area Legal Aid - Disability Rights
(
  '22222222-2222-2222-2222-222222222210',
  'Bay Area Legal Aid - Disability Rights',
  'bay-area-legal-aid-disability',
  'Bay Area Legal Aid is the largest provider of free civil legal services in the Bay Area. Their Disability Rights practice group helps low-income individuals with disabilities navigate legal issues related to special education, access to government benefits, housing discrimination, Regional Center service disputes, and healthcare access. Attorneys and advocates provide direct representation, legal advice, community education, and systemic advocacy. They serve seven Bay Area counties.',
  'Free legal services for low-income individuals with disabilities covering education, benefits, housing, and service access disputes.',
  'nonprofit',
  '(510) 250-5270',
  'disability@baylegal.org',
  'https://www.baylegal.org',
  '1735 Telegraph Avenue',
  'Oakland',
  'CA',
  '94612',
  37.8135,
  -122.2715,
  ARRAY['Oakland', 'San Francisco', 'Berkeley', 'Richmond', 'San Jose', 'Redwood City', 'San Rafael', 'Fremont'],
  ARRAY['English', 'Spanish', 'Chinese (Cantonese)', 'Chinese (Mandarin)', 'Vietnamese', 'Arabic', 'Tigrinya'],
  ARRAY['0-3', '3-5', '6-12', '13-17', '18-22', '22+'],
  ARRAY['Autism', 'Intellectual Disability', 'Learning Disability', 'Physical Disability', 'Mental Health', 'All disabilities'],
  ARRAY['Free (income-qualified)', 'Pro bono'],
  true,
  'short',
  'Monday-Friday 9:00 AM - 5:00 PM',
  true,
  true
),

-- 11. Stanford Children's Health - Developmental Behavioral Pediatrics
(
  '22222222-2222-2222-2222-222222222211',
  'Stanford Children''s Health - Developmental Behavioral Pediatrics',
  'stanford-dev-behavioral',
  'Stanford Children''s Health Developmental Behavioral Pediatrics provides comprehensive diagnostic evaluations and treatment for children with developmental delays, autism spectrum disorder, ADHD, learning disabilities, and behavioral challenges. Their multidisciplinary team includes developmental pediatricians, psychologists, speech-language pathologists, and occupational therapists who work together to provide thorough assessments and evidence-based treatment recommendations. They also participate in research advancing the understanding and treatment of developmental conditions.',
  'Multidisciplinary diagnostic evaluations and treatment for developmental delays, autism, ADHD, and learning disabilities.',
  'hospital',
  '(650) 723-5711',
  'devbehavioral@stanfordchildrens.org',
  'https://www.stanfordchildrens.org',
  '730 Welch Road, Suite 201',
  'Palo Alto',
  'CA',
  '94304',
  37.4323,
  -122.1745,
  ARRAY['Palo Alto', 'Mountain View', 'Menlo Park', 'Redwood City', 'Sunnyvale', 'Los Altos', 'San Jose', 'Fremont'],
  ARRAY['English', 'Spanish', 'Chinese (Mandarin)', 'Hindi', 'Farsi'],
  ARRAY['0-3', '3-5', '6-12', '13-17'],
  ARRAY['Autism', 'ADHD', 'Learning Disability', 'Developmental Delay', 'Intellectual Disability', 'Genetic Conditions'],
  ARRAY['Private Insurance', 'Medi-Cal', 'Blue Cross', 'Aetna', 'United Healthcare', 'Cigna', 'Kaiser (referral)'],
  true,
  'long',
  'Monday-Friday 8:00 AM - 5:00 PM',
  true,
  true
),

-- 12. Toolworks
(
  '22222222-2222-2222-2222-222222222212',
  'Toolworks',
  'toolworks',
  'Toolworks is a San Francisco nonprofit that helps people with disabilities achieve meaningful employment and greater independence. Their programs include job readiness training, supported employment with on-the-job coaching, customized employment, community-based day services, and benefits planning. Toolworks partners with local businesses to create inclusive workplaces and has developed social enterprises that provide real-world work experience. They have been serving the San Francisco community for over 50 years.',
  'Employment training, supported employment, job coaching, and day programs for adults with disabilities in San Francisco.',
  'nonprofit',
  '(415) 252-7160',
  'info@toolworks.org',
  'https://www.toolworks.org',
  '1235 Mission Street',
  'San Francisco',
  'CA',
  '94103',
  37.7756,
  -122.4125,
  ARRAY['San Francisco', 'Daly City', 'South San Francisco'],
  ARRAY['English', 'Spanish', 'Chinese (Cantonese)', 'ASL'],
  ARRAY['18-22', '22+'],
  ARRAY['Autism', 'Intellectual Disability', 'Down Syndrome', 'Cerebral Palsy', 'Developmental Delay', 'Mental Health'],
  ARRAY['Regional Center', 'Department of Rehabilitation', 'Medi-Cal'],
  true,
  'short',
  'Monday-Friday 8:00 AM - 4:30 PM',
  true,
  true
),

-- 13. Community Gatepath
(
  '22222222-2222-2222-2222-222222222213',
  'Community Gatepath',
  'community-gatepath',
  'Community Gatepath has been serving individuals with disabilities and special needs on the San Francisco Peninsula for over 100 years. Their programs span the full lifespan, from early intervention and pediatric therapies to adult employment services and community programs. They offer speech therapy, occupational therapy, physical therapy, early childhood special education, social skills groups, employment training, assistive technology services, and family support programs. Their approach is rooted in the belief that every person deserves the opportunity to reach their full potential.',
  'Lifespan services including pediatric therapies, early intervention, adult employment, and family support on the Peninsula.',
  'nonprofit',
  '(650) 259-8500',
  'info@gatepath.org',
  'https://www.gatepath.org',
  '350 Twin Dolphin Drive, Suite 123',
  'Redwood City',
  'CA',
  '94065',
  37.5327,
  -122.2533,
  ARRAY['Redwood City', 'San Mateo', 'Burlingame', 'Foster City', 'San Carlos', 'Menlo Park', 'Palo Alto', 'Daly City'],
  ARRAY['English', 'Spanish', 'Chinese (Mandarin)', 'Tagalog'],
  ARRAY['0-3', '3-5', '6-12', '13-17', '18-22', '22+'],
  ARRAY['Autism', 'Down Syndrome', 'Cerebral Palsy', 'Developmental Delay', 'Intellectual Disability', 'Learning Disability'],
  ARRAY['Regional Center', 'Private Insurance', 'Medi-Cal', 'School District', 'Self-pay (sliding scale)'],
  true,
  'short',
  'Monday-Friday 8:00 AM - 6:00 PM',
  true,
  true
),

-- 14. Synapse Services
(
  '22222222-2222-2222-2222-222222222214',
  'Synapse Services',
  'synapse-services',
  'Synapse Services is a nonprofit organization in Contra Costa County that provides residential, employment, and community services for adults with developmental disabilities. Their programs include supported living services, independent living support, community-based day programs, job training and supported employment, social and recreation activities, and respite care. Synapse emphasizes person-centered planning and supports individuals in achieving their personal goals for independence, community inclusion, and quality of life.',
  'Residential, employment, and community services for adults with developmental disabilities in Contra Costa County.',
  'nonprofit',
  '(925) 825-0225',
  'info@synapseservices.org',
  'https://www.synapseservices.org',
  '1850 Gateway Boulevard, Suite 140',
  'Concord',
  'CA',
  '94520',
  37.9765,
  -122.0311,
  ARRAY['Concord', 'Walnut Creek', 'Pleasant Hill', 'Martinez', 'Antioch', 'Pittsburg', 'Brentwood', 'Lafayette'],
  ARRAY['English', 'Spanish'],
  ARRAY['18-22', '22+'],
  ARRAY['Autism', 'Intellectual Disability', 'Cerebral Palsy', 'Down Syndrome', 'Developmental Delay'],
  ARRAY['Regional Center', 'Department of Rehabilitation', 'Medi-Cal'],
  true,
  'moderate',
  'Monday-Friday 8:00 AM - 5:00 PM',
  true,
  true
);


-- =============================================================================
-- 3. PROVIDER-SERVICES RELATIONSHIPS (56 records)
-- UUIDs: 33333333-3333-3333-3333-333333333301 through ...356
-- =============================================================================

INSERT INTO provider_services (id, provider_id, service_id, details, is_primary) VALUES

-- Golden Gate Regional Center (6 services)
('33333333-3333-3333-3333-333333333301', '22222222-2222-2222-2222-222222222201', '11111111-1111-1111-1111-111111111102', 'Core Regional Center services including intake, assessment, case management, and Individual Program Plan development for San Francisco, Marin, and San Mateo counties.', true),
('33333333-3333-3333-3333-333333333302', '22222222-2222-2222-2222-222222222201', '11111111-1111-1111-1111-111111111101', 'Early Start program for infants and toddlers with developmental delays or disabilities. Coordinates evaluations and connects families with early intervention providers.', true),
('33333333-3333-3333-3333-333333333303', '22222222-2222-2222-2222-222222222201', '11111111-1111-1111-1111-111111111107', 'Authorizes and coordinates respite care services for families of individuals with developmental disabilities.', false),
('33333333-3333-3333-3333-333333333304', '22222222-2222-2222-2222-222222222201', '11111111-1111-1111-1111-111111111108', 'Funds and coordinates supported employment services through vendored providers.', false),
('33333333-3333-3333-3333-333333333305', '22222222-2222-2222-2222-222222222201', '11111111-1111-1111-1111-111111111109', 'Coordinates supported living services, independent living services, and residential placements.', false),
('33333333-3333-3333-3333-333333333306', '22222222-2222-2222-2222-222222222201', '11111111-1111-1111-1111-111111111115', 'Works with school districts on transition planning and connects transitioning youth with adult service providers.', false),

-- Regional Center of the East Bay (6 services)
('33333333-3333-3333-3333-333333333307', '22222222-2222-2222-2222-222222222202', '11111111-1111-1111-1111-111111111102', 'Core Regional Center services for Alameda and Contra Costa counties including intake, eligibility assessment, and ongoing service coordination.', true),
('33333333-3333-3333-3333-333333333308', '22222222-2222-2222-2222-222222222202', '11111111-1111-1111-1111-111111111101', 'Early Start program coordinating early intervention services for children birth to 3 in Alameda and Contra Costa counties.', true),
('33333333-3333-3333-3333-333333333309', '22222222-2222-2222-2222-222222222202', '11111111-1111-1111-1111-111111111107', 'Authorizes respite care hours based on individual family needs assessment.', false),
('33333333-3333-3333-3333-333333333310', '22222222-2222-2222-2222-222222222202', '11111111-1111-1111-1111-111111111108', 'Coordinates employment services including supported employment and job coaching through vendored providers.', false),
('33333333-3333-3333-3333-333333333311', '22222222-2222-2222-2222-222222222202', '11111111-1111-1111-1111-111111111110', 'Funds transportation to day programs, employment, and medical appointments for eligible consumers.', false),
('33333333-3333-3333-3333-333333333312', '22222222-2222-2222-2222-222222222202', '11111111-1111-1111-1111-111111111109', 'Coordinates housing services including supported living and independent living support.', false),

-- San Andreas Regional Center (6 services)
('33333333-3333-3333-3333-333333333313', '22222222-2222-2222-2222-222222222203', '11111111-1111-1111-1111-111111111102', 'Core Regional Center services for Santa Clara, Santa Cruz, Monterey, and San Benito counties.', true),
('33333333-3333-3333-3333-333333333314', '22222222-2222-2222-2222-222222222203', '11111111-1111-1111-1111-111111111101', 'Early Start program for the South Bay and Central Coast regions.', true),
('33333333-3333-3333-3333-333333333315', '22222222-2222-2222-2222-222222222203', '11111111-1111-1111-1111-111111111107', 'Respite care coordination for families in Santa Clara and surrounding counties.', false),
('33333333-3333-3333-3333-333333333316', '22222222-2222-2222-2222-222222222203', '11111111-1111-1111-1111-111111111108', 'Employment services coordination including partnerships with local employers.', false),
('33333333-3333-3333-3333-333333333317', '22222222-2222-2222-2222-222222222203', '11111111-1111-1111-1111-111111111112', 'Assistive technology assessments and device funding for consumers.', false),
('33333333-3333-3333-3333-333333333318', '22222222-2222-2222-2222-222222222203', '11111111-1111-1111-1111-111111111115', 'Transition planning coordination for youth aging out of school services.', false),

-- Bay Area Autism Services (5 services)
('33333333-3333-3333-3333-333333333319', '22222222-2222-2222-2222-222222222204', '11111111-1111-1111-1111-111111111106', 'Comprehensive ABA therapy programs including early intensive behavioral intervention, school readiness, and community skills. Both home-based and center-based options available.', true),
('33333333-3333-3333-3333-333333333320', '22222222-2222-2222-2222-222222222204', '11111111-1111-1111-1111-111111111104', 'Speech and language therapy with SLPs who specialize in autism, including AAC evaluations and training.', false),
('33333333-3333-3333-3333-333333333321', '22222222-2222-2222-2222-222222222204', '11111111-1111-1111-1111-111111111111', 'Social skills groups and community recreation activities for children and young adults with autism.', true),
('33333333-3333-3333-3333-333333333322', '22222222-2222-2222-2222-222222222204', '11111111-1111-1111-1111-111111111114', 'Parent support groups and training workshops for families of individuals with autism.', false),
('33333333-3333-3333-3333-333333333323', '22222222-2222-2222-2222-222222222204', '11111111-1111-1111-1111-111111111101', 'Early intervention ABA services for toddlers showing early signs of autism.', false),

-- Pacific Behavioral Health (4 services)
('33333333-3333-3333-3333-333333333324', '22222222-2222-2222-2222-222222222205', '11111111-1111-1111-1111-111111111106', 'ABA therapy for children ages 2-17, offering both clinic-based and in-home sessions with individualized treatment plans.', true),
('33333333-3333-3333-3333-333333333325', '22222222-2222-2222-2222-222222222205', '11111111-1111-1111-1111-111111111104', 'Speech-language therapy integrated with behavioral services for a comprehensive approach to communication development.', false),
('33333333-3333-3333-3333-333333333326', '22222222-2222-2222-2222-222222222205', '11111111-1111-1111-1111-111111111105', 'Occupational therapy focusing on sensory integration, fine motor skills, and daily living skills.', true),
('33333333-3333-3333-3333-333333333327', '22222222-2222-2222-2222-222222222205', '11111111-1111-1111-1111-111111111111', 'Structured social skills groups for children organized by age and skill level.', false),

-- SF Unified School District - Special Ed (4 services)
('33333333-3333-3333-3333-333333333328', '22222222-2222-2222-2222-222222222206', '11111111-1111-1111-1111-111111111103', 'Full continuum of special education services from inclusion support to specialized day classes across all SFUSD schools.', true),
('33333333-3333-3333-3333-333333333329', '22222222-2222-2222-2222-222222222206', '11111111-1111-1111-1111-111111111104', 'School-based speech and language therapy as a related service within the IEP.', false),
('33333333-3333-3333-3333-333333333330', '22222222-2222-2222-2222-222222222206', '11111111-1111-1111-1111-111111111105', 'School-based occupational therapy addressing fine motor, sensory, and functional skills within the educational setting.', false),
('33333333-3333-3333-3333-333333333331', '22222222-2222-2222-2222-222222222206', '11111111-1111-1111-1111-111111111115', 'Transition programs for students ages 18-22, including community-based instruction, vocational training, and independent living skills.', true),

-- East Bay Innovations (4 services)
('33333333-3333-3333-3333-333333333332', '22222222-2222-2222-2222-222222222207', '11111111-1111-1111-1111-111111111109', 'Supported living services and independent living skills training in the individual''s own home or apartment.', true),
('33333333-3333-3333-3333-333333333333', '22222222-2222-2222-2222-222222222207', '11111111-1111-1111-1111-111111111108', 'Supported employment and job coaching including job development, placement, and ongoing worksite support.', true),
('33333333-3333-3333-3333-333333333334', '22222222-2222-2222-2222-222222222207', '11111111-1111-1111-1111-111111111111', 'Community integration and social recreation programs including outings, classes, and community volunteering.', false),
('33333333-3333-3333-3333-333333333335', '22222222-2222-2222-2222-222222222207', '11111111-1111-1111-1111-111111111115', 'Transition support for young adults moving from school to adult services and independent community living.', false),

-- Ability Now Bay Area (5 services)
('33333333-3333-3333-3333-333333333336', '22222222-2222-2222-2222-222222222208', '11111111-1111-1111-1111-111111111108', 'Supported employment, customized employment, and social enterprise work opportunities.', true),
('33333333-3333-3333-3333-333333333337', '22222222-2222-2222-2222-222222222208', '11111111-1111-1111-1111-111111111111', 'Community-based day services, recreation programs, art classes, and social activities.', true),
('33333333-3333-3333-3333-333333333338', '22222222-2222-2222-2222-222222222208', '11111111-1111-1111-1111-111111111107', 'Respite care services including after-hours and weekend options.', false),
('33333333-3333-3333-3333-333333333339', '22222222-2222-2222-2222-222222222208', '11111111-1111-1111-1111-111111111109', 'Independent living skills training and supported living coordination.', false),
('33333333-3333-3333-3333-333333333340', '22222222-2222-2222-2222-222222222208', '11111111-1111-1111-1111-111111111110', 'Transportation to and from day program sites and employment locations.', false),

-- Silicon Valley Independent Living Center (4 services)
('33333333-3333-3333-3333-333333333341', '22222222-2222-2222-2222-222222222209', '11111111-1111-1111-1111-111111111109', 'Housing assistance including accessible housing searches, Section 8 application help, and tenant rights advocacy.', true),
('33333333-3333-3333-3333-333333333342', '22222222-2222-2222-2222-222222222209', '11111111-1111-1111-1111-111111111112', 'Assistive technology assessments, demonstrations, and assistance accessing funding for devices.', true),
('33333333-3333-3333-3333-333333333343', '22222222-2222-2222-2222-222222222209', '11111111-1111-1111-1111-111111111113', 'Benefits advocacy and assistance with Social Security applications, appeals, and fair hearing requests.', false),
('33333333-3333-3333-3333-333333333344', '22222222-2222-2222-2222-222222222209', '11111111-1111-1111-1111-111111111114', 'Peer support groups and independent living skills workshops led by people with disabilities.', false),

-- Bay Area Legal Aid - Disability Rights (3 services)
('33333333-3333-3333-3333-333333333345', '22222222-2222-2222-2222-222222222210', '11111111-1111-1111-1111-111111111113', 'Free legal representation for disability-related issues including special education, benefits, housing discrimination, and Regional Center disputes.', true),
('33333333-3333-3333-3333-333333333346', '22222222-2222-2222-2222-222222222210', '11111111-1111-1111-1111-111111111103', 'Legal advocacy for special education matters including IEP disputes, denial of services, and disciplinary issues.', true),
('33333333-3333-3333-3333-333333333347', '22222222-2222-2222-2222-222222222210', '11111111-1111-1111-1111-111111111114', 'Community education workshops on disability rights, special education law, and self-advocacy skills.', false),

-- Stanford Children's Health (4 services)
('33333333-3333-3333-3333-333333333348', '22222222-2222-2222-2222-222222222211', '11111111-1111-1111-1111-111111111106', 'Comprehensive behavioral assessments and treatment planning for children with autism and behavioral challenges.', true),
('33333333-3333-3333-3333-333333333349', '22222222-2222-2222-2222-222222222211', '11111111-1111-1111-1111-111111111104', 'Speech-language evaluations and therapy provided by pediatric SLPs within the developmental behavioral clinic.', false),
('33333333-3333-3333-3333-333333333350', '22222222-2222-2222-2222-222222222211', '11111111-1111-1111-1111-111111111105', 'Occupational therapy evaluations and treatment for sensory processing, fine motor, and adaptive skills.', true),
('33333333-3333-3333-3333-333333333351', '22222222-2222-2222-2222-222222222211', '11111111-1111-1111-1111-111111111101', 'Developmental assessments for infants and toddlers with suspected delays, with referrals to early intervention services.', false),

-- Toolworks (3 services)
('33333333-3333-3333-3333-333333333352', '22222222-2222-2222-2222-222222222212', '11111111-1111-1111-1111-111111111108', 'Job readiness training, supported employment, customized employment, and benefits planning for adults with disabilities.', true),
('33333333-3333-3333-3333-333333333353', '22222222-2222-2222-2222-222222222212', '11111111-1111-1111-1111-111111111115', 'Transition support for young adults including career exploration, job skills development, and connection to adult services.', true),
('33333333-3333-3333-3333-333333333354', '22222222-2222-2222-2222-222222222212', '11111111-1111-1111-1111-111111111111', 'Community-based day program activities including volunteering, classes, and social events.', false),

-- Community Gatepath (5 services)
('33333333-3333-3333-3333-333333333355', '22222222-2222-2222-2222-222222222213', '11111111-1111-1111-1111-111111111101', 'Early intervention services including developmental evaluations, early childhood special education, and family support for children birth to 3.', true),
('33333333-3333-3333-3333-333333333356', '22222222-2222-2222-2222-222222222213', '11111111-1111-1111-1111-111111111104', 'Pediatric speech-language therapy using evidence-based approaches for a range of communication challenges.', true),
('33333333-3333-3333-3333-333333333357', '22222222-2222-2222-2222-222222222213', '11111111-1111-1111-1111-111111111105', 'Pediatric occupational therapy addressing sensory processing, fine motor development, and self-care skills.', false),
('33333333-3333-3333-3333-333333333358', '22222222-2222-2222-2222-222222222213', '11111111-1111-1111-1111-111111111108', 'Adult employment services including vocational training, job placement, and ongoing job coaching.', false),
('33333333-3333-3333-3333-333333333359', '22222222-2222-2222-2222-222222222213', '11111111-1111-1111-1111-111111111114', 'Family resource center offering parent support groups, workshops, and information and referral services.', false),

-- Synapse Services (4 services)
('33333333-3333-3333-3333-333333333360', '22222222-2222-2222-2222-222222222214', '11111111-1111-1111-1111-111111111109', 'Supported living and residential services ranging from 24-hour care to independent living with periodic support.', true),
('33333333-3333-3333-3333-333333333361', '22222222-2222-2222-2222-222222222214', '11111111-1111-1111-1111-111111111108', 'Supported employment and job coaching for adults in Contra Costa County.', true),
('33333333-3333-3333-3333-333333333362', '22222222-2222-2222-2222-222222222214', '11111111-1111-1111-1111-111111111111', 'Day programs and social recreation activities including community outings and skill-building classes.', false),
('33333333-3333-3333-3333-333333333363', '22222222-2222-2222-2222-222222222214', '11111111-1111-1111-1111-111111111107', 'Respite care for families in Contra Costa County including in-home and facility-based options.', false);


-- =============================================================================
-- 4. EXPERIENCE REPORTS (10 records, all status='approved')
-- UUIDs: 44444444-4444-4444-4444-444444444401 through ...410
-- =============================================================================

INSERT INTO experience_reports (id, provider_id, service_id, rating, experience_text, service_date, wait_time_weeks, staff_helpfulness, accessibility_rating, would_recommend, status) VALUES

(
  '44444444-4444-4444-4444-444444444401',
  '22222222-2222-2222-2222-222222222201', -- Golden Gate Regional Center
  '11111111-1111-1111-1111-111111111102', -- Regional Center Services
  4,
  'Our service coordinator at GGRC has been really helpful in connecting us with the right providers for our son. The intake process took a while, but once we were in the system, things moved along. They helped us set up respite care and find an ABA provider. I wish the caseload was smaller so our coordinator had more time for us, but overall a positive experience.',
  '2025-08-15',
  8,
  4,
  4,
  true,
  'approved'
),

(
  '44444444-4444-4444-4444-444444444402',
  '22222222-2222-2222-2222-222222222201', -- Golden Gate Regional Center
  '11111111-1111-1111-1111-111111111101', -- Early Intervention
  5,
  'We were so worried when our daughter was not meeting her milestones, but GGRC got us into the Early Start program quickly. The evaluation was thorough and respectful, and they connected us with an amazing speech therapist who comes to our home. Our daughter has made incredible progress in just six months. I am so grateful we did not wait longer to reach out.',
  '2025-11-02',
  3,
  5,
  5,
  true,
  'approved'
),

(
  '44444444-4444-4444-4444-444444444403',
  '22222222-2222-2222-2222-222222222204', -- Bay Area Autism Services
  '11111111-1111-1111-1111-111111111106', -- Behavioral Health / ABA
  4,
  'The ABA program here has been great for our 5 year old. His therapists are patient, creative, and genuinely care about his progress. The BCBA does a good job adjusting the plan as he grows. The only drawback was the 3-month wait to get started, which is pretty standard in the Bay Area. Worth the wait though.',
  '2025-09-20',
  12,
  5,
  4,
  true,
  'approved'
),

(
  '44444444-4444-4444-4444-444444444404',
  '22222222-2222-2222-2222-222222222207', -- East Bay Innovations
  '11111111-1111-1111-1111-111111111108', -- Employment Services
  5,
  'East Bay Innovations helped my adult son find a job at a local grocery store and provided a job coach for the first three months. The coach was fantastic and really helped him learn the routines and social expectations. He has been working there for over a year now and loves it. This program changed his life and gave him so much confidence.',
  '2025-06-10',
  4,
  5,
  5,
  true,
  'approved'
),

(
  '44444444-4444-4444-4444-444444444405',
  '22222222-2222-2222-2222-222222222210', -- Bay Area Legal Aid
  '11111111-1111-1111-1111-111111111113', -- Legal Advocacy
  5,
  'Bay Area Legal Aid was a lifesaver when our school district was refusing to provide the services in our daughter''s IEP. The attorney was knowledgeable, responsive, and made us feel like we were not alone. They represented us at the resolution session and the district agreed to provide everything. I cannot recommend them enough for special education issues.',
  '2025-10-05',
  2,
  5,
  4,
  true,
  'approved'
),

(
  '44444444-4444-4444-4444-444444444406',
  '22222222-2222-2222-2222-222222222213', -- Community Gatepath
  '11111111-1111-1111-1111-111111111104', -- Speech Therapy
  4,
  'We have been taking our son to Gatepath for speech therapy for about a year. His SLP is excellent and uses a variety of approaches to keep him engaged. She also taught us strategies to use at home which made a big difference. The scheduling is flexible and the front desk staff are always friendly and accommodating.',
  '2025-07-22',
  3,
  4,
  5,
  true,
  'approved'
),

(
  '44444444-4444-4444-4444-444444444407',
  '22222222-2222-2222-2222-222222222211', -- Stanford Children's Health
  '11111111-1111-1111-1111-111111111106', -- Behavioral Health
  3,
  'The evaluation at Stanford was extremely thorough and the team was very professional. The report we received was detailed and helpful for getting services set up. However, the wait for an appointment was about 5 months, and the follow-up process could be better. If you need answers and a clear diagnosis, Stanford is excellent, just be prepared to wait.',
  '2025-04-18',
  20,
  4,
  4,
  true,
  'approved'
),

(
  '44444444-4444-4444-4444-444444444408',
  '22222222-2222-2222-2222-222222222212', -- Toolworks
  '11111111-1111-1111-1111-111111111108', -- Employment Services
  4,
  'Toolworks has a well-structured job training program. My brother went through their cafe training program and learned real job skills in a supportive environment. The staff treated him with dignity and helped him build confidence. He is now working part-time at a restaurant. The transition from training to employment was smooth and well-supported.',
  '2025-12-01',
  6,
  4,
  4,
  true,
  'approved'
),

(
  '44444444-4444-4444-4444-444444444409',
  '22222222-2222-2222-2222-222222222209', -- Silicon Valley Independent Living Center
  '11111111-1111-1111-1111-111111111112', -- Assistive Technology
  4,
  'SVILC did a great assistive technology assessment for my son and helped us try out several communication devices before choosing one. They also helped us figure out funding through insurance. The staff are knowledgeable and patient. It took a couple of visits to find the right fit, but the ability to test devices before committing was really valuable.',
  '2025-05-30',
  3,
  4,
  5,
  true,
  'approved'
),

(
  '44444444-4444-4444-4444-444444444410',
  '22222222-2222-2222-2222-222222222214', -- Synapse Services
  '11111111-1111-1111-1111-111111111109', -- Supported Housing
  4,
  'Synapse has been providing supported living services for my daughter for two years now. The staff who come to help her are reliable and respectful of her independence. They helped her learn to cook simple meals, manage her schedule, and use transit. There was some initial staff turnover, but the current team has been consistent. She is thriving in her apartment.',
  '2025-09-12',
  8,
  4,
  4,
  true,
  'approved'
);


-- =============================================================================
-- 5. PROVIDER EXPERIENCE SUMMARIES
-- UUIDs: 55555555-5555-5555-5555-555555555501 through ...508
-- Pre-computed averages matching the experience reports above.
-- =============================================================================

INSERT INTO provider_experience_summaries (id, provider_id, total_reviews, average_rating, average_wait_weeks, average_staff_helpfulness, average_accessibility, recommendation_rate, summary_text) VALUES

-- Golden Gate Regional Center: 2 reviews (ratings 4, 5; waits 8, 3; staff 4, 5; access 4, 5)
(
  '55555555-5555-5555-5555-555555555501',
  '22222222-2222-2222-2222-222222222201',
  2,
  4.50,
  5.50,
  4.50,
  4.50,
  100.00,
  'Families report positive experiences with GGRC, highlighting responsive service coordinators and effective Early Start services. Wait times vary but the intake process is generally smooth.'
),

-- Bay Area Autism Services: 1 review (rating 4; wait 12; staff 5; access 4)
(
  '55555555-5555-5555-5555-555555555502',
  '22222222-2222-2222-2222-222222222204',
  1,
  4.00,
  12.00,
  5.00,
  4.00,
  100.00,
  'Families praise the quality of ABA therapy and the dedication of the clinical staff. Waitlist times are significant but consistent with Bay Area averages for ABA services.'
),

-- East Bay Innovations: 1 review (rating 5; wait 4; staff 5; access 5)
(
  '55555555-5555-5555-5555-555555555503',
  '22222222-2222-2222-2222-222222222207',
  1,
  5.00,
  4.00,
  5.00,
  5.00,
  100.00,
  'Highly rated employment program with effective job coaching and strong ongoing support. Families report life-changing outcomes for adults with developmental disabilities.'
),

-- Bay Area Legal Aid: 1 review (rating 5; wait 2; staff 5; access 4)
(
  '55555555-5555-5555-5555-555555555504',
  '22222222-2222-2222-2222-222222222210',
  1,
  5.00,
  2.00,
  5.00,
  4.00,
  100.00,
  'Families describe responsive, knowledgeable attorneys who provide effective representation for special education and disability rights issues. Short wait times for initial consultations.'
),

-- Community Gatepath: 1 review (rating 4; wait 3; staff 4; access 5)
(
  '55555555-5555-5555-5555-555555555505',
  '22222222-2222-2222-2222-222222222213',
  1,
  4.00,
  3.00,
  4.00,
  5.00,
  100.00,
  'Families appreciate the skilled therapists and flexible scheduling. Therapy approaches are individualized and include parent coaching for home practice.'
),

-- Stanford Children's Health: 1 review (rating 3; wait 20; staff 4; access 4)
(
  '55555555-5555-5555-5555-555555555506',
  '22222222-2222-2222-2222-222222222211',
  1,
  3.00,
  20.00,
  4.00,
  4.00,
  100.00,
  'Thorough and professional diagnostic evaluations with detailed reports. However, wait times for appointments are lengthy. Best for families seeking comprehensive assessments who can plan ahead.'
),

-- Toolworks: 1 review (rating 4; wait 6; staff 4; access 4)
(
  '55555555-5555-5555-5555-555555555507',
  '22222222-2222-2222-2222-222222222212',
  1,
  4.00,
  6.00,
  4.00,
  4.00,
  100.00,
  'Well-structured job training programs that build real skills and confidence. Staff are supportive and the transition from training to employment is well managed.'
),

-- Silicon Valley Independent Living Center: 1 review (rating 4; wait 3; staff 4; access 5)
(
  '55555555-5555-5555-5555-555555555508',
  '22222222-2222-2222-2222-222222222209',
  1,
  4.00,
  3.00,
  4.00,
  5.00,
  100.00,
  'Excellent assistive technology program with hands-on device trials and knowledgeable staff. Good support for navigating funding options for devices.'
),

-- Synapse Services: 1 review (rating 4; wait 8; staff 4; access 4)
(
  '55555555-5555-5555-5555-555555555509',
  '22222222-2222-2222-2222-222222222214',
  1,
  4.00,
  8.00,
  4.00,
  4.00,
  100.00,
  'Reliable supported living services that help individuals build independence. Some initial staff turnover but current teams are consistent and respectful of client autonomy.'
);

COMMIT;
