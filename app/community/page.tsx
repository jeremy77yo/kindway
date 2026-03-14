import { Metadata } from "next";
import Link from "next/link";
import { MessageSquarePlus, MessageCircle } from "lucide-react";
import { getCommunityPosts } from "@/lib/db/community";
import { truncateText } from "@/lib/utils";
import { CategoryFilter } from "@/components/community/category-filter";
import { Button } from "@/components/ui/button";

export const metadata: Metadata = {
  title: "Community",
  description:
    "Ask questions, share advice, and discuss disability services with the Kindway community.",
};

const CATEGORY_LABELS: Record<string, string> = {
  "finding-providers": "Finding Providers",
  "advice-tips": "Advice & Tips",
  "sdp-self-determination": "SDP & Self-Determination",
  "regional-center": "Regional Center",
  general: "General Discussion",
};

function timeAgo(dateStr: string): string {
  const now = Date.now();
  const then = new Date(dateStr).getTime();
  const diffMs = now - then;
  const diffMin = Math.floor(diffMs / 60000);

  if (diffMin < 1) return "just now";
  if (diffMin < 60) return `${diffMin}m ago`;

  const diffHr = Math.floor(diffMin / 60);
  if (diffHr < 24) return `${diffHr}h ago`;

  const diffDay = Math.floor(diffHr / 24);
  if (diffDay < 30) return `${diffDay}d ago`;

  const diffMonth = Math.floor(diffDay / 30);
  if (diffMonth < 12) return `${diffMonth}mo ago`;

  return `${Math.floor(diffMonth / 12)}y ago`;
}

interface CommunityPageProps {
  searchParams: Promise<{ category?: string }>;
}

export default async function CommunityPage({ searchParams }: CommunityPageProps) {
  const params = await searchParams;
  const posts = await getCommunityPosts(params.category);

  return (
    <div className="mx-auto max-w-4xl px-4 py-8">
      {/* Header */}
      <div className="mb-6 flex flex-col gap-4 sm:flex-row sm:items-center sm:justify-between">
        <div>
          <h1 className="text-3xl font-bold tracking-tight text-foreground">
            Community
          </h1>
          <p className="mt-1 text-muted-foreground">
            Ask questions, share advice, and connect with others.
          </p>
        </div>
        <Link href="/community/new">
          <Button size="md">
            <MessageSquarePlus className="mr-2 h-5 w-5" aria-hidden="true" />
            New Post
          </Button>
        </Link>
      </div>

      {/* Category Filter */}
      <div className="mb-6">
        <CategoryFilter />
      </div>

      {/* Posts */}
      {posts.length === 0 ? (
        <div className="rounded-2xl border-2 border-dashed border-border bg-white p-12 text-center">
          <MessageCircle className="mx-auto h-12 w-12 text-muted-foreground/50" aria-hidden="true" />
          <h2 className="mt-4 text-lg font-semibold text-foreground">
            No posts yet
          </h2>
          <p className="mt-2 max-w-md mx-auto text-muted-foreground">
            Be the first to start a discussion! Click &quot;New Post&quot; to
            share a question or topic.
          </p>
        </div>
      ) : (
        <div className="space-y-4">
          {posts.map((post) => (
            <Link
              key={post.id}
              href={`/community/${post.id}`}
              className="block rounded-2xl border border-border bg-white p-5 transition-colors hover:border-primary/30 hover:bg-muted/30"
            >
              {post.category && (
                <span className="inline-block rounded-full bg-primary-light px-3 py-0.5 text-xs font-medium text-primary-dark">
                  {CATEGORY_LABELS[post.category] ?? post.category}
                </span>
              )}
              <h2 className="mt-2 text-lg font-semibold text-foreground leading-snug">
                {post.title}
              </h2>
              <p className="mt-1 text-sm text-muted-foreground leading-relaxed">
                {truncateText(post.body, 150)}
              </p>
              <div className="mt-3 flex items-center gap-2 text-xs text-muted-foreground">
                <span>{post.author_display_name}</span>
                <span aria-hidden="true">&middot;</span>
                <span>{timeAgo(post.created_at)}</span>
                <span aria-hidden="true">&middot;</span>
                <span className="flex items-center gap-1">
                  <MessageCircle className="h-3.5 w-3.5" aria-hidden="true" />
                  {post.reply_count} {post.reply_count === 1 ? "reply" : "replies"}
                </span>
              </div>
            </Link>
          ))}
        </div>
      )}
    </div>
  );
}
