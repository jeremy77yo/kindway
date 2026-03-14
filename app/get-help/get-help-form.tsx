"use client";

import { useState } from "react";
import { CheckCircle, Loader2 } from "lucide-react";
import { cn } from "@/lib/utils";
import { Button } from "@/components/ui/button";

const TOPIC_OPTIONS = [
  { value: "", label: "What do you need help with?" },
  { value: "getting-started", label: "I don't know where to start" },
  { value: "finding-services", label: "Finding the right services" },
  { value: "finding-providers", label: "Finding or changing providers" },
  { value: "case-manager", label: "Issues with my case manager / service coordinator" },
  { value: "ipp-meeting", label: "Preparing for an IPP or IEP meeting" },
  { value: "denied-services", label: "A service was denied or reduced" },
  { value: "transition", label: "Transitioning to adult services (ages 18-22)" },
  { value: "sdp", label: "Self-Determination Program questions" },
  { value: "other", label: "Something else" },
];

const ROLE_OPTIONS = [
  { value: "", label: "I am a..." },
  { value: "parent", label: "Parent / Family member" },
  { value: "self-advocate", label: "Person with a disability (self-advocate)" },
  { value: "caregiver", label: "Caregiver or support person" },
  { value: "professional", label: "Professional / Service provider" },
  { value: "other", label: "Other" },
];

export function GetHelpForm() {
  const [name, setName] = useState("");
  const [email, setEmail] = useState("");
  const [role, setRole] = useState("");
  const [topic, setTopic] = useState("");
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
    if (!topic) errs.topic = "Please select a topic.";
    if (!message.trim() || message.trim().length < 20) {
      errs.message = "Please tell us a bit more (at least 20 characters).";
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
      const res = await fetch("/api/contact", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          name: name.trim(),
          email: email.trim(),
          subject: "get-help",
          message: `[Topic: ${topic}] [Role: ${role || "not specified"}]\n\n${message.trim()}`,
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
          We got your message!
        </h3>
        <p className="mt-2 text-sm text-muted-foreground leading-relaxed">
          We&apos;ll review your situation and follow up by email within 1-2
          business days. In the meantime, feel free to explore our{" "}
          <a href="/next-steps" className="text-primary hover:underline">
            guides
          </a>{" "}
          and{" "}
          <a href="/glossary" className="text-primary hover:underline">
            glossary
          </a>
          .
        </p>
      </div>
    );
  }

  const inputClass = (field: string) =>
    cn(
      "h-12 w-full rounded-xl border-2 bg-white px-4 text-base transition-colors focus:outline-none",
      errors[field]
        ? "border-destructive focus:border-destructive focus:ring-2 focus:ring-destructive/30"
        : "border-border focus:border-primary focus:ring-2 focus:ring-primary/30"
    );

  return (
    <form onSubmit={handleSubmit} noValidate className="space-y-5">
      {/* Name */}
      <div className="flex flex-col gap-1.5">
        <label htmlFor="help-name" className="text-sm font-semibold text-foreground">
          Your Name <span className="text-destructive">*</span>
        </label>
        <input
          id="help-name"
          type="text"
          value={name}
          onChange={(e) => setName(e.target.value)}
          placeholder="First name is fine"
          aria-invalid={errors.name ? true : undefined}
          className={inputClass("name")}
        />
        {errors.name && (
          <p role="alert" className="text-sm font-medium text-destructive">{errors.name}</p>
        )}
      </div>

      {/* Email */}
      <div className="flex flex-col gap-1.5">
        <label htmlFor="help-email" className="text-sm font-semibold text-foreground">
          Email <span className="text-destructive">*</span>
        </label>
        <input
          id="help-email"
          type="email"
          value={email}
          onChange={(e) => setEmail(e.target.value)}
          placeholder="So we can get back to you"
          aria-invalid={errors.email ? true : undefined}
          className={inputClass("email")}
        />
        {errors.email && (
          <p role="alert" className="text-sm font-medium text-destructive">{errors.email}</p>
        )}
      </div>

      {/* Role */}
      <div className="flex flex-col gap-1.5">
        <label htmlFor="help-role" className="text-sm font-semibold text-foreground">
          Your Role
        </label>
        <select
          id="help-role"
          value={role}
          onChange={(e) => setRole(e.target.value)}
          className={cn(
            "h-12 w-full rounded-xl border-2 bg-white px-4 text-base transition-colors focus:outline-none",
            "border-border focus:border-primary focus:ring-2 focus:ring-primary/30"
          )}
        >
          {ROLE_OPTIONS.map((opt) => (
            <option key={opt.value} value={opt.value}>{opt.label}</option>
          ))}
        </select>
      </div>

      {/* Topic */}
      <div className="flex flex-col gap-1.5">
        <label htmlFor="help-topic" className="text-sm font-semibold text-foreground">
          Topic <span className="text-destructive">*</span>
        </label>
        <select
          id="help-topic"
          value={topic}
          onChange={(e) => setTopic(e.target.value)}
          aria-invalid={errors.topic ? true : undefined}
          className={cn(
            "h-12 w-full rounded-xl border-2 bg-white px-4 text-base transition-colors focus:outline-none",
            errors.topic
              ? "border-destructive focus:border-destructive focus:ring-2 focus:ring-destructive/30"
              : "border-border focus:border-primary focus:ring-2 focus:ring-primary/30"
          )}
        >
          {TOPIC_OPTIONS.map((opt) => (
            <option key={opt.value} value={opt.value}>{opt.label}</option>
          ))}
        </select>
        {errors.topic && (
          <p role="alert" className="text-sm font-medium text-destructive">{errors.topic}</p>
        )}
      </div>

      {/* Message */}
      <div className="flex flex-col gap-1.5">
        <label htmlFor="help-message" className="text-sm font-semibold text-foreground">
          Tell us about your situation <span className="text-destructive">*</span>
        </label>
        <textarea
          id="help-message"
          value={message}
          onChange={(e) => setMessage(e.target.value)}
          placeholder="What's going on? What have you tried so far? How can we help?"
          rows={5}
          maxLength={3000}
          aria-invalid={errors.message ? true : undefined}
          className={cn(
            "w-full rounded-xl border-2 bg-white px-4 py-3 text-base transition-colors placeholder:text-muted-foreground focus:outline-none focus:ring-2",
            errors.message
              ? "border-destructive focus:border-destructive focus:ring-destructive/30"
              : "border-border focus:border-primary focus:ring-primary/30"
          )}
        />
        <div className="flex items-center justify-between">
          <p className="text-xs text-muted-foreground">Minimum 20 characters</p>
          <p className="text-xs text-muted-foreground">{message.length}/3000</p>
        </div>
        {errors.message && (
          <p role="alert" className="text-sm font-medium text-destructive">{errors.message}</p>
        )}
      </div>

      {/* Submit Error */}
      {submitError && (
        <div role="alert" className="rounded-xl border border-destructive/30 bg-destructive/5 p-4 text-sm text-destructive">
          {submitError}
        </div>
      )}

      {/* Submit */}
      <Button type="submit" disabled={submitting} className="w-full" size="lg">
        {submitting ? (
          <>
            <Loader2 className="mr-2 h-5 w-5 animate-spin" aria-hidden="true" />
            Sending...
          </>
        ) : (
          "Send Message"
        )}
      </Button>

      <p className="text-xs text-center text-muted-foreground">
        We respect your privacy. Your information is only used to respond to your request.
      </p>
    </form>
  );
}
