import { Metadata } from "next";
import Link from "next/link";
import { ArrowLeft } from "lucide-react";
import { NewPostForm } from "@/components/community/new-post-form";

export const metadata: Metadata = {
  title: "New Post — Community",
  description: "Create a new community post on Kindway.",
};

export default function NewPostPage() {
  return (
    <div className="mx-auto max-w-2xl px-4 py-8">
      <Link
        href="/community"
        className="mb-6 inline-flex items-center gap-1.5 text-sm font-medium text-primary hover:underline"
      >
        <ArrowLeft className="h-4 w-4" aria-hidden="true" />
        Back to Community
      </Link>

      <h1 className="text-3xl font-bold tracking-tight text-foreground">
        New Post
      </h1>
      <p className="mt-1 mb-6 text-muted-foreground">
        Share a question, tip, or start a discussion with the community.
      </p>

      <NewPostForm />
    </div>
  );
}
