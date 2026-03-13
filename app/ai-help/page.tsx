import { Metadata } from "next";
import { MessageCircle } from "lucide-react";

export const metadata: Metadata = {
  title: "AI Help",
  description: "Get AI-powered guidance about disability services and eligibility.",
};

export default function AiHelpPage() {
  return (
    <div className="mx-auto max-w-4xl px-4 py-8">
      <div className="mb-8">
        <h1 className="text-3xl font-bold tracking-tight text-foreground">
          AI Help
        </h1>
        <p className="mt-2 text-lg text-muted-foreground">
          Get personalized guidance about services, eligibility, and next steps.
        </p>
      </div>

      <div className="rounded-2xl border-2 border-dashed border-border bg-white p-12 text-center">
        <MessageCircle className="mx-auto h-12 w-12 text-muted-foreground/50" />
        <h2 className="mt-4 text-lg font-semibold text-foreground">
          Coming Soon
        </h2>
        <p className="mt-2 max-w-md mx-auto text-muted-foreground">
          We&apos;re building an AI assistant that can help you understand which
          services you may be eligible for, what documents you need, and how to
          get started.
        </p>
      </div>
    </div>
  );
}
