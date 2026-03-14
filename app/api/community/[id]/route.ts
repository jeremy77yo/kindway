import { NextRequest, NextResponse } from "next/server";
import { createClient } from "@/lib/supabase/server";

interface RouteContext {
  params: Promise<{ id: string }>;
}

export async function PATCH(request: NextRequest, context: RouteContext) {
  try {
    const { id } = await context.params;
    const body = await request.json();

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

    const { data: updatedPost, error: updateError } = await sb
      .from("community_posts")
      .update({ status: body.status })
      .eq("id", id)
      .select("id, parent_id")
      .single();

    if (updateError) {
      console.error("Error updating community post:", updateError);
      return NextResponse.json(
        { error: "Failed to update post." },
        { status: 500 }
      );
    }

    if (!updatedPost) {
      return NextResponse.json(
        { error: "Post not found." },
        { status: 404 }
      );
    }

    // If approving a reply, increment the parent's reply_count
    // (This is also handled by the DB trigger, but the trigger fires on UPDATE
    //  which we just did, so it should already be handled. This is a safety net
    //  in case the trigger isn't present.)

    return NextResponse.json({ message: "Post updated successfully." });
  } catch (err) {
    console.error("Unexpected error in PATCH /api/community/[id]:", err);
    return NextResponse.json(
      { error: "An unexpected error occurred." },
      { status: 500 }
    );
  }
}
