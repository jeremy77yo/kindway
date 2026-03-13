"use client";

import { useRouter, useSearchParams, usePathname } from "next/navigation";
import { cn } from "@/lib/utils";

interface FilterChipProps {
  label: string;
  paramName: string;
  paramValue: string;
  /** Whether the chip is currently active; when omitted it is derived from URL search params */
  active?: boolean;
  className?: string;
}

function FilterChip({
  label,
  paramName,
  paramValue,
  active,
  className,
}: FilterChipProps) {
  const router = useRouter();
  const pathname = usePathname();
  const searchParams = useSearchParams();

  const isActive =
    active !== undefined
      ? active
      : searchParams.get(paramName) === paramValue;

  function handleClick() {
    const params = new URLSearchParams(searchParams.toString());

    if (isActive) {
      params.delete(paramName);
    } else {
      params.set(paramName, paramValue);
    }

    const qs = params.toString();
    router.push(qs ? `${pathname}?${qs}` : pathname);
  }

  return (
    <button
      type="button"
      role="radio"
      aria-checked={isActive}
      onClick={handleClick}
      className={cn(
        "inline-flex items-center justify-center rounded-full border-2 px-4 py-1.5 text-sm font-medium transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-primary focus-visible:ring-offset-2",
        isActive
          ? "border-primary bg-primary-light text-primary-dark"
          : "border-border bg-white text-muted-foreground hover:bg-muted",
        className
      )}
    >
      {label}
    </button>
  );
}

export { FilterChip, type FilterChipProps };
