CREATE TABLE moderation_actions (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  target_type text NOT NULL,
  target_id uuid NOT NULL,
  action text NOT NULL,
  reason text,
  moderator_id uuid,
  created_at timestamptz NOT NULL DEFAULT now()
);

CREATE INDEX idx_moderation_actions_target ON moderation_actions(target_type, target_id);
