"use client";

import { useState } from "react";
import { useRouter } from "next/navigation";
import { CheckCircle, XCircle, Loader2 } from "lucide-react";
import { Button } from "@/components/ui/button";

interface CommunityModerationActionsProps {
  postId: string;
}

export function CommunityModerationActions({
  postId,
}: CommunityModerationActionsProps) {
  const router = useRouter();
  const [loading, setLoading] = useState<"approve" | "reject" | null>(null);
  const [result, setResult] = useState<"approved" | "rejected" | null>(null);
  const [error, setError] = useState("");

  async function handleAction(status: "approved" | "rejected") {
    setLoading(status === "approved" ? "approve" : "reject");
    setError("");

    try {
      const res = await fetch(`/api/community/${postId}`, {
        method: "PATCH",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ status }),
      });

      if (!res.ok) {
        const data = await res.json().catch(() => ({}));
        throw new Error(data.error || "Failed to update post.");
      }

      setResult(status);
      setTimeout(() => router.refresh(), 500);
    } catch (err) {
      setError(
        err instanceof Error ? err.message : "Something went wrong."
      );
    } finally {
      setLoading(null);
    }
  }

  if (result) {
    return (
      <div
        className={`mt-4 flex items-center gap-2 rounded-xl p-3 text-sm font-medium ${
          result === "approved"
            ? "bg-success/10 text-success"
            : "bg-destructive/10 text-destructive"
        }`}
      >
        {result === "approved" ? (
          <CheckCircle className="h-4 w-4" aria-hidden="true" />
        ) : (
          <XCircle className="h-4 w-4" aria-hidden="true" />
        )}
        {result === "approved" ? "Approved" : "Rejected"}
      </div>
    );
  }

  return (
    <div className="mt-4 space-y-2">
      {error && (
        <p role="alert" className="text-sm text-destructive">
          {error}
        </p>
      )}
      <div className="flex gap-3">
        <Button
          variant="primary"
          size="sm"
          disabled={loading !== null}
          onClick={() => handleAction("approved")}
        >
          {loading === "approve" ? (
            <Loader2
              className="mr-1.5 h-4 w-4 animate-spin"
              aria-hidden="true"
            />
          ) : (
            <CheckCircle className="mr-1.5 h-4 w-4" aria-hidden="true" />
          )}
          Approve
        </Button>
        <Button
          variant="destructive"
          size="sm"
          disabled={loading !== null}
          onClick={() => handleAction("rejected")}
        >
          {loading === "reject" ? (
            <Loader2
              className="mr-1.5 h-4 w-4 animate-spin"
              aria-hidden="true"
            />
          ) : (
            <XCircle className="mr-1.5 h-4 w-4" aria-hidden="true" />
          )}
          Reject
        </Button>
      </div>
    </div>
  );
}
