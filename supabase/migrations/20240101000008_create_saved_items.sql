CREATE TABLE saved_items (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  session_id uuid NOT NULL REFERENCES user_sessions(id) ON DELETE CASCADE,
  item_type text NOT NULL CHECK (item_type IN ('service', 'provider')),
  item_id uuid NOT NULL,
  notes text,
  created_at timestamptz NOT NULL DEFAULT now(),
  UNIQUE(session_id, item_type, item_id)
);

CREATE INDEX idx_saved_items_session ON saved_items(session_id);
