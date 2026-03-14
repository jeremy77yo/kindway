import { createClient } from "@/lib/supabase/server";

export interface CommunityPostListItem {
  id: string;
  title: string | null;
  body: string;
  author_display_name: string;
  category: string | null;
  status: string;
  reply_count: number;
  created_at: string;
}

export interface CommunityPostDetail {
  id: string;
  parent_id: string | null;
  title: string | null;
  body: string;
  author_display_name: string;
  category: string | null;
  status: string;
  reply_count: number;
  created_at: string;
  updated_at: string;
}

export interface CommunityPostWithReplies extends CommunityPostDetail {
  replies: CommunityPostDetail[];
}

/**
 * Fetch approved top-level community posts, optionally filtered by category.
 */
export async function getCommunityPosts(
  category?: string
): Promise<CommunityPostListItem[]> {
  const supabase = await createClient();
  if (!supabase) return [];

  // eslint-disable-next-line @typescript-eslint/no-explicit-any
  let query = (supabase as any)
    .from("community_posts")
    .select(
      "id, title, body, author_display_name, category, status, reply_count, created_at"
    )
    .is("parent_id", null)
    .eq("status", "approved")
    .order("created_at", { ascending: false });

  if (category) {
    query = query.eq("category", category);
  }

  const { data, error } = await query;

  if (error) {
    console.error("Error fetching community posts:", error);
    return [];
  }

  return (data ?? []) as CommunityPostListItem[];
}

/**
 * Fetch a single approved community post by ID, along with its approved replies.
 */
export async function getCommunityPost(
  id: string
): Promise<CommunityPostWithReplies | null> {
  const supabase = await createClient();
  if (!supabase) return null;

  // eslint-disable-next-line @typescript-eslint/no-explicit-any
  const sb = supabase as any;

  // Fetch the post
  const { data: post, error: postError } = await sb
    .from("community_posts")
    .select("*")
    .eq("id", id)
    .eq("status", "approved")
    .is("parent_id", null)
    .single();

  if (postError || !post) {
    console.error("Error fetching community post:", postError);
    return null;
  }

  // Fetch approved replies
  const { data: replies, error: repliesError } = await sb
    .from("community_posts")
    .select("*")
    .eq("parent_id", id)
    .eq("status", "approved")
    .order("created_at", { ascending: true });

  if (repliesError) {
    console.error("Error fetching replies:", repliesError);
  }

  return {
    ...post,
    replies: (replies ?? []) as CommunityPostDetail[],
  } as CommunityPostWithReplies;
}

/**
 * Fetch all pending community posts and replies for admin moderation.
 */
export async function getPendingCommunityPosts(): Promise<CommunityPostDetail[]> {
  const supabase = await createClient();
  if (!supabase) return [];

  // eslint-disable-next-line @typescript-eslint/no-explicit-any
  const { data, error } = await (supabase as any)
    .from("community_posts")
    .select("*")
    .eq("status", "pending")
    .order("created_at", { ascending: false });

  if (error) {
    console.error("Error fetching pending community posts:", error);
    return [];
  }

  return (data ?? []) as CommunityPostDetail[];
}
