// NOTE: This admin page currently has NO authentication.
// Auth should be added before deploying to production.

import { Shield, MessageCircle } from "lucide-react";
import { getPendingCommunityPosts } from "@/lib/db/community";
import { CommunityModerationActions } from "./moderation-actions";

const CATEGORY_LABELS: Record<string, string> = {
  "finding-providers": "Finding Providers",
  "advice-tips": "Advice & Tips",
  "sdp-self-determination": "SDP & Self-Determination",
  "regional-center": "Regional Center",
  general: "General Discussion",
};

export default async function AdminCommunityPage() {
  const posts = await getPendingCommunityPosts();

  return (
    <div className="mx-auto max-w-4xl px-4 py-8">
      <div className="mb-8 flex items-center gap-3">
        <Shield className="h-7 w-7 text-primary" aria-hidden="true" />
        <div>
          <h1 className="text-3xl font-bold tracking-tight text-foreground">
            Community Moderation
          </h1>
          <p className="mt-1 text-muted-foreground">
            {posts.length} pending post{posts.length !== 1 ? "s" : ""} to
            moderate
          </p>
        </div>
      </div>

      {posts.length === 0 ? (
        <div className="rounded-2xl border border-border bg-white p-12 text-center">
          <p className="text-lg text-muted-foreground">
            No pending community posts to moderate.
          </p>
        </div>
      ) : (
        <div className="space-y-6">
          {posts.map((post) => (
            <article
              key={post.id}
              className="rounded-2xl border border-border bg-white p-6"
            >
              {/* Header */}
              <div className="flex items-start justify-between gap-4">
                <div>
                  {post.parent_id ? (
                    <span className="inline-flex items-center gap-1 text-xs font-medium text-muted-foreground">
                      <MessageCircle className="h-3.5 w-3.5" aria-hidden="true" />
                      Reply to post
                    </span>
                  ) : (
                    <>
                      {post.category && (
                        <span className="inline-block rounded-full bg-primary-light px-3 py-0.5 text-xs font-medium text-primary-dark">
                          {CATEGORY_LABELS[post.category] ?? post.category}
                        </span>
                      )}
                      <h2 className="mt-1 text-base font-semibold text-foreground">
                        {post.title}
                      </h2>
                    </>
                  )}
                  <p className="mt-1 text-xs text-muted-foreground">
                    By {post.author_display_name} &middot; Submitted{" "}
                    {new Date(post.created_at).toLocaleDateString("en-US", {
                      month: "short",
                      day: "numeric",
                      year: "numeric",
                      hour: "numeric",
                      minute: "2-digit",
                    })}
                  </p>
                </div>
              </div>

              {/* Body */}
              <p className="mt-4 whitespace-pre-wrap text-sm text-foreground leading-relaxed">
                {post.body}
              </p>

              {/* Approve / Reject */}
              <CommunityModerationActions postId={post.id} />
            </article>
          ))}
        </div>
      )}
    </div>
  );
}
