-- Community forum posts (top-level) and replies (parent_id set)
CREATE TABLE community_posts (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  parent_id uuid REFERENCES community_posts(id) ON DELETE CASCADE,
  title text,
  body text NOT NULL,
  author_display_name text NOT NULL DEFAULT 'Anonymous',
  category text CHECK (
    category IS NULL OR category IN (
      'finding-providers',
      'advice-tips',
      'sdp-self-determination',
      'regional-center',
      'general'
    )
  ),
  status text NOT NULL DEFAULT 'pending' CHECK (status IN ('pending', 'approved', 'rejected')),
  reply_count integer NOT NULL DEFAULT 0,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);

-- Indexes
CREATE INDEX idx_community_posts_parent ON community_posts(parent_id);
CREATE INDEX idx_community_posts_status ON community_posts(status);
CREATE INDEX idx_community_posts_category ON community_posts(category);
CREATE INDEX idx_community_posts_created ON community_posts(created_at DESC);

-- RLS
ALTER TABLE community_posts ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Public can view approved community posts" ON community_posts
  FOR SELECT USING (status = 'approved');

CREATE POLICY "Public can submit community posts" ON community_posts
  FOR INSERT WITH CHECK (true);

-- Updated-at trigger (reuses the function from migration 12)
CREATE TRIGGER set_community_posts_updated_at
  BEFORE UPDATE ON community_posts
  FOR EACH ROW EXECUTE FUNCTION update_updated_at();

-- Function to increment reply_count on parent when a reply is approved
CREATE OR REPLACE FUNCTION increment_reply_count()
RETURNS TRIGGER AS $$
BEGIN
  IF NEW.status = 'approved' AND OLD.status != 'approved' AND NEW.parent_id IS NOT NULL THEN
    UPDATE community_posts
    SET reply_count = reply_count + 1
    WHERE id = NEW.parent_id;
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER community_post_reply_count
  AFTER UPDATE ON community_posts
  FOR EACH ROW EXECUTE FUNCTION increment_reply_count();
