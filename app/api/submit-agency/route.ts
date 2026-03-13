import { NextRequest, NextResponse } from "next/server";
import { createClient } from "@/lib/supabase/server";

function slugify(text: string): string {
  return text
    .toLowerCase()
    .trim()
    .replace(/[^\w\s-]/g, "")
    .replace(/[\s_]+/g, "-")
    .replace(/-+/g, "-")
    .replace(/^-+|-+$/g, "");
}

export async function POST(request: NextRequest) {
  try {
    const body = await request.json();

    // --- Validation ---
    const errors: string[] = [];

    if (!body.name || typeof body.name !== "string" || !body.name.trim()) {
      errors.push("Agency name is required.");
    }

    if (
      !body.contact_person ||
      typeof body.contact_person !== "string" ||
      !body.contact_person.trim()
    ) {
      errors.push("Contact person name is required.");
    }

    if (!body.email || typeof body.email !== "string" || !body.email.trim()) {
      errors.push("Email is required.");
    } else if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(body.email.trim())) {
      errors.push("Please provide a valid email address.");
    }

    if (!body.phone || typeof body.phone !== "string" || !body.phone.trim()) {
      errors.push("Phone number is required.");
    }

    if (
      !body.description ||
      typeof body.description !== "string" ||
      body.description.trim().length < 20
    ) {
      errors.push("Description must be at least 20 characters.");
    }

    if (errors.length > 0) {
      return NextResponse.json({ error: errors.join(" ") }, { status: 400 });
    }

    // --- Insert into providers table with pending status ---
    const supabase = await createClient();
    if (!supabase) {
      return NextResponse.json(
        { error: "Service unavailable" },
        { status: 503 }
      );
    }

    const nameStr = body.name.trim();
    const slug = slugify(nameStr) + "-" + Date.now().toString(36);

    // Build a short_description from the contact info for admin reference
    const shortDescription = `Submitted by ${body.contact_person.trim()} (${body.email.trim()})`;

    // eslint-disable-next-line @typescript-eslint/no-explicit-any
    const { error } = await (supabase as any).from("providers").insert({
      name: nameStr,
      slug,
      description: body.description.trim(),
      short_description: shortDescription,
      provider_type: body.provider_type || "nonprofit",
      phone: body.phone.trim(),
      email: body.email.trim(),
      website: body.website || null,
      street_address: body.street_address || null,
      city: body.city || null,
      state: body.state || null,
      zip_code: body.zip_code || null,
      languages: body.languages?.length ? body.languages : null,
      age_groups_served: body.age_groups_served?.length
        ? body.age_groups_served
        : null,
      funding_accepted: body.funding_accepted?.length
        ? body.funding_accepted
        : null,
      accepts_new_clients: true,
      is_verified: false,
      is_active: false,
    });

    if (error) {
      console.error("Error inserting agency submission:", error);
      return NextResponse.json(
        { error: "Failed to save your submission. Please try again." },
        { status: 500 }
      );
    }

    return NextResponse.json(
      { message: "Agency submitted successfully." },
      { status: 201 }
    );
  } catch (err) {
    console.error("Unexpected error in POST /api/submit-agency:", err);
    return NextResponse.json(
      { error: "An unexpected error occurred." },
      { status: 500 }
    );
  }
}
