"use client";

import { useState } from "react";
import { CheckCircle, Loader2 } from "lucide-react";
import { cn } from "@/lib/utils";
import { Button } from "@/components/ui/button";
import {
  AGE_GROUPS,
  FUNDING_OPTIONS,
  LANGUAGES,
  PROVIDER_TYPES,
} from "@/lib/constants";

const SERVICE_TYPES = [
  { value: "respite-care", label: "Respite Care" },
  { value: "day-programs", label: "Day Programs" },
  { value: "independent-living", label: "Independent Living Services (ILS)" },
  { value: "behavioral-health", label: "Behavioral Health" },
  { value: "speech-language", label: "Speech & Language" },
  { value: "occupational-therapy", label: "Occupational Therapy" },
  { value: "physical-therapy", label: "Physical Therapy" },
  { value: "early-intervention", label: "Early Intervention" },
  { value: "special-education", label: "Special Education" },
  { value: "employment", label: "Employment Services" },
  { value: "housing", label: "Housing / Supported Living" },
  { value: "transportation", label: "Transportation" },
  { value: "recreation", label: "Recreation / Social" },
  { value: "assistive-technology", label: "Assistive Technology" },
  { value: "family-support", label: "Family Support" },
  { value: "case-management", label: "Case Management" },
];

function CheckboxGroup({
  label,
  options,
  selected,
  onChange,
  id,
}: {
  label: string;
  options: { value: string; label: string }[];
  selected: string[];
  onChange: (values: string[]) => void;
  id: string;
}) {
  function toggle(value: string) {
    if (selected.includes(value)) {
      onChange(selected.filter((v) => v !== value));
    } else {
      onChange([...selected, value]);
    }
  }

  return (
    <fieldset>
      <legend className="mb-2 text-sm font-semibold text-foreground">
        {label}
      </legend>
      <div className="flex flex-wrap gap-2">
        {options.map((opt) => (
          <label
            key={opt.value}
            className={cn(
              "flex h-11 cursor-pointer items-center gap-2 rounded-xl border-2 px-4 text-sm font-medium transition-colors",
              "focus-within:ring-2 focus-within:ring-primary focus-within:ring-offset-2",
              selected.includes(opt.value)
                ? "border-primary bg-primary/10 text-primary"
                : "border-border text-muted-foreground hover:border-primary/30"
            )}
          >
            <input
              type="checkbox"
              className="sr-only"
              name={id}
              value={opt.value}
              checked={selected.includes(opt.value)}
              onChange={() => toggle(opt.value)}
            />
            {opt.label}
          </label>
        ))}
      </div>
    </fieldset>
  );
}

export function SubmitAgencyForm() {
  // Form fields
  const [name, setName] = useState("");
  const [contactPerson, setContactPerson] = useState("");
  const [email, setEmail] = useState("");
  const [phone, setPhone] = useState("");
  const [website, setWebsite] = useState("");
  const [streetAddress, setStreetAddress] = useState("");
  const [city, setCity] = useState("");
  const [state, setState] = useState("CA");
  const [zipCode, setZipCode] = useState("");
  const [providerType, setProviderType] = useState("");
  const [description, setDescription] = useState("");
  const [serviceTypes, setServiceTypes] = useState<string[]>([]);
  const [languages, setLanguages] = useState<string[]>([]);
  const [ageGroups, setAgeGroups] = useState<string[]>([]);
  const [fundingAccepted, setFundingAccepted] = useState<string[]>([]);

  // Form state
  const [errors, setErrors] = useState<Record<string, string>>({});
  const [submitting, setSubmitting] = useState(false);
  const [submitted, setSubmitted] = useState(false);
  const [submitError, setSubmitError] = useState("");

  function validate(): Record<string, string> {
    const errs: Record<string, string> = {};

    if (!name.trim()) errs.name = "Agency name is required.";
    if (!contactPerson.trim())
      errs.contactPerson = "Contact person name is required.";
    if (!email.trim()) {
      errs.email = "Email is required.";
    } else if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email.trim())) {
      errs.email = "Please enter a valid email address.";
    }
    if (!phone.trim()) {
      errs.phone = "Phone number is required.";
    }
    if (!description.trim()) {
      errs.description = "Description of services is required.";
    } else if (description.trim().length < 20) {
      errs.description = "Please write at least 20 characters.";
    }

    return errs;
  }

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    setSubmitError("");

    const errs = validate();
    setErrors(errs);
    if (Object.keys(errs).length > 0) return;

    setSubmitting(true);

    try {
      const body = {
        name: name.trim(),
        contact_person: contactPerson.trim(),
        email: email.trim(),
        phone: phone.trim(),
        website: website.trim() || null,
        street_address: streetAddress.trim() || null,
        city: city.trim() || null,
        state: state.trim() || null,
        zip_code: zipCode.trim() || null,
        provider_type: providerType || null,
        description: description.trim(),
        service_types: serviceTypes,
        languages,
        age_groups_served: ageGroups,
        funding_accepted: fundingAccepted,
      };

      const res = await fetch("/api/submit-agency", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(body),
      });

      if (!res.ok) {
        const data = await res.json().catch(() => ({}));
        throw new Error(
          data.error || "Something went wrong. Please try again."
        );
      }

      setSubmitted(true);
    } catch (err) {
      setSubmitError(
        err instanceof Error
          ? err.message
          : "Something went wrong. Please try again."
      );
    } finally {
      setSubmitting(false);
    }
  }

  if (submitted) {
    return (
      <div className="rounded-2xl border border-success/30 bg-success/5 p-6 text-center">
        <CheckCircle
          className="mx-auto h-10 w-10 text-success"
          aria-hidden="true"
        />
        <h3 className="mt-3 text-lg font-semibold text-foreground">
          Thank you for submitting your agency!
        </h3>
        <p className="mt-2 text-sm text-muted-foreground leading-relaxed">
          Your agency will be reviewed and listed within 48 hours.
        </p>
      </div>
    );
  }

  const inputClass = (field: string) =>
    cn(
      "h-12 w-full rounded-xl border-2 bg-white px-4 text-base transition-colors focus:outline-none",
      errors[field]
        ? "border-destructive focus:border-destructive focus:ring-2 focus:ring-destructive/30"
        : "border-border focus:border-primary focus:ring-2 focus:ring-primary/30",
      "disabled:cursor-not-allowed disabled:opacity-50"
    );

  return (
    <form onSubmit={handleSubmit} noValidate className="space-y-6">
      {/* Agency Name */}
      <div className="flex flex-col gap-1.5">
        <label
          htmlFor="agency-name"
          className="text-sm font-semibold text-foreground"
        >
          Agency Name <span className="text-destructive">*</span>
        </label>
        <input
          id="agency-name"
          type="text"
          value={name}
          onChange={(e) => setName(e.target.value)}
          placeholder="e.g. Bay Area Respite Services"
          aria-invalid={errors.name ? true : undefined}
          className={inputClass("name")}
        />
        {errors.name && (
          <p role="alert" className="text-sm font-medium text-destructive">
            {errors.name}
          </p>
        )}
      </div>

      {/* Contact Person */}
      <div className="flex flex-col gap-1.5">
        <label
          htmlFor="contact-person"
          className="text-sm font-semibold text-foreground"
        >
          Contact Person <span className="text-destructive">*</span>
        </label>
        <input
          id="contact-person"
          type="text"
          value={contactPerson}
          onChange={(e) => setContactPerson(e.target.value)}
          placeholder="Full name"
          aria-invalid={errors.contactPerson ? true : undefined}
          className={inputClass("contactPerson")}
        />
        {errors.contactPerson && (
          <p role="alert" className="text-sm font-medium text-destructive">
            {errors.contactPerson}
          </p>
        )}
      </div>

      {/* Email & Phone */}
      <div className="grid gap-4 sm:grid-cols-2">
        <div className="flex flex-col gap-1.5">
          <label
            htmlFor="agency-email"
            className="text-sm font-semibold text-foreground"
          >
            Email <span className="text-destructive">*</span>
          </label>
          <input
            id="agency-email"
            type="email"
            value={email}
            onChange={(e) => setEmail(e.target.value)}
            placeholder="contact@example.com"
            aria-invalid={errors.email ? true : undefined}
            className={inputClass("email")}
          />
          {errors.email && (
            <p role="alert" className="text-sm font-medium text-destructive">
              {errors.email}
            </p>
          )}
        </div>
        <div className="flex flex-col gap-1.5">
          <label
            htmlFor="agency-phone"
            className="text-sm font-semibold text-foreground"
          >
            Phone <span className="text-destructive">*</span>
          </label>
          <input
            id="agency-phone"
            type="tel"
            value={phone}
            onChange={(e) => setPhone(e.target.value)}
            placeholder="(510) 555-0100"
            aria-invalid={errors.phone ? true : undefined}
            className={inputClass("phone")}
          />
          {errors.phone && (
            <p role="alert" className="text-sm font-medium text-destructive">
              {errors.phone}
            </p>
          )}
        </div>
      </div>

      {/* Website */}
      <div className="flex flex-col gap-1.5">
        <label
          htmlFor="agency-website"
          className="text-sm font-semibold text-foreground"
        >
          Website
        </label>
        <input
          id="agency-website"
          type="url"
          value={website}
          onChange={(e) => setWebsite(e.target.value)}
          placeholder="https://www.example.com"
          className={inputClass("website")}
        />
      </div>

      {/* Address */}
      <div className="space-y-4">
        <h3 className="text-sm font-semibold text-foreground">Address</h3>
        <div className="flex flex-col gap-1.5">
          <label htmlFor="street-address" className="sr-only">
            Street Address
          </label>
          <input
            id="street-address"
            type="text"
            value={streetAddress}
            onChange={(e) => setStreetAddress(e.target.value)}
            placeholder="Street address"
            className={inputClass("streetAddress")}
          />
        </div>
        <div className="grid gap-4 sm:grid-cols-3">
          <div className="flex flex-col gap-1.5">
            <label htmlFor="city" className="sr-only">
              City
            </label>
            <input
              id="city"
              type="text"
              value={city}
              onChange={(e) => setCity(e.target.value)}
              placeholder="City"
              className={inputClass("city")}
            />
          </div>
          <div className="flex flex-col gap-1.5">
            <label htmlFor="state" className="sr-only">
              State
            </label>
            <input
              id="state"
              type="text"
              value={state}
              onChange={(e) => setState(e.target.value)}
              placeholder="State"
              className={inputClass("state")}
            />
          </div>
          <div className="flex flex-col gap-1.5">
            <label htmlFor="zip-code" className="sr-only">
              ZIP Code
            </label>
            <input
              id="zip-code"
              type="text"
              value={zipCode}
              onChange={(e) => setZipCode(e.target.value)}
              placeholder="ZIP code"
              className={inputClass("zipCode")}
            />
          </div>
        </div>
      </div>

      {/* Provider Type */}
      <div className="flex flex-col gap-1.5">
        <label
          htmlFor="provider-type"
          className="text-sm font-semibold text-foreground"
        >
          Provider Type
        </label>
        <select
          id="provider-type"
          value={providerType}
          onChange={(e) => setProviderType(e.target.value)}
          className="h-12 w-full rounded-xl border-2 border-border bg-white px-4 text-base transition-colors focus:border-primary focus:outline-none focus:ring-2 focus:ring-primary/30"
        >
          <option value="">Select a type (optional)</option>
          {PROVIDER_TYPES.map((opt) => (
            <option key={opt.value} value={opt.value}>
              {opt.label}
            </option>
          ))}
        </select>
      </div>

      {/* Description */}
      <div className="flex flex-col gap-1.5">
        <label
          htmlFor="agency-description"
          className="text-sm font-semibold text-foreground"
        >
          Description of Services <span className="text-destructive">*</span>
        </label>
        <textarea
          id="agency-description"
          value={description}
          onChange={(e) => setDescription(e.target.value)}
          placeholder="Describe the services your agency provides, who you serve, and what makes your agency unique."
          rows={5}
          maxLength={2000}
          aria-invalid={errors.description ? true : undefined}
          className={cn(
            "w-full rounded-xl border-2 bg-white px-4 py-3 text-base transition-colors placeholder:text-muted-foreground focus:outline-none",
            errors.description
              ? "border-destructive focus:border-destructive focus:ring-2 focus:ring-destructive/30"
              : "border-border focus:border-primary focus:ring-2 focus:ring-primary/30",
            "disabled:cursor-not-allowed disabled:opacity-50"
          )}
        />
        <div className="flex items-center justify-between">
          <p className="text-xs text-muted-foreground">Minimum 20 characters</p>
          <p className="text-xs text-muted-foreground">
            {description.length}/2000
          </p>
        </div>
        {errors.description && (
          <p role="alert" className="text-sm font-medium text-destructive">
            {errors.description}
          </p>
        )}
      </div>

      {/* Service Types */}
      <CheckboxGroup
        label="Service Types Offered"
        options={SERVICE_TYPES}
        selected={serviceTypes}
        onChange={setServiceTypes}
        id="service-types"
      />

      {/* Languages */}
      <CheckboxGroup
        label="Languages Spoken"
        options={LANGUAGES}
        selected={languages}
        onChange={setLanguages}
        id="languages"
      />

      {/* Age Groups */}
      <CheckboxGroup
        label="Age Groups Served"
        options={AGE_GROUPS}
        selected={ageGroups}
        onChange={setAgeGroups}
        id="age-groups"
      />

      {/* Funding Accepted */}
      <CheckboxGroup
        label="Funding Accepted"
        options={FUNDING_OPTIONS}
        selected={fundingAccepted}
        onChange={setFundingAccepted}
        id="funding"
      />

      {/* Disclaimer */}
      <div className="rounded-xl border border-border bg-muted/50 p-4">
        <p className="text-xs text-muted-foreground leading-relaxed">
          Submissions are reviewed before being listed. Kindway is not affiliated
          with any Regional Center or government agency. By submitting, you
          confirm that the information provided is accurate and that you are
          authorized to represent this agency.
        </p>
      </div>

      {/* Submit Error */}
      {submitError && (
        <div
          role="alert"
          className="rounded-xl border border-destructive/30 bg-destructive/5 p-4 text-sm text-destructive"
        >
          {submitError}
        </div>
      )}

      {/* Submit Button */}
      <Button type="submit" disabled={submitting} className="w-full" size="lg">
        {submitting ? (
          <>
            <Loader2
              className="mr-2 h-5 w-5 animate-spin"
              aria-hidden="true"
            />
            Submitting...
          </>
        ) : (
          "Submit Your Agency"
        )}
      </Button>
    </form>
  );
}
