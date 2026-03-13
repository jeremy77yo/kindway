export interface Database {
  public: {
    Tables: {
      services: {
        Row: ServiceRow;
        Insert: ServiceInsert;
        Update: ServiceUpdate;
      };
      providers: {
        Row: ProviderRow;
        Insert: ProviderInsert;
        Update: ProviderUpdate;
      };
      provider_services: {
        Row: ProviderServiceRow;
        Insert: ProviderServiceInsert;
        Update: ProviderServiceUpdate;
      };
      user_sessions: {
        Row: UserSessionRow;
        Insert: UserSessionInsert;
        Update: UserSessionUpdate;
      };
      next_step_flows: {
        Row: NextStepFlowRow;
        Insert: NextStepFlowInsert;
        Update: NextStepFlowUpdate;
      };
      experience_reports: {
        Row: ExperienceReportRow;
        Insert: ExperienceReportInsert;
        Update: ExperienceReportUpdate;
      };
      provider_experience_summaries: {
        Row: ProviderExperienceSummaryRow;
        Insert: ProviderExperienceSummaryInsert;
        Update: ProviderExperienceSummaryUpdate;
      };
      saved_items: {
        Row: SavedItemRow;
        Insert: SavedItemInsert;
        Update: SavedItemUpdate;
      };
      ai_conversations: {
        Row: AiConversationRow;
        Insert: AiConversationInsert;
        Update: AiConversationUpdate;
      };
      moderation_actions: {
        Row: ModerationActionRow;
        Insert: ModerationActionInsert;
        Update: ModerationActionUpdate;
      };
    };
  };
}

// Services
export interface ServiceRow {
  id: string;
  name: string;
  slug: string;
  category: string;
  short_description: string;
  full_description: string;
  eligibility_criteria: string | null;
  documents_needed: string[] | null;
  what_to_ask_for: string[] | null;
  typical_timeline: string | null;
  age_groups: string[] | null;
  icon_name: string | null;
  is_active: boolean;
  sort_order: number;
  created_at: string;
  updated_at: string;
  search_vector: unknown | null;
}

export type ServiceInsert = Omit<ServiceRow, "id" | "created_at" | "updated_at" | "search_vector"> & {
  id?: string;
  created_at?: string;
  updated_at?: string;
};

export type ServiceUpdate = Partial<ServiceInsert>;

// Providers
export interface ProviderRow {
  id: string;
  name: string;
  slug: string;
  description: string;
  short_description: string | null;
  provider_type: string;
  phone: string | null;
  email: string | null;
  website: string | null;
  street_address: string | null;
  city: string | null;
  state: string | null;
  zip_code: string | null;
  latitude: number | null;
  longitude: number | null;
  service_area: string[] | null;
  languages: string[] | null;
  age_groups_served: string[] | null;
  disability_populations: string[] | null;
  funding_accepted: string[] | null;
  accepts_new_clients: boolean;
  waitlist_status: string | null;
  hours_of_operation: string | null;
  is_verified: boolean;
  is_active: boolean;
  created_at: string;
  updated_at: string;
  search_vector: unknown | null;
}

export type ProviderInsert = Omit<ProviderRow, "id" | "created_at" | "updated_at" | "search_vector"> & {
  id?: string;
  created_at?: string;
  updated_at?: string;
};

export type ProviderUpdate = Partial<ProviderInsert>;

// Provider Services (junction table)
export interface ProviderServiceRow {
  id: string;
  provider_id: string;
  service_id: string;
  details: string | null;
  is_primary: boolean;
  created_at: string;
}

export type ProviderServiceInsert = Omit<ProviderServiceRow, "id" | "created_at"> & {
  id?: string;
  created_at?: string;
};

export type ProviderServiceUpdate = Partial<ProviderServiceInsert>;

// User Sessions
export interface UserSessionRow {
  id: string;
  session_token: string;
  user_agent: string | null;
  created_at: string;
  last_active_at: string;
}

export type UserSessionInsert = Omit<UserSessionRow, "id" | "created_at" | "last_active_at"> & {
  id?: string;
  created_at?: string;
  last_active_at?: string;
};

export type UserSessionUpdate = Partial<UserSessionInsert>;

// Next Step Flows
export interface NextStepFlowRow {
  id: string;
  service_id: string;
  step_number: number;
  title: string;
  description: string;
  action_type: string;
  action_details: Record<string, unknown> | null;
  created_at: string;
}

export type NextStepFlowInsert = Omit<NextStepFlowRow, "id" | "created_at"> & {
  id?: string;
  created_at?: string;
};

export type NextStepFlowUpdate = Partial<NextStepFlowInsert>;

// Experience Reports
export interface ExperienceReportRow {
  id: string;
  provider_id: string;
  service_id: string | null;
  session_id: string | null;
  rating: number;
  experience_text: string;
  service_date: string | null;
  wait_time_weeks: number | null;
  staff_helpfulness: number | null;
  accessibility_rating: number | null;
  would_recommend: boolean | null;
  status: string;
  created_at: string;
  updated_at: string;
}

export type ExperienceReportInsert = Omit<ExperienceReportRow, "id" | "created_at" | "updated_at" | "status"> & {
  id?: string;
  created_at?: string;
  updated_at?: string;
  status?: string;
};

export type ExperienceReportUpdate = Partial<ExperienceReportInsert>;

// Provider Experience Summaries
export interface ProviderExperienceSummaryRow {
  id: string;
  provider_id: string;
  total_reviews: number;
  average_rating: number;
  average_wait_weeks: number | null;
  average_staff_helpfulness: number | null;
  average_accessibility: number | null;
  recommendation_rate: number | null;
  summary_text: string | null;
  last_computed_at: string;
}

export type ProviderExperienceSummaryInsert = Omit<ProviderExperienceSummaryRow, "id" | "last_computed_at"> & {
  id?: string;
  last_computed_at?: string;
};

export type ProviderExperienceSummaryUpdate = Partial<ProviderExperienceSummaryInsert>;

// Saved Items
export interface SavedItemRow {
  id: string;
  session_id: string;
  item_type: string;
  item_id: string;
  notes: string | null;
  created_at: string;
}

export type SavedItemInsert = Omit<SavedItemRow, "id" | "created_at"> & {
  id?: string;
  created_at?: string;
};

export type SavedItemUpdate = Partial<SavedItemInsert>;

// AI Conversations
export interface AiConversationRow {
  id: string;
  session_id: string;
  messages: Record<string, unknown>[];
  context: Record<string, unknown> | null;
  created_at: string;
  updated_at: string;
}

export type AiConversationInsert = Omit<AiConversationRow, "id" | "created_at" | "updated_at"> & {
  id?: string;
  created_at?: string;
  updated_at?: string;
};

export type AiConversationUpdate = Partial<AiConversationInsert>;

// Moderation Actions
export interface ModerationActionRow {
  id: string;
  target_type: string;
  target_id: string;
  action: string;
  reason: string | null;
  moderator_id: string | null;
  created_at: string;
}

export type ModerationActionInsert = Omit<ModerationActionRow, "id" | "created_at"> & {
  id?: string;
  created_at?: string;
};

export type ModerationActionUpdate = Partial<ModerationActionInsert>;
