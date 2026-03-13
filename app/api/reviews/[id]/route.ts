import { NextRequest, NextResponse } from "next/server";
import { createClient } from "@/lib/supabase/server";

interface RouteContext {
  params: Promise<{ id: string }>;
}

export async function PATCH(request: NextRequest, context: RouteContext) {
  try {
    const { id } = await context.params;
    const body = await request.json();

    // --- Validation ---
    if (!["approved", "rejected"].includes(body.status)) {
      return NextResponse.json(
        { error: 'status must be "approved" or "rejected".' },
        { status: 400 }
      );
    }

    const supabase = await createClient();
    if (!supabase) {
      return NextResponse.json(
        { error: "Service unavailable" },
        { status: 503 }
      );
    }

    // eslint-disable-next-line @typescript-eslint/no-explicit-any
    const sb = supabase as any;

    // Update the review status
    const { data: updatedReport, error: updateError } = await sb
      .from("experience_reports")
      .update({ status: body.status })
      .eq("id", id)
      .select("provider_id")
      .single();

    if (updateError) {
      console.error("Error updating experience report:", updateError);
      return NextResponse.json(
        { error: "Failed to update review." },
        { status: 500 }
      );
    }

    if (!updatedReport) {
      return NextResponse.json(
        { error: "Review not found." },
        { status: 404 }
      );
    }

    // If approving, recompute the provider experience summary
    if (body.status === "approved") {
      await recomputeSummary(sb, updatedReport.provider_id);
    }

    return NextResponse.json({ message: "Review updated successfully." });
  } catch (err) {
    console.error("Unexpected error in PATCH /api/reviews/[id]:", err);
    return NextResponse.json(
      { error: "An unexpected error occurred." },
      { status: 500 }
    );
  }
}

/**
 * Recompute the provider_experience_summaries row for the given provider
 * based on all approved experience_reports.
 */
// eslint-disable-next-line @typescript-eslint/no-explicit-any
async function recomputeSummary(sb: any, providerId: string) {
  // Fetch all approved reviews for this provider
  const { data: reviews, error: fetchError } = await sb
    .from("experience_reports")
    .select(
      "rating, wait_time_weeks, staff_helpfulness, accessibility_rating, would_recommend"
    )
    .eq("provider_id", providerId)
    .eq("status", "approved");

  if (fetchError || !reviews || reviews.length === 0) {
    // If no approved reviews remain, delete the summary row
    await sb
      .from("provider_experience_summaries")
      .delete()
      .eq("provider_id", providerId);
    return;
  }

  const totalReviews = reviews.length;

  const avgRating =
    reviews.reduce((sum: number, r: { rating: number }) => sum + r.rating, 0) /
    totalReviews;

  const waitReviews = reviews.filter(
    (r: { wait_time_weeks: number | null }) => r.wait_time_weeks != null
  );
  const avgWait =
    waitReviews.length > 0
      ? waitReviews.reduce(
          (sum: number, r: { wait_time_weeks: number }) =>
            sum + r.wait_time_weeks,
          0
        ) / waitReviews.length
      : null;

  const staffReviews = reviews.filter(
    (r: { staff_helpfulness: number | null }) => r.staff_helpfulness != null
  );
  const avgStaff =
    staffReviews.length > 0
      ? staffReviews.reduce(
          (sum: number, r: { staff_helpfulness: number }) =>
            sum + r.staff_helpfulness,
          0
        ) / staffReviews.length
      : null;

  const accessibilityReviews = reviews.filter(
    (r: { accessibility_rating: number | null }) =>
      r.accessibility_rating != null
  );
  const avgAccessibility =
    accessibilityReviews.length > 0
      ? accessibilityReviews.reduce(
          (sum: number, r: { accessibility_rating: number }) =>
            sum + r.accessibility_rating,
          0
        ) / accessibilityReviews.length
      : null;

  const recommendReviews = reviews.filter(
    (r: { would_recommend: boolean | null }) => r.would_recommend != null
  );
  const recommendRate =
    recommendReviews.length > 0
      ? (recommendReviews.filter(
          (r: { would_recommend: boolean }) => r.would_recommend === true
        ).length /
          recommendReviews.length) *
        100
      : null;

  // Upsert the summary
  const { error: upsertError } = await sb
    .from("provider_experience_summaries")
    .upsert(
      {
        provider_id: providerId,
        total_reviews: totalReviews,
        average_rating: Math.round(avgRating * 100) / 100,
        average_wait_weeks:
          avgWait != null ? Math.round(avgWait * 100) / 100 : null,
        average_staff_helpfulness:
          avgStaff != null ? Math.round(avgStaff * 100) / 100 : null,
        average_accessibility:
          avgAccessibility != null
            ? Math.round(avgAccessibility * 100) / 100
            : null,
        recommendation_rate:
          recommendRate != null
            ? Math.round(recommendRate * 100) / 100
            : null,
        last_computed_at: new Date().toISOString(),
      },
      { onConflict: "provider_id" }
    );

  if (upsertError) {
    console.error("Error upserting experience summary:", upsertError);
  }
}
