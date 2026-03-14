"use client";

import { useRouter, useSearchParams, usePathname } from "next/navigation";
import { cn } from "@/lib/utils";

const CATEGORIES = [
  { value: "", label: "All" },
  { value: "finding-providers", label: "Finding Providers" },
  { value: "advice-tips", label: "Advice & Tips" },
  { value: "sdp-self-determination", label: "SDP & Self-Determination" },
  { value: "regional-center", label: "Regional Center" },
  { value: "general", label: "General Discussion" },
];

export function CategoryFilter() {
  const router = useRouter();
  const pathname = usePathname();
  const searchParams = useSearchParams();

  const activeCategory = searchParams.get("category") ?? "";

  function handleClick(value: string) {
    const params = new URLSearchParams(searchParams.toString());

    if (value) {
      params.set("category", value);
    } else {
      params.delete("category");
    }

    const qs = params.toString();
    router.push(qs ? `${pathname}?${qs}` : pathname);
  }

  return (
    <div className="flex flex-wrap gap-2" role="radiogroup" aria-label="Filter by category">
      {CATEGORIES.map((cat) => {
        const isActive = activeCategory === cat.value;
        return (
          <button
            key={cat.value}
            type="button"
            role="radio"
            aria-checked={isActive}
            onClick={() => handleClick(cat.value)}
            className={cn(
              "inline-flex items-center justify-center rounded-full border-2 px-4 py-1.5 text-sm font-medium transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-primary focus-visible:ring-offset-2",
              isActive
                ? "border-primary bg-primary-light text-primary-dark"
                : "border-border bg-white text-muted-foreground hover:bg-muted"
            )}
          >
            {cat.label}
          </button>
        );
      })}
    </div>
  );
}
