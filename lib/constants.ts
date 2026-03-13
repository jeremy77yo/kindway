export const NAV_ITEMS = [
  { href: "/", label: "Home", icon: "Home" },
  { href: "/services", label: "Services", icon: "Compass" },
  { href: "/providers", label: "Providers", icon: "Building2" },
  { href: "/next-steps", label: "Next Steps", icon: "ListChecks" },
  { href: "/community", label: "Community", icon: "Users" },
] as const;

export const SERVICE_CATEGORY_ICONS: Record<string, string> = {
  "early-intervention": "Baby",
  "regional-center": "Landmark",
  "special-education": "GraduationCap",
  "therapy-services": "Heart",
  "respite-care": "HandHeart",
  "behavioral-health": "Brain",
  "employment": "Briefcase",
  "housing": "Home",
  "transportation": "Car",
  "recreation": "Smile",
  "assistive-technology": "Laptop",
  "legal-advocacy": "Scale",
  "family-support": "Users",
  "healthcare": "Stethoscope",
  "transition-services": "ArrowRightCircle",
};

export const AGE_GROUPS: { value: string; label: string }[] = [
  { value: "0-3", label: "Birth to 3" },
  { value: "3-5", label: "Preschool (3-5)" },
  { value: "6-12", label: "School Age (6-12)" },
  { value: "13-17", label: "Teens (13-17)" },
  { value: "18-21", label: "Transition (18-21)" },
  { value: "22+", label: "Adults (22+)" },
];

export const FUNDING_OPTIONS: { value: string; label: string }[] = [
  { value: "regional-center", label: "Regional Center" },
  { value: "medi-cal", label: "Medi-Cal" },
  { value: "medicare", label: "Medicare" },
  { value: "private-insurance", label: "Private Insurance" },
  { value: "self-pay", label: "Self-Pay" },
  { value: "free", label: "Free" },
  { value: "sliding-scale", label: "Sliding Scale" },
];

export const LANGUAGES: { value: string; label: string }[] = [
  { value: "english", label: "English" },
  { value: "spanish", label: "Spanish" },
  { value: "chinese", label: "Chinese" },
  { value: "vietnamese", label: "Vietnamese" },
  { value: "tagalog", label: "Tagalog" },
  { value: "korean", label: "Korean" },
  { value: "russian", label: "Russian" },
  { value: "asl", label: "ASL" },
];

export const DISABILITY_POPULATIONS: { value: string; label: string }[] = [
  { value: "autism", label: "Autism Spectrum" },
  { value: "intellectual", label: "Intellectual Disability" },
  { value: "cerebral-palsy", label: "Cerebral Palsy" },
  { value: "down-syndrome", label: "Down Syndrome" },
  { value: "epilepsy", label: "Epilepsy" },
  { value: "developmental-delay", label: "Developmental Delay" },
  { value: "physical", label: "Physical Disability" },
  { value: "sensory", label: "Sensory Disability" },
  { value: "learning", label: "Learning Disability" },
  { value: "multiple", label: "Multiple Disabilities" },
];

export const WAITLIST_OPTIONS: { value: string; label: string }[] = [
  { value: "none", label: "No Waitlist" },
  { value: "short", label: "Short Wait (< 1 month)" },
  { value: "moderate", label: "Moderate Wait (1-3 months)" },
  { value: "long", label: "Long Wait (3+ months)" },
];

export const BAY_AREA_CITIES: { value: string; label: string }[] = [
  { value: "San Francisco", label: "San Francisco" },
  { value: "Oakland", label: "Oakland" },
  { value: "San Jose", label: "San Jose" },
  { value: "Berkeley", label: "Berkeley" },
  { value: "Fremont", label: "Fremont" },
  { value: "Hayward", label: "Hayward" },
  { value: "Redwood City", label: "Redwood City" },
  { value: "Palo Alto", label: "Palo Alto" },
  { value: "Santa Clara", label: "Santa Clara" },
  { value: "Concord", label: "Concord" },
  { value: "Richmond", label: "Richmond" },
  { value: "San Mateo", label: "San Mateo" },
];

export const PROVIDER_TYPES: { value: string; label: string }[] = [
  { value: "regional-center", label: "Regional Center" },
  { value: "nonprofit", label: "Nonprofit Organization" },
  { value: "government", label: "Government Agency" },
  { value: "private-practice", label: "Private Practice" },
  { value: "school-district", label: "School District" },
  { value: "hospital", label: "Hospital / Health System" },
];
