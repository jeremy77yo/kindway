"use client";

import { useCallback, useEffect, useState } from "react";
import { useRouter, useSearchParams, usePathname } from "next/navigation";
import { Search, X } from "lucide-react";
import { cn } from "@/lib/utils";

interface SearchInputProps {
  paramName?: string;
  placeholder?: string;
  className?: string;
}

export function SearchInput({
  paramName = "q",
  placeholder = "Search...",
  className,
}: SearchInputProps) {
  const router = useRouter();
  const pathname = usePathname();
  const searchParams = useSearchParams();
  const [value, setValue] = useState(searchParams.get(paramName) || "");

  useEffect(() => {
    setValue(searchParams.get(paramName) || "");
  }, [searchParams, paramName]);

  const updateParams = useCallback(
    (term: string) => {
      const params = new URLSearchParams(searchParams.toString());
      if (term) {
        params.set(paramName, term);
      } else {
        params.delete(paramName);
      }
      router.push(`${pathname}?${params.toString()}`);
    },
    [router, pathname, searchParams, paramName]
  );

  useEffect(() => {
    const timer = setTimeout(() => {
      updateParams(value);
    }, 300);
    return () => clearTimeout(timer);
  }, [value, updateParams]);

  return (
    <div className={cn("relative", className)}>
      <Search
        className="absolute left-3 top-1/2 h-5 w-5 -translate-y-1/2 text-muted-foreground"
        aria-hidden="true"
      />
      <input
        type="search"
        value={value}
        onChange={(e) => setValue(e.target.value)}
        placeholder={placeholder}
        className="h-12 w-full rounded-xl border-2 border-border bg-white pl-10 pr-10 text-base transition-colors placeholder:text-muted-foreground focus:border-primary focus:outline-none"
        aria-label={placeholder}
      />
      {value && (
        <button
          onClick={() => setValue("")}
          className="absolute right-3 top-1/2 -translate-y-1/2 rounded-full p-1 hover:bg-muted"
          aria-label="Clear search"
        >
          <X className="h-4 w-4 text-muted-foreground" />
        </button>
      )}
    </div>
  );
}
