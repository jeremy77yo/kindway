import { NextRequest, NextResponse } from "next/server";
import { createClient } from "@/lib/supabase/server";
import { detectSensitiveContent } from "@/lib/content-filter";

/** Map user-facing wait time strings to approximate weeks. */
const WAIT_TIME_MAP: Record<string, number> = {
  "Less than 2 weeks": 1,
  "2-4 weeks": 3,
  "1-2 months": 6,
  "2-3 months": 10,
  "3-6 months": 18,
  "6+ months": 30,
};

export async function POST(request: NextRequest) {
  try {
    const body = await request.json();

    // --- Validation ---
    const errors: string[] = [];

    if (!body.provider_id || typeof body.provider_id !== "string") {
      errors.push("provider_id is required.");
    }

    if (
      typeof body.rating !== "number" ||
      body.rating < 1 ||
      body.rating > 5 ||
      !Number.isInteger(body.rating)
    ) {
      errors.push("rating must be an integer between 1 and 5.");
    }

    if (typeof body.experience_text !== "string") {
      errors.push("experience_text is required.");
    } else {
      const trimmed = body.experience_text.trim();
      if (trimmed.length < 20) {
        errors.push("experience_text must be at least 20 characters.");
      }
      if (trimmed.length > 2000) {
        errors.push("experience_text must be 2000 characters or fewer.");
      }
    }

    if (
      body.staff_helpfulness != null &&
      (typeof body.staff_helpfulness !== "number" ||
        body.staff_helpfulness < 1 ||
        body.staff_helpfulness > 5)
    ) {
      errors.push("staff_helpfulness must be between 1 and 5.");
    }

    if (
      body.accessibility_rating != null &&
      (typeof body.accessibility_rating !== "number" ||
        body.accessibility_rating < 1 ||
        body.accessibility_rating > 5)
    ) {
      errors.push("accessibility_rating must be between 1 and 5.");
    }

    if (errors.length > 0) {
      return NextResponse.json({ error: errors.join(" ") }, { status: 400 });
    }

    // --- PHI content filter ---
    const sensitiveHit = detectSensitiveContent(body.experience_text);
    if (sensitiveHit) {
      return NextResponse.json({ error: sensitiveHit }, { status: 400 });
    }

    // --- Map wait time ---
    let waitTimeWeeks: number | null = null;
    if (body.wait_time && typeof body.wait_time === "string") {
      waitTimeWeeks = WAIT_TIME_MAP[body.wait_time] ?? null;
    }

    // --- Format service_date ---
    // The month picker sends "YYYY-MM"; store as first day of the month
    let serviceDate: string | null = null;
    if (body.service_date && typeof body.service_date === "string") {
      // Accept "YYYY-MM" or "YYYY-MM-DD"
      const match = body.service_date.match(/^(\d{4})-(\d{2})/);
      if (match) {
        serviceDate = `${match[1]}-${match[2]}-01`;
      }
    }

    // --- Insert into database ---
    const supabase = await createClient();
    if (!supabase) {
      return NextResponse.json(
        { error: "Service unavailable" },
        { status: 503 }
      );
    }

    // eslint-disable-next-line @typescript-eslint/no-explicit-any
    const { error } = await (supabase as any)
      .from("experience_reports")
      .insert({
        provider_id: body.provider_id,
        service_id: body.service_id || null,
        rating: body.rating,
        experience_text: body.experience_text.trim(),
        service_date: serviceDate,
        wait_time_weeks: waitTimeWeeks,
        staff_helpfulness: body.staff_helpfulness || null,
        accessibility_rating: body.accessibility_rating || null,
        would_recommend: body.would_recommend ?? null,
        status: "pending",
      });

    if (error) {
      console.error("Error inserting experience report:", error);
      return NextResponse.json(
        { error: "Failed to save your review. Please try again." },
        { status: 500 }
      );
    }

    return NextResponse.json(
      { message: "Review submitted successfully." },
      { status: 201 }
    );
  } catch (err) {
    console.error("Unexpected error in POST /api/reviews:", err);
    return NextResponse.json(
      { error: "An unexpected error occurred." },
      { status: 500 }
    );
  }
}
