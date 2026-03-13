import { Metadata } from "next";
import { Users } from "lucide-react";

export const metadata: Metadata = {
  title: "Community",
  description: "Community experiences and reviews of disability service providers.",
};

export default function CommunityPage() {
  return (
    <div className="mx-auto max-w-4xl px-4 py-8">
      <div className="mb-8">
        <h1 className="text-3xl font-bold tracking-tight text-foreground">
          Community Experiences
        </h1>
        <p className="mt-2 text-lg text-muted-foreground">
          Read and share experiences about local disability service providers.
        </p>
      </div>

      <div className="rounded-2xl border-2 border-dashed border-border bg-white p-12 text-center">
        <Users className="mx-auto h-12 w-12 text-muted-foreground/50" />
        <h2 className="mt-4 text-lg font-semibold text-foreground">
          Coming Soon
        </h2>
        <p className="mt-2 max-w-md mx-auto text-muted-foreground">
          We&apos;re building a space where families and individuals can share
          their experiences with providers and help others make informed
          decisions.
        </p>
      </div>
    </div>
  );
}
