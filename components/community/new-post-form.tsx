"use client";

import { useState } from "react";
import { AlertTriangle, CheckCircle, Loader2 } from "lucide-react";
import { cn } from "@/lib/utils";
import { Button } from "@/components/ui/button";

const CATEGORY_OPTIONS = [
  { value: "", label: "Select a category" },
  { value: "finding-providers", label: "Finding Providers" },
  { value: "advice-tips", label: "Advice & Tips" },
  { value: "sdp-self-determination", label: "SDP & Self-Determination" },
  { value: "regional-center", label: "Regional Center" },
  { value: "general", label: "General Discussion" },
];

export function NewPostForm() {
  const [displayName, setDisplayName] = useState("");
  const [category, setCategory] = useState("");
  const [title, setTitle] = useState("");
  const [body, setBody] = useState("");

  const [errors, setErrors] = useState<Record<string, string>>({});
  const [submitting, setSubmitting] = useState(false);
  const [submitted, setSubmitted] = useState(false);
  const [submitError, setSubmitError] = useState("");

  function validate(): Record<string, string> {
    const errs: Record<string, string> = {};

    if (!title.trim() || title.trim().length < 3) {
      errs.title = "Title must be at least 3 characters.";
    }

    if (!category) {
      errs.category = "Please select a category.";
    }

    if (!body.trim() || body.trim().length < 10) {
      errs.body = "Body must be at least 10 characters.";
    } else if (body.length > 5000) {
      errs.body = "Body must be 5000 characters or fewer.";
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
      const res = await fetch("/api/community", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          title: title.trim(),
          body: body.trim(),
          category,
          author_display_name: displayName.trim() || "Anonymous",
        }),
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
          Thank you for posting!
        </h3>
        <p className="mt-2 text-sm text-muted-foreground leading-relaxed">
          Your post has been submitted and will be reviewed by a moderator
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
              <li>&#8226; Phone numbers, email addresses, or SSNs</li>
            </ul>
            <p className="mt-2 text-xs text-muted-foreground">
              Your post will be reviewed by a moderator before being published.
            </p>
          </div>
        </div>
      </div>

      {/* Display Name */}
      <div className="flex flex-col gap-1.5">
        <label
          htmlFor="display-name"
          className="text-sm font-semibold text-foreground"
        >
          Display Name
        </label>
        <input
          id="display-name"
          type="text"
          value={displayName}
          onChange={(e) => setDisplayName(e.target.value)}
          placeholder="Anonymous"
          maxLength={50}
          className="h-12 w-full rounded-xl border-2 border-border bg-white px-4 text-base transition-colors placeholder:text-muted-foreground focus:border-primary focus:outline-none focus:ring-2 focus:ring-primary/30"
        />
        <p className="text-xs text-muted-foreground">
          Leave blank to post as &quot;Anonymous&quot;
        </p>
      </div>

      {/* Category */}
      <div className="flex flex-col gap-1.5">
        <label
          htmlFor="category"
          className="text-sm font-semibold text-foreground"
        >
          Category <span className="text-destructive">*</span>
        </label>
        <select
          id="category"
          value={category}
          onChange={(e) => setCategory(e.target.value)}
          aria-invalid={errors.category ? true : undefined}
          className={cn(
            "h-12 w-full rounded-xl border-2 bg-white px-4 text-base transition-colors focus:outline-none focus:ring-2",
            errors.category
              ? "border-destructive focus:border-destructive focus:ring-destructive/30"
              : "border-border focus:border-primary focus:ring-primary/30"
          )}
        >
          {CATEGORY_OPTIONS.map((opt) => (
            <option key={opt.value} value={opt.value}>
              {opt.label}
            </option>
          ))}
        </select>
        {errors.category && (
          <p role="alert" className="text-sm font-medium text-destructive">
            {errors.category}
          </p>
        )}
      </div>

      {/* Title */}
      <div className="flex flex-col gap-1.5">
        <label
          htmlFor="post-title"
          className="text-sm font-semibold text-foreground"
        >
          Title <span className="text-destructive">*</span>
        </label>
        <input
          id="post-title"
          type="text"
          value={title}
          onChange={(e) => setTitle(e.target.value)}
          placeholder="What's your question or topic?"
          maxLength={200}
          aria-invalid={errors.title ? true : undefined}
          className={cn(
            "h-12 w-full rounded-xl border-2 bg-white px-4 text-base transition-colors placeholder:text-muted-foreground focus:outline-none focus:ring-2",
            errors.title
              ? "border-destructive focus:border-destructive focus:ring-destructive/30"
              : "border-border focus:border-primary focus:ring-primary/30"
          )}
        />
        {errors.title && (
          <p role="alert" className="text-sm font-medium text-destructive">
            {errors.title}
          </p>
        )}
      </div>

      {/* Body */}
      <div className="flex flex-col gap-1.5">
        <label
          htmlFor="post-body"
          className="text-sm font-semibold text-foreground"
        >
          Body <span className="text-destructive">*</span>
        </label>
        <textarea
          id="post-body"
          value={body}
          onChange={(e) => setBody(e.target.value)}
          placeholder="Share your question, experience, or advice..."
          rows={6}
          maxLength={5000}
          aria-invalid={errors.body ? true : undefined}
          aria-describedby="post-body-hint"
          className={cn(
            "w-full rounded-xl border-2 bg-white px-4 py-3 text-base transition-colors placeholder:text-muted-foreground focus:outline-none focus:ring-2",
            errors.body
              ? "border-destructive focus:border-destructive focus:ring-destructive/30"
              : "border-border focus:border-primary focus:ring-primary/30",
            "disabled:cursor-not-allowed disabled:opacity-50"
          )}
        />
        <div className="flex items-center justify-between">
          <p id="post-body-hint" className="text-xs text-muted-foreground">
            Minimum 10 characters
          </p>
          <p className="text-xs text-muted-foreground">
            {body.length}/5000
          </p>
        </div>
        {errors.body && (
          <p role="alert" className="text-sm font-medium text-destructive">
            {errors.body}
          </p>
        )}
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
          "Submit Post"
        )}
      </Button>
    </form>
  );
}
