"use client";

import { useState } from "react";
import { Star, AlertTriangle, CheckCircle, Loader2 } from "lucide-react";
import { cn } from "@/lib/utils";
import { Button } from "@/components/ui/button";

interface ReviewFormProps {
  providerId: string;
  providerName: string;
  serviceId?: string;
}

const WAIT_TIME_OPTIONS = [
  { value: "", label: "Select wait time (optional)" },
  { value: "Less than 2 weeks", label: "Less than 2 weeks" },
  { value: "2-4 weeks", label: "2-4 weeks" },
  { value: "1-2 months", label: "1-2 months" },
  { value: "2-3 months", label: "2-3 months" },
  { value: "3-6 months", label: "3-6 months" },
  { value: "6+ months", label: "6+ months" },
];

function StarRating({
  value,
  onChange,
  label,
  id,
  required = false,
}: {
  value: number;
  onChange: (v: number) => void;
  label: string;
  id: string;
  required?: boolean;
}) {
  const [hover, setHover] = useState(0);

  return (
    <div className="flex flex-col gap-1.5">
      <label className="text-sm font-semibold text-foreground" id={`${id}-label`}>
        {label}
        {required && <span className="text-destructive ml-1">*</span>}
      </label>
      <div
        className="flex gap-1"
        role="radiogroup"
        aria-labelledby={`${id}-label`}
      >
        {[1, 2, 3, 4, 5].map((star) => (
          <button
            key={star}
            type="button"
            className={cn(
              "flex h-11 w-11 items-center justify-center rounded-lg transition-colors",
              "hover:bg-warning/10 focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-primary focus-visible:ring-offset-2"
            )}
            onClick={() => onChange(star)}
            onMouseEnter={() => setHover(star)}
            onMouseLeave={() => setHover(0)}
            role="radio"
            aria-checked={value === star}
            aria-label={`${star} star${star !== 1 ? "s" : ""}`}
          >
            <Star
              className={cn(
                "h-7 w-7 transition-colors",
                star <= (hover || value)
                  ? "fill-warning text-warning"
                  : "text-border"
              )}
              aria-hidden="true"
            />
          </button>
        ))}
      </div>
    </div>
  );
}

export function ReviewForm({ providerId, providerName, serviceId }: ReviewFormProps) {
  const [rating, setRating] = useState(0);
  const [experienceText, setExperienceText] = useState("");
  const [serviceDate, setServiceDate] = useState("");
  const [waitTime, setWaitTime] = useState("");
  const [staffHelpfulness, setStaffHelpfulness] = useState(0);
  const [accessibilityRating, setAccessibilityRating] = useState(0);
  const [wouldRecommend, setWouldRecommend] = useState<boolean | null>(null);

  const [errors, setErrors] = useState<Record<string, string>>({});
  const [submitting, setSubmitting] = useState(false);
  const [submitted, setSubmitted] = useState(false);
  const [submitError, setSubmitError] = useState("");

  function validate(): Record<string, string> {
    const errs: Record<string, string> = {};

    if (rating < 1 || rating > 5) {
      errs.rating = "Please select a rating.";
    }

    if (experienceText.trim().length < 20) {
      errs.experienceText = "Please write at least 20 characters about your experience.";
    } else if (experienceText.length > 2000) {
      errs.experienceText = "Your review must be 2000 characters or fewer.";
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
      const body: Record<string, unknown> = {
        provider_id: providerId,
        rating,
        experience_text: experienceText.trim(),
      };

      if (serviceId) body.service_id = serviceId;
      if (serviceDate) body.service_date = serviceDate;
      if (waitTime) body.wait_time = waitTime;
      if (staffHelpfulness > 0) body.staff_helpfulness = staffHelpfulness;
      if (accessibilityRating > 0) body.accessibility_rating = accessibilityRating;
      if (wouldRecommend !== null) body.would_recommend = wouldRecommend;

      const res = await fetch("/api/reviews", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(body),
      });

      if (!res.ok) {
        const data = await res.json().catch(() => ({}));
        throw new Error(data.error || "Something went wrong. Please try again.");
      }

      setSubmitted(true);
    } catch (err) {
      setSubmitError(
        err instanceof Error ? err.message : "Something went wrong. Please try again."
      );
    } finally {
      setSubmitting(false);
    }
  }

  if (submitted) {
    return (
      <div className="rounded-2xl border border-success/30 bg-success/5 p-6 text-center">
        <CheckCircle className="mx-auto h-10 w-10 text-success" aria-hidden="true" />
        <h3 className="mt-3 text-lg font-semibold text-foreground">
          Thank you for sharing!
        </h3>
        <p className="mt-2 text-sm text-muted-foreground leading-relaxed">
          Your experience has been submitted and will be reviewed by a moderator
          before being published.
        </p>
      </div>
    );
  }

  return (
    <form onSubmit={handleSubmit} noValidate className="space-y-6">
      {/* Privacy Warning */}
      <div className="rounded-xl border-2 border-warning/30 bg-warning/5 p-4">
        <div className="flex gap-3">
          <AlertTriangle
            className="mt-0.5 h-5 w-5 shrink-0 text-warning"
            aria-hidden="true"
          />
          <div>
            <h3 className="text-sm font-semibold text-foreground">
              Privacy Reminder
            </h3>
            <p className="mt-1 text-sm text-muted-foreground leading-relaxed">
              To protect your privacy and the privacy of others, please DO NOT
              include:
            </p>
            <ul className="mt-2 space-y-1 text-sm text-muted-foreground">
              <li>&#8226; Real names of staff, therapists, or other clients</li>
              <li>&#8226; Dates of birth, ages, or specific diagnoses</li>
              <li>&#8226; Insurance or Medi-Cal ID numbers</li>
              <li>
                &#8226; Any information that could identify you or someone else
              </li>
            </ul>
            <p className="mt-2 text-xs text-muted-foreground">
              Your review will be reviewed by a moderator before being published.
            </p>
          </div>
        </div>
      </div>

      {/* Overall Rating */}
      <div>
        <StarRating
          value={rating}
          onChange={setRating}
          label="Overall Rating"
          id="overall-rating"
          required
        />
        {errors.rating && (
          <p role="alert" className="mt-1 text-sm font-medium text-destructive">
            {errors.rating}
          </p>
        )}
      </div>

      {/* Experience Text */}
      <div className="flex flex-col gap-1.5">
        <label
          htmlFor="experience-text"
          className="text-sm font-semibold text-foreground"
        >
          Your Experience <span className="text-destructive">*</span>
        </label>
        <textarea
          id="experience-text"
          value={experienceText}
          onChange={(e) => setExperienceText(e.target.value)}
          placeholder="Tell others about your experience with this provider. What went well? What could be improved?"
          rows={5}
          maxLength={2000}
          aria-invalid={errors.experienceText ? true : undefined}
          aria-describedby="experience-text-hint experience-text-error"
          className={cn(
            "w-full rounded-xl border-2 bg-white px-4 py-3 text-base transition-colors placeholder:text-muted-foreground focus:outline-none",
            errors.experienceText
              ? "border-destructive focus:border-destructive focus:ring-2 focus:ring-destructive/30"
              : "border-border focus:border-primary focus:ring-2 focus:ring-primary/30",
            "disabled:cursor-not-allowed disabled:opacity-50"
          )}
        />
        <div className="flex items-center justify-between">
          <p id="experience-text-hint" className="text-xs text-muted-foreground">
            Minimum 20 characters
          </p>
          <p className="text-xs text-muted-foreground">
            {experienceText.length}/2000
          </p>
        </div>
        {errors.experienceText && (
          <p
            id="experience-text-error"
            role="alert"
            className="text-sm font-medium text-destructive"
          >
            {errors.experienceText}
          </p>
        )}
      </div>

      {/* Service Date (month/year picker) */}
      <div className="flex flex-col gap-1.5">
        <label
          htmlFor="service-date"
          className="text-sm font-semibold text-foreground"
        >
          When did you receive services?
        </label>
        <input
          id="service-date"
          type="month"
          value={serviceDate}
          onChange={(e) => setServiceDate(e.target.value)}
          max={new Date().toISOString().slice(0, 7)}
          className="h-12 w-full rounded-xl border-2 border-border bg-white px-4 text-base transition-colors focus:border-primary focus:outline-none focus:ring-2 focus:ring-primary/30"
        />
      </div>

      {/* Wait Time */}
      <div className="flex flex-col gap-1.5">
        <label
          htmlFor="wait-time"
          className="text-sm font-semibold text-foreground"
        >
          How long did you wait to receive services?
        </label>
        <select
          id="wait-time"
          value={waitTime}
          onChange={(e) => setWaitTime(e.target.value)}
          className="h-12 w-full rounded-xl border-2 border-border bg-white px-4 text-base transition-colors focus:border-primary focus:outline-none focus:ring-2 focus:ring-primary/30"
        >
          {WAIT_TIME_OPTIONS.map((opt) => (
            <option key={opt.value} value={opt.value}>
              {opt.label}
            </option>
          ))}
        </select>
      </div>

      {/* Staff Helpfulness */}
      <StarRating
        value={staffHelpfulness}
        onChange={setStaffHelpfulness}
        label="Staff Helpfulness"
        id="staff-helpfulness"
      />

      {/* Accessibility Rating */}
      <StarRating
        value={accessibilityRating}
        onChange={setAccessibilityRating}
        label="Accessibility"
        id="accessibility-rating"
      />

      {/* Would Recommend */}
      <div className="flex flex-col gap-1.5">
        <span className="text-sm font-semibold text-foreground">
          Would you recommend this provider?
        </span>
        <div className="flex gap-3">
          <button
            type="button"
            onClick={() =>
              setWouldRecommend(wouldRecommend === true ? null : true)
            }
            className={cn(
              "flex h-11 items-center gap-2 rounded-xl border-2 px-5 text-sm font-semibold transition-colors",
              "focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-primary focus-visible:ring-offset-2",
              wouldRecommend === true
                ? "border-success bg-success/10 text-success"
                : "border-border text-muted-foreground hover:border-success/50"
            )}
            role="radio"
            aria-checked={wouldRecommend === true}
          >
            Yes
          </button>
          <button
            type="button"
            onClick={() =>
              setWouldRecommend(wouldRecommend === false ? null : false)
            }
            className={cn(
              "flex h-11 items-center gap-2 rounded-xl border-2 px-5 text-sm font-semibold transition-colors",
              "focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-primary focus-visible:ring-offset-2",
              wouldRecommend === false
                ? "border-destructive bg-destructive/10 text-destructive"
                : "border-border text-muted-foreground hover:border-destructive/50"
            )}
            role="radio"
            aria-checked={wouldRecommend === false}
          >
            No
          </button>
        </div>
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

      {/* Submit */}
      <Button
        type="submit"
        disabled={submitting}
        className="w-full"
        size="lg"
      >
        {submitting ? (
          <>
            <Loader2 className="mr-2 h-5 w-5 animate-spin" aria-hidden="true" />
            Submitting...
          </>
        ) : (
          `Submit Your Experience for ${providerName}`
        )}
      </Button>
    </form>
  );
}
