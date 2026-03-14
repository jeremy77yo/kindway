import { Metadata } from "next";
import Link from "next/link";
import { notFound } from "next/navigation";
import { ArrowLeft, MessageCircle } from "lucide-react";
import { getCommunityPost } from "@/lib/db/community";
import { ReplyForm } from "@/components/community/reply-form";

const CATEGORY_LABELS: Record<string, string> = {
  "finding-providers": "Finding Providers",
  "advice-tips": "Advice & Tips",
  "sdp-self-determination": "SDP & Self-Determination",
  "regional-center": "Regional Center",
  general: "General Discussion",
};

function formatDate(dateStr: string): string {
  return new Date(dateStr).toLocaleDateString("en-US", {
    month: "short",
    day: "numeric",
    year: "numeric",
    hour: "numeric",
    minute: "2-digit",
  });
}

interface ThreadPageProps {
  params: Promise<{ id: string }>;
}

export async function generateMetadata({ params }: ThreadPageProps): Promise<Metadata> {
  const { id } = await params;
  const post = await getCommunityPost(id);

  return {
    title: post?.title ?? "Community Post",
    description: post?.body?.slice(0, 160) ?? "Community discussion on Kindway.",
  };
}

export default async function ThreadPage({ params }: ThreadPageProps) {
  const { id } = await params;
  const post = await getCommunityPost(id);

  if (!post) {
    notFound();
  }

  return (
    <div className="mx-auto max-w-4xl px-4 py-8">
      {/* Back link */}
      <Link
        href="/community"
        className="mb-6 inline-flex items-center gap-1.5 text-sm font-medium text-primary hover:underline"
      >
        <ArrowLeft className="h-4 w-4" aria-hidden="true" />
        Back to Community
      </Link>

      {/* Post */}
      <article className="rounded-2xl border border-border bg-white p-6">
        {post.category && (
          <span className="inline-block rounded-full bg-primary-light px-3 py-0.5 text-xs font-medium text-primary-dark">
            {CATEGORY_LABELS[post.category] ?? post.category}
          </span>
        )}
        <h1 className="mt-2 text-2xl font-bold tracking-tight text-foreground">
          {post.title}
        </h1>
        <p className="mt-1 text-xs text-muted-foreground">
          {post.author_display_name} &middot; {formatDate(post.created_at)}
        </p>
        <div className="mt-4 whitespace-pre-wrap text-sm text-foreground leading-relaxed">
          {post.body}
        </div>
      </article>

      {/* Replies */}
      <section className="mt-8">
        <h2 className="flex items-center gap-2 text-lg font-semibold text-foreground">
          <MessageCircle className="h-5 w-5" aria-hidden="true" />
          {post.replies.length} {post.replies.length === 1 ? "Reply" : "Replies"}
        </h2>

        {post.replies.length > 0 && (
          <div className="mt-4 space-y-4">
            {post.replies.map((reply) => (
              <article
                key={reply.id}
                className="rounded-xl border border-border bg-white p-4"
              >
                <div className="whitespace-pre-wrap text-sm text-foreground leading-relaxed">
                  {reply.body}
                </div>
                <p className="mt-2 text-xs text-muted-foreground">
                  {reply.author_display_name} &middot;{" "}
                  {formatDate(reply.created_at)}
                </p>
              </article>
            ))}
          </div>
        )}

        {/* Reply Form */}
        <div className="mt-6">
          <h3 className="mb-3 text-base font-semibold text-foreground">
            Add a Reply
          </h3>
          <ReplyForm parentId={post.id} />
        </div>
      </section>
    </div>
  );
}
