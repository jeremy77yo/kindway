import { NextRequest, NextResponse } from "next/server";
import { createClient } from "@/lib/supabase/server";
import { detectSensitiveContent } from "@/lib/content-filter";

const VALID_CATEGORIES = [
  "finding-providers",
  "advice-tips",
  "sdp-self-determination",
  "regional-center",
  "general",
];

export async function POST(request: NextRequest) {
  try {
    const body = await request.json();

    const errors: string[] = [];
    const isReply = !!body.parent_id;

    if (!isReply) {
      // Top-level post requires title and category
      if (!body.title || typeof body.title !== "string" || body.title.trim().length < 3) {
        errors.push("Title must be at least 3 characters.");
      } else if (body.title.trim().length > 200) {
        errors.push("Title must be 200 characters or fewer.");
      }

      if (!body.category || !VALID_CATEGORIES.includes(body.category)) {
        errors.push("Please select a valid category.");
      }
    }

    if (!body.body || typeof body.body !== "string" || body.body.trim().length < 10) {
      errors.push("Body must be at least 10 characters.");
    } else if (body.body.trim().length > 5000) {
      errors.push("Body must be 5000 characters or fewer.");
    }

    if (
      body.author_display_name &&
      typeof body.author_display_name === "string" &&
      body.author_display_name.trim().length > 50
    ) {
      errors.push("Display name must be 50 characters or fewer.");
    }

    if (errors.length > 0) {
      return NextResponse.json({ error: errors.join(" ") }, { status: 400 });
    }

    // PHI filter on title + body
    const textToCheck = [body.title, body.body].filter(Boolean).join(" ");
    const sensitiveHit = detectSensitiveContent(textToCheck);
    if (sensitiveHit) {
      return NextResponse.json({ error: sensitiveHit }, { status: 400 });
    }

    const supabase = await createClient();
    if (!supabase) {
      return NextResponse.json(
        { error: "Service unavailable" },
        { status: 503 }
      );
    }

    // eslint-disable-next-line @typescript-eslint/no-explicit-any
    const { error } = await (supabase as any)
      .from("community_posts")
      .insert({
        parent_id: body.parent_id || null,
        title: isReply ? null : body.title.trim(),
        body: body.body.trim(),
        author_display_name:
          body.author_display_name?.trim() || "Anonymous",
        category: isReply ? null : body.category,
        status: "pending",
      });

    if (error) {
      console.error("Error inserting community post:", error);
      return NextResponse.json(
        { error: "Failed to save your post. Please try again." },
        { status: 500 }
      );
    }

    return NextResponse.json(
      { message: "Post submitted successfully and is pending review." },
      { status: 201 }
    );
  } catch (err) {
    console.error("Unexpected error in POST /api/community:", err);
    return NextResponse.json(
      { error: "An unexpected error occurred." },
      { status: 500 }
    );
  }
}
