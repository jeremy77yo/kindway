"use client";

import { useState } from "react";
import { CheckCircle, Loader2 } from "lucide-react";
import { cn } from "@/lib/utils";
import { Button } from "@/components/ui/button";

const SUBJECT_OPTIONS = [
  { value: "", label: "Select a subject" },
  { value: "general", label: "General Inquiry" },
  { value: "bug-report", label: "Bug Report" },
  { value: "add-update-provider", label: "Add / Update Provider" },
  { value: "feedback", label: "Feedback" },
];

export function ContactForm() {
  const [name, setName] = useState("");
  const [email, setEmail] = useState("");
  const [subject, setSubject] = useState("");
  const [message, setMessage] = useState("");

  const [errors, setErrors] = useState<Record<string, string>>({});
  const [submitting, setSubmitting] = useState(false);
  const [submitted, setSubmitted] = useState(false);
  const [submitError, setSubmitError] = useState("");

  function validate(): Record<string, string> {
    const errs: Record<string, string> = {};

    if (!name.trim()) errs.name = "Name is required.";
    if (!email.trim()) {
      errs.email = "Email is required.";
    } else if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email.trim())) {
      errs.email = "Please enter a valid email address.";
    }
    if (!subject) errs.subject = "Please select a subject.";
    if (!message.trim()) {
      errs.message = "Message is required.";
    } else if (message.trim().length < 10) {
      errs.message = "Please write at least 10 characters.";
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
        email: email.trim(),
        subject,
        message: message.trim(),
      };

      const res = await fetch("/api/contact", {
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
          Message sent!
        </h3>
        <p className="mt-2 text-sm text-muted-foreground leading-relaxed">
          Thank you for reaching out. We&apos;ll get back to you as soon as we
          can.
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
      {/* Name */}
      <div className="flex flex-col gap-1.5">
        <label
          htmlFor="contact-name"
          className="text-sm font-semibold text-foreground"
        >
          Name <span className="text-destructive">*</span>
        </label>
        <input
          id="contact-name"
          type="text"
          value={name}
          onChange={(e) => setName(e.target.value)}
          placeholder="Your name"
          aria-invalid={errors.name ? true : undefined}
          className={inputClass("name")}
        />
        {errors.name && (
          <p role="alert" className="text-sm font-medium text-destructive">
            {errors.name}
          </p>
        )}
      </div>

      {/* Email */}
      <div className="flex flex-col gap-1.5">
        <label
          htmlFor="contact-email"
          className="text-sm font-semibold text-foreground"
        >
          Email <span className="text-destructive">*</span>
        </label>
        <input
          id="contact-email"
          type="email"
          value={email}
          onChange={(e) => setEmail(e.target.value)}
          placeholder="your@email.com"
          aria-invalid={errors.email ? true : undefined}
          className={inputClass("email")}
        />
        {errors.email && (
          <p role="alert" className="text-sm font-medium text-destructive">
            {errors.email}
          </p>
        )}
      </div>

      {/* Subject */}
      <div className="flex flex-col gap-1.5">
        <label
          htmlFor="contact-subject"
          className="text-sm font-semibold text-foreground"
        >
          Subject <span className="text-destructive">*</span>
        </label>
        <select
          id="contact-subject"
          value={subject}
          onChange={(e) => setSubject(e.target.value)}
          aria-invalid={errors.subject ? true : undefined}
          className={cn(
            "h-12 w-full rounded-xl border-2 bg-white px-4 text-base transition-colors focus:outline-none",
            errors.subject
              ? "border-destructive focus:border-destructive focus:ring-2 focus:ring-destructive/30"
              : "border-border focus:border-primary focus:ring-2 focus:ring-primary/30"
          )}
        >
          {SUBJECT_OPTIONS.map((opt) => (
            <option key={opt.value} value={opt.value}>
              {opt.label}
            </option>
          ))}
        </select>
        {errors.subject && (
          <p role="alert" className="text-sm font-medium text-destructive">
            {errors.subject}
          </p>
        )}
      </div>

      {/* Message */}
      <div className="flex flex-col gap-1.5">
        <label
          htmlFor="contact-message"
          className="text-sm font-semibold text-foreground"
        >
          Message <span className="text-destructive">*</span>
        </label>
        <textarea
          id="contact-message"
          value={message}
          onChange={(e) => setMessage(e.target.value)}
          placeholder="How can we help?"
          rows={5}
          maxLength={2000}
          aria-invalid={errors.message ? true : undefined}
          className={cn(
            "w-full rounded-xl border-2 bg-white px-4 py-3 text-base transition-colors placeholder:text-muted-foreground focus:outline-none",
            errors.message
              ? "border-destructive focus:border-destructive focus:ring-2 focus:ring-destructive/30"
              : "border-border focus:border-primary focus:ring-2 focus:ring-primary/30",
            "disabled:cursor-not-allowed disabled:opacity-50"
          )}
        />
        <div className="flex items-center justify-between">
          <p className="text-xs text-muted-foreground">Minimum 10 characters</p>
          <p className="text-xs text-muted-foreground">
            {message.length}/2000
          </p>
        </div>
        {errors.message && (
          <p role="alert" className="text-sm font-medium text-destructive">
            {errors.message}
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

      {/* Submit Button */}
      <Button type="submit" disabled={submitting} className="w-full" size="lg">
        {submitting ? (
          <>
            <Loader2
              className="mr-2 h-5 w-5 animate-spin"
              aria-hidden="true"
            />
            Sending...
          </>
        ) : (
          "Send Message"
        )}
      </Button>
    </form>
  );
}
