import { NextRequest, NextResponse } from "next/server";

const VALID_SUBJECTS = [
  "general",
  "bug-report",
  "add-update-provider",
  "feedback",
];

export async function POST(request: NextRequest) {
  try {
    const body = await request.json();

    // --- Validation ---
    const errors: string[] = [];

    if (!body.name || typeof body.name !== "string" || !body.name.trim()) {
      errors.push("Name is required.");
    }

    if (!body.email || typeof body.email !== "string" || !body.email.trim()) {
      errors.push("Email is required.");
    } else if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(body.email.trim())) {
      errors.push("Please provide a valid email address.");
    }

    if (!body.subject || !VALID_SUBJECTS.includes(body.subject)) {
      errors.push("Please select a valid subject.");
    }

    if (
      !body.message ||
      typeof body.message !== "string" ||
      body.message.trim().length < 10
    ) {
      errors.push("Message must be at least 10 characters.");
    }

    if (errors.length > 0) {
      return NextResponse.json({ error: errors.join(" ") }, { status: 400 });
    }

    // --- Log the message (storage to be added later) ---
    console.log("Contact form submission:", {
      name: body.name.trim(),
      email: body.email.trim(),
      subject: body.subject,
      message: body.message.trim(),
      timestamp: new Date().toISOString(),
    });

    return NextResponse.json(
      { message: "Message received. We'll get back to you soon." },
      { status: 201 }
    );
  } catch (err) {
    console.error("Unexpected error in POST /api/contact:", err);
    return NextResponse.json(
      { error: "An unexpected error occurred." },
      { status: 500 }
    );
  }
}
