"use client";

import { useState } from "react";
import { AlertTriangle, CheckCircle, Loader2 } from "lucide-react";
import { cn } from "@/lib/utils";
import { Button } from "@/components/ui/button";

interface ReplyFormProps {
  parentId: string;
}

export function ReplyForm({ parentId }: ReplyFormProps) {
  const [displayName, setDisplayName] = useState("");
  const [body, setBody] = useState("");

  const [errors, setErrors] = useState<Record<string, string>>({});
  const [submitting, setSubmitting] = useState(false);
  const [submitted, setSubmitted] = useState(false);
  const [submitError, setSubmitError] = useState("");

  function validate(): Record<string, string> {
    const errs: Record<string, string> = {};

    if (!body.trim() || body.trim().length < 10) {
      errs.body = "Reply must be at least 10 characters.";
    } else if (body.length > 5000) {
      errs.body = "Reply must be 5000 characters or fewer.";
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
          parent_id: parentId,
          body: body.trim(),
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
          Reply submitted!
        </h3>
        <p className="mt-2 text-sm text-muted-foreground leading-relaxed">
          Your reply will appear once a moderator approves it.
        </p>
      </div>
    );
  }

  return (
    <form onSubmit={handleSubmit} noValidate className="space-y-4">
      {/* Privacy Warning */}
      <div className="rounded-xl border border-warning/30 bg-warning/5 p-3">
        <div className="flex gap-2">
          <AlertTriangle
            className="mt-0.5 h-4 w-4 shrink-0 text-warning"
            aria-hidden="true"
          />
          <p className="text-xs text-muted-foreground">
            Do not include personal information such as phone numbers, emails,
            SSNs, or ID numbers.
          </p>
        </div>
      </div>

      {/* Display Name */}
      <div className="flex flex-col gap-1.5">
        <label
          htmlFor="reply-display-name"
          className="text-sm font-semibold text-foreground"
        >
          Display Name
        </label>
        <input
          id="reply-display-name"
          type="text"
          value={displayName}
          onChange={(e) => setDisplayName(e.target.value)}
          placeholder="Anonymous"
          maxLength={50}
          className="h-10 w-full rounded-xl border-2 border-border bg-white px-3 text-sm transition-colors placeholder:text-muted-foreground focus:border-primary focus:outline-none focus:ring-2 focus:ring-primary/30"
        />
      </div>

      {/* Body */}
      <div className="flex flex-col gap-1.5">
        <label
          htmlFor="reply-body"
          className="text-sm font-semibold text-foreground"
        >
          Your Reply <span className="text-destructive">*</span>
        </label>
        <textarea
          id="reply-body"
          value={body}
          onChange={(e) => setBody(e.target.value)}
          placeholder="Share your thoughts..."
          rows={4}
          maxLength={5000}
          aria-invalid={errors.body ? true : undefined}
          className={cn(
            "w-full rounded-xl border-2 bg-white px-3 py-2 text-sm transition-colors placeholder:text-muted-foreground focus:outline-none focus:ring-2",
            errors.body
              ? "border-destructive focus:border-destructive focus:ring-destructive/30"
              : "border-border focus:border-primary focus:ring-primary/30"
          )}
        />
        <div className="flex items-center justify-between">
          <p className="text-xs text-muted-foreground">Minimum 10 characters</p>
          <p className="text-xs text-muted-foreground">{body.length}/5000</p>
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
          className="rounded-xl border border-destructive/30 bg-destructive/5 p-3 text-sm text-destructive"
        >
          {submitError}
        </div>
      )}

      {/* Submit */}
      <Button type="submit" disabled={submitting} size="sm">
        {submitting ? (
          <>
            <Loader2 className="mr-1.5 h-4 w-4 animate-spin" aria-hidden="true" />
            Submitting...
          </>
        ) : (
          "Post Reply"
        )}
      </Button>
    </form>
  );
}
