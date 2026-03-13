// NOTE: This admin page currently has NO authentication.
// Auth should be added before deploying to production.

import { Star, Clock, ThumbsUp, Shield } from "lucide-react";
import { createClient } from "@/lib/supabase/server";
import { ModerationActions } from "./moderation-actions";

interface PendingReview {
  id: string;
  rating: number;
  experience_text: string;
  service_date: string | null;
  wait_time_weeks: number | null;
  staff_helpfulness: number | null;
  accessibility_rating: number | null;
  would_recommend: boolean | null;
  created_at: string;
  provider: { name: string } | null;
}

async function getPendingReviews(): Promise<PendingReview[]> {
  const supabase = await createClient();
  if (!supabase) return [];

  // eslint-disable-next-line @typescript-eslint/no-explicit-any
  const { data, error } = await (supabase as any)
    .from("experience_reports")
    .select(
      `
      id,
      rating,
      experience_text,
      service_date,
      wait_time_weeks,
      staff_helpfulness,
      accessibility_rating,
      would_recommend,
      created_at,
      provider:providers (name)
    `
    )
    .eq("status", "pending")
    .order("created_at", { ascending: false });

  if (error) {
    console.error("Error fetching pending reviews:", error);
    return [];
  }

  return (data ?? []) as PendingReview[];
}

function formatWaitTime(weeks: number | null): string {
  if (weeks == null) return "N/A";
  if (weeks <= 2) return "< 2 weeks";
  if (weeks <= 4) return "2-4 weeks";
  if (weeks <= 8) return "1-2 months";
  if (weeks <= 12) return "2-3 months";
  if (weeks <= 24) return "3-6 months";
  return "6+ months";
}

export default async function AdminReviewsPage() {
  const reviews = await getPendingReviews();

  return (
    <div className="mx-auto max-w-4xl px-4 py-8">
      <div className="mb-8 flex items-center gap-3">
        <Shield className="h-7 w-7 text-primary" aria-hidden="true" />
        <div>
          <h1 className="text-3xl font-bold tracking-tight text-foreground">
            Review Moderation
          </h1>
          <p className="mt-1 text-muted-foreground">
            {reviews.length} pending review{reviews.length !== 1 ? "s" : ""} to
            moderate
          </p>
        </div>
      </div>

      {reviews.length === 0 ? (
        <div className="rounded-2xl border border-border bg-white p-12 text-center">
          <p className="text-lg text-muted-foreground">
            No pending reviews to moderate.
          </p>
        </div>
      ) : (
        <div className="space-y-6">
          {reviews.map((review) => (
            <article
              key={review.id}
              className="rounded-2xl border border-border bg-white p-6"
            >
              {/* Header: provider name + date */}
              <div className="flex items-start justify-between gap-4">
                <div>
                  <h2 className="text-base font-semibold text-foreground">
                    {review.provider?.name ?? "Unknown Provider"}
                  </h2>
                  <p className="text-xs text-muted-foreground">
                    Submitted{" "}
                    {new Date(review.created_at).toLocaleDateString("en-US", {
                      month: "short",
                      day: "numeric",
                      year: "numeric",
                      hour: "numeric",
                      minute: "2-digit",
                    })}
                  </p>
                </div>
                {/* Rating stars */}
                <div className="flex items-center gap-0.5">
                  {[1, 2, 3, 4, 5].map((star) => (
                    <Star
                      key={star}
                      className={`h-5 w-5 ${
                        star <= review.rating
                          ? "fill-warning text-warning"
                          : "text-border"
                      }`}
                      aria-hidden="true"
                    />
                  ))}
                </div>
              </div>

              {/* Review text */}
              <p className="mt-4 whitespace-pre-wrap text-sm text-foreground leading-relaxed">
                {review.experience_text}
              </p>

              {/* Metadata */}
              <div className="mt-4 flex flex-wrap gap-4 border-t border-border pt-4 text-xs text-muted-foreground">
                {review.service_date && (
                  <span>
                    Service date:{" "}
                    {new Date(review.service_date).toLocaleDateString("en-US", {
                      month: "short",
                      year: "numeric",
                    })}
                  </span>
                )}
                {review.wait_time_weeks != null && (
                  <span className="flex items-center gap-1">
                    <Clock className="h-3.5 w-3.5" aria-hidden="true" />
                    Wait: {formatWaitTime(review.wait_time_weeks)}
                  </span>
                )}
                {review.staff_helpfulness != null && (
                  <span className="flex items-center gap-1">
                    <ThumbsUp className="h-3.5 w-3.5" aria-hidden="true" />
                    Staff: {review.staff_helpfulness}/5
                  </span>
                )}
                {review.accessibility_rating != null && (
                  <span>Accessibility: {review.accessibility_rating}/5</span>
                )}
                {review.would_recommend != null && (
                  <span>
                    Would recommend:{" "}
                    {review.would_recommend ? "Yes" : "No"}
                  </span>
                )}
              </div>

              {/* Approve / Reject buttons */}
              <ModerationActions reviewId={review.id} />
            </article>
          ))}
        </div>
      )}
    </div>
  );
}
